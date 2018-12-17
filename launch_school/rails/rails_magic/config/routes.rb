# frozen_string_literal: true

Rails.application.routes.draw do
  # The priority is based upon order of creation.
  # See how all your routes lay out with "rake routes".

  # Hello World
  get '/hello_world/' => 'application#hello_world'
  get '/hello/:name' => 'application#hello_world'

  # Show Posts
  get '/list_posts' => 'application#list_posts'
  get '/show_post/:id' => 'application#show_post'

  # Create Posts
  get '/new_post' => 'application#new_post'
  post '/create_post' => 'application#create_post'

  # Edit Posts
  get '/edit_post/:id' => 'application#edit_post'
  post '/update_post/:id' => 'application#update_post'

  # Delete Posts
  post '/delete_post/:id' => 'application#delete_post'

  # Create Comment
  post '/create_comment_for_post/:post_id' => 'application#create_comment'

  # Delete Comment
  post '/list_posts/:post_id/delete_comment/:comment_id' => 'application#delete_comment'

  # List Comments
  get '/list_comments' => 'application#list_comments'
end
