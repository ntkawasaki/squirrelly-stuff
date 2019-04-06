# frozen_string_literal: true

Rails.application.routes.draw do
  # Posts
  # get         '/posts'                    => 'posts#index'
  # get         '/posts/new'                => 'posts#new'
  # get         '/posts/:id'                => 'posts#show'
  # post        '/posts'                    => 'posts#create'
  # get         '/posts/:id/edit'           => 'posts#edit'
  # patch       '/posts/:id'                => 'posts#update'
  # put         '/posts/:id'                => 'posts#update'
  # delete      '/posts/:id'                => 'posts#destroy'

  # Comments
  # get         '/comments'                 => 'comments#index'
  # post        '/posts/:id/comments'       => 'comments#create'
  # delete      '/posts/:id/comments/:id'   => 'comments#index'

  # This will generate the above:
  resources :posts do
    # Generate nested resources
    resources :comments, only: %i[create destroy]
  end

  resources :comments, only: :index
end
