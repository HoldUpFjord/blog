#need to define class that matches file

 class BlogPostsController < ApplicationController
    def index
        @blog_posts = BlogPost.all
    end

    def show 
        #params comes from action controller
        @blog_post = BlogPost.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path
        #^ helper methods/functions that stand for routes like "/"
    end

    def new
    end
    
 end