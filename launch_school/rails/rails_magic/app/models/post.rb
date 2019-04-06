# frozen_string_literal: true

# Post
class Post < ActiveRecord::Base
  validates_presence_of :title, :body, :author
  has_many :comments
end
