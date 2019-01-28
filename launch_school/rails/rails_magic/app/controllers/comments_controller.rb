# frozen_string_literal: true

# Comments Controller
class CommentsController < ApplicationController
  before_action :find_post, only: %i[create destroy]

  # list_comments -> list -> index
  def index
    @comments = Comment.all
  end

  # create_comment -> create
  def create
    @comment = @post.comments.build(comment_params)

    if @comment.save
      flash[:success] = 'You have successfully made a comment'
      redirect_to(post_path(@post))
    else
      @post.reload.comments
      flash.now[:error] = 'Comment could not be created, please check the errors.'
      render('posts/show')
    end
  end

  # delete_comment -> delete -> destroy
  def destroy
    @post.comments.delete(params[:id])

    redirect_to(post_path(@post))
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body, :author)
  end
end
