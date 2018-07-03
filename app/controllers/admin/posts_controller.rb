class Admin::PostsController < Admin::BaseController

    def index
        @posts = Post.index
        authorize Post
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to :posts
        else
            render action: :new
        end
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to :posts
        else
            render action: :edit
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to :posts
    end

    private
    def post_params
        params.require(:post).permit(:id, :title, :subtitle, :content, :published, :publish_date, :top_post)
    end
end