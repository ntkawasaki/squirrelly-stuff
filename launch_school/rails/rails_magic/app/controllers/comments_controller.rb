# frozen_string_literal: true

# Comments Controller
class CommentsController < ActionController::Base
  # list_comments -> list -> index
  def index
    @comments = Comment.all
  end

  # create_comment -> create
  def create
    @post = Post.find(params['post_id'])
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
    post = Post.find(params['post_id'])
    post.delete_comment(params['comment_id'])

    redirect_to(post_path(post.id))
  end
end
