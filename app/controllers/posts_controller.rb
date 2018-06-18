require 'date'

class PostsController < ApplicationController

    def show
        @post = Post.find(params[:id])
    end

    def index
        @posts = Post.all
        markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(), extensions = {})
        @posts.each do | post |
            #date = DateTime.parse(post.publish_date)
            post.publish_date = post.publish_date.strftime('%a %b %d') #%H:%M:%S %Z %Y
            post.content = markdown.render(post.content)
        end 
    end
end