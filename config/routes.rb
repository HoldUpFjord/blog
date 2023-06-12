Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/blog_posts/new', to: 'blog_posts#new', as: :new_blog_post
  get '/blog_posts/:id', to: 'blog_posts#show', as: :blog_post
  # route^^^       # control^ | action^
  patch '/blog_posts/:id', to: 'blog_posts#update'
  delete '/blog_posts/:id', to: 'blog_posts#destroy'
  get '/blog_posts/:id/edit', to: 'blog_posts#edit', as: :edit_blog_post
  # blog_post_path(1) -> "blog_posts/1"
  # blog_post_url(1) -> www.disco.com/blogs/blog/1
  post '/blog_posts', to: 'blog_posts#create', as: :blog_posts
  # Defines the root path route ("/")
  root 'blog_posts#index'
end
