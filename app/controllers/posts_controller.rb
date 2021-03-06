class PostsController < ApplicationController
before_action :set_post, only: [:edit, :show]
before_action :move_to_index, except: [:index, :show, :search, :tagsearch, :howtouse]
before_action :getting_tag

  def index
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(12)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
    @like = Like.new
  end

  # def search
  #   @posts = Post.search(params[:keyword])
  # end

  def tagsearch
    # binding.pry
    @tag = Tag.find(params[:id])
  end

  def howtouse
  end

  private
  def post_params
    params.require(:post).permit(:image, :text, :tag_ids).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def getting_tag
    @tags = Tag.all 
  end
end
