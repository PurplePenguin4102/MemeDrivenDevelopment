require 'date'

class PostsController < ApplicationController

    def show
        @post = Post.find(params[:id])
    end

    def index
        @posts = Post.all.decorate
    end
end