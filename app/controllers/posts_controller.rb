class PostsController < ApplicationController

    def show
        @post = Post.find(params[:id])
    end

    def index
        @posts = Post.all
        markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(), extensions = {})
        @posts.each do | post |
            post.content = markdown.render(post.content)
        end 
    end
end