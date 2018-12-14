# frozen_string_literal: true

# Comment
class Comment
  attr_reader :id, :author, :post_id, :body, :created_at

  def initialize(attributes = {})
    @id = attributes['id'] if new_record?
    @author = attributes['author']
    @post_id = attributes['post_id']
    @body = attributes['body']
    @created_at ||= attributes['created_at']
  end

  def new_record?
    @id.nil?
  end

  def save
    if new_record?
      insert
    else
      update # not ready yet
    end
  end

  def insert
    insert_comment_query = <<-SQL
      INSERT INTO comments (body, author, post_id, created_at)
      VALUES (?, ?, ?, ?)
    SQL

    connection.execute(
      insert_comment_query,
      @body,
      @author,
      @post_id,
      Date.current.to_s
    )
  end

  def self.connection
    db_connection = SQLite3::Database.new 'db/development.sqlite3'
    db_connection.results_as_hash = true
    db_connection
  end

  def connection
    self.class.connection
  end
end
