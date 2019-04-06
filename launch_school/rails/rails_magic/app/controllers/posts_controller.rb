# frozen_string_literal: true

# Posts Controller
class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]

  # list_posts -> list -> index
  def index
    @posts = Post.all
  end

  # show_posts -> show
  def show
    @comment = Comment.new
  end

  # new_post -> new
  def new
    @post = Post.new
  end

  # create_post -> create
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to(posts_path)
    else
      render('new')
    end
  end

  # edit_post -> edit
  def edit
  end

  # update_post -> update
  def update
    if @post.update_attributes(post_params)
      redirect_to(posts_path)
    else
      render('edit')
    end
  end

  # delete_post -> delete -> destroy
  def destroy
    @post.destroy
    redirect_to(posts_path)
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :author)
  end
end
