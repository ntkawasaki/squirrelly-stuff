# frozen_string_literal: true

# Application Controller
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello_world
    name = params['name'] || 'World'
    render('application/hello_world', locals: { name: name })
  end

  def list_posts
    posts = Post.all
    render('application/list_posts', locals: { posts: posts })
  end

  def show_post
    post = Post.find(params['id'])
    comment = Comment.new
    comments = post.comments
    render(
      'application/show_post',
      locals: { post: post, comment: comment, comments: comments }
    )
  end

  def new_post
    post = Post.new
    render('application/new_post', locals: { post: post })
  end

  def create_post
    post = Post.new(
      'title' => params['title'],
      'body' => params['body'],
      'author' => params['author']
    )

    if post.save
      redirect_to('/list_posts')
    else
      render('application/new_post', locals: { post: post })
    end
  end

  def edit_post
    post = Post.find(params['id'])
    render('application/edit_post', locals: { post: post })
  end

  def update_post
    post = Post.find(params['id'])
    post.set_attributes(
      'title' => params['title'],
      'body' => params['body'],
      'author' => params['author']
    )
    if post.save
      redirect_to('/list_posts')
    else
      render('application/edit_post', locals: { post: post })
    end
  end

  def delete_post
    post = Post.find(params['id'])
    post.destroy

    redirect_to('/list_posts')
  end

  def create_comment
    post = Post.find(params['post_id'])
    comments = post.comments
    comment = post.build_comment(
      'body' => params['body'],
      'author' => params['author']
    )

    if comment.save
      redirect_to("/show_post/#{params['post_id']}")
    else
      render(
        'application/show_post',
        locals: { post: post, comment: comment, comments: comments } )
    end
  end

  def delete_comment
    post = Post.find(params['post_id'])
    post.delete_comment(params['comment_id'])
    redirect_to("/show_post/#{params['post_id']}")
  end

  def list_comments
    comments = Comment.all
    render(
      'application/list_comments',
      locals: { comments: comments }
    )
  end
end
