Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post 
  get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
       #route^^^       #control^ | action^
       
       #blog_post_path(1) -> "blog_posts/1"
       #blog_post_url(1) -> www.disco.com/blogs/blog/1
  
  # Defines the root path route ("/")
  root "blog_posts#index"
end
