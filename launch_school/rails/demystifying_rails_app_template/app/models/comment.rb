# frozen_string_literal: true

# Comment
class Comment < BaseModel
  attr_reader :id, :author, :post_id, :body, :created_at, :errors

  def initialize(attributes = {})
    @id = attributes['id'] if new_record?
    @author = attributes['author']
    @post_id = attributes['post_id']
    @body = attributes['body']
    @created_at ||= attributes['created_at']
    @errors = {}
  end

  def post
    Post.find(post_id)
  end

  def valid?
    @errors['body'] = 'body can\'t be blank' if body.blank?
    @errors['author'] = 'author can\'t be blank' if author.blank?
    @errors.empty?
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
end
