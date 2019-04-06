# frozen_string_literal: true

# Post
class Post < BaseModel
  attr_reader :id, :author, :title, :body, :created_at, :errors

  # Allow data to be passed in to hash with Post.new
  def initialize(attributes = {})
    set_attributes(attributes)
    @errors = {}
  end

  def set_attributes(attributes)
    @id = attributes['id'] if new_record?
    @title = attributes['title']
    @author = attributes['author']
    @body = attributes['body']
    @created_at ||= attributes['created_at']
  end

  def valid?
    @errors['title'] = 'title can\'t be blank' if title.blank?
    @errors['body'] = 'body can\'t be blank' if body.blank?
    @errors['author'] = 'author can\'t be blank' if author.blank?
    @errors.empty?
  end

  def insert
    insert_query = <<-SQL
      INSERT INTO posts (title, body, author, created_at)
      VALUES (?, ?, ?, ?)
    SQL

    connection.execute(
      insert_query,
      @title,
      @body,
      @author,
      Date.current.to_s
    )
  end

  def update
    update_query = <<-SQL
      UPDATE posts SET
      title = ?,
      body = ?,
      author = ?
      WHERE posts.id = ?
    SQL

    connection.execute(
      update_query,
      @title,
      @body,
      @author,
      @id
    )
  end

  def comments
    comment_hashes = connection.execute(
      'SELECT * FROM comments WHERE comments.post_id = ?',
      id
    )

    comment_hashes.map do |comment_hash|
      Comment.new(comment_hash)
    end
  end

  def build_comment(attributes)
    Comment.new(attributes.merge!('post_id' => id))
  end

  def create_comment(attributes)
    comment = build_comment(attributes)
    comment.save
  end

  def delete_comment(comment_id)
    Comment.find(comment_id).destroy
  end
end
