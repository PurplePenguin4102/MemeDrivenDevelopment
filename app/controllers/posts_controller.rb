require 'date'

class PostsController < ApplicationController

    def show
        @post = Post.find(params[:id]).decorate
        @side_view = Post.published
    end

    def index
        @posts = Post.published.decorate
        @side_view = Post.published
    end
end