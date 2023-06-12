# frozen_string_literal: true

# need to define class that matches file

class BlogPostsController < ApplicationController
  before_action :set_blog_posts, except: [:index, :new:, :create]

  def index
    @blog_posts = BlogPost.all
  end

  def show
    # params comes from action controller

    # ^ helper methods/functions that stand for routes like "/"
  end

  def new
    #=> create new blogpost in memory, but not in db
    @blog_post = BlogPost.new
  end

  #-> need action to create blog post in db
  def create
    #-> saves form entry to memory
    #=> rails does not allow params
    @blog_post = BlogPost.new(blog_post_params)
    #-> save blogpost to db
    if @blog_post.save
      redirect_to @blog_post
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    
  end

  def update
    
    if @blog_post.update(blog_post_params)
        redirect_to @blog_post
    else
        render :edit, status: :unprocessable_entity
    end
   end

   def destroy
   
    @blog_post.destroy
    redirect_to root_path
   end

  private

  # invoked on line 25

  def blog_post_params
    params.require(:blog_post).permit(:title, :body)
  end

  def set_blog_posts
    @blog_post = BlogPost.find(params[:id])
  rescue     
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end
end
