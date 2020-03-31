class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @posts = current_user.posts.page(params[:page]).per(16)
    @tags = Tag.all 
    # user.posts.page(params[:page]).per(5).order("created_at DESC")
  end

end
