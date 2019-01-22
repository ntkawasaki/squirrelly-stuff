# frozen_string_literal: true

# Posts Controller
class PostsController < ActionController::Base
  # list_posts -> list -> index
  def index
    @posts = Post.all
  end

  # show_posts -> show
  def show
    @post = Post.find(params['id'])
    @comment = Comment.new
  end

  # new_post -> new
  def new
    @post = Post.new
  end

  # create_post -> create
  def create
    @post = Post.new(
      'title' => params['title'],
      'body' => params['body'],
      'author' => params['author']
    )

    if @post.save
      redirect_to(posts_path)
    else
      render('new')
    end
  end

  # edit_post -> edit
  def edit
    @post = Post.find(params['id'])
  end

  # update_post -> update
  def update
    @post = Post.find(params['id'])
    @post.set_attributes(
      'title' => params['title'],
      'body' => params['body'],
      'author' => params['author']
    )
    if @post.save
      redirect_to(posts_path)
    else
      render('edit')
    end
  end

  # delete_post -> delete -> destroy
  def delete_post
    post = Post.find(params['id'])
    post.destroy

    redirect_to('posts_path')
  end
end
