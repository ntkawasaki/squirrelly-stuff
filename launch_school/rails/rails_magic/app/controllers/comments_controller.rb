# frozen_string_literal: true

# Comments Controller
class CommentsController < ApplicationController
  before_action :find_post, only: %i[create destroy]

  # list_comments -> list -> index
  def index
    binding.pry
    @comments = Comment.all
  end

  # create_comment -> create
  def create
    @comment = @post.build_comment(
      'body' => params['body'],
      'author' => params['author']
    )

    if @comment.save
      redirect_to(post_path(@post.id))
    else
      render('posts/show')
    end
  end

  # delete_comment -> delete -> destroy
  def destroy
    @post.delete_comment(params['comment_id'])

    redirect_to(post_path(@post.id))
  end

  private

  def find_post
    @post = Post.find(params['id'])
  end
end
