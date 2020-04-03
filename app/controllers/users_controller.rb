class UsersController < ApplicationController
before_action :responsive_mypage
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @posts = current_user.posts.page(params[:page]).per(16)
    @tags = Tag.all 
    # user.posts.page(params[:page]).per(5).order("created_at DESC")
  end

  private
  def responsive_mypage
    sh = request.user_agent
    if(sh.include?('Mobile')|| sh.include?('Android'))
      request.variant = :mobile
    end
  end

end
