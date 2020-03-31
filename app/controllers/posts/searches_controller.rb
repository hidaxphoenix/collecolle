class Posts::SearchesController < ApplicationController
  before_action :getting_tag
  def index
    @posts = Post.search(params[:keyword])
  end

  private
  def getting_tag
    @tags = Tag.all 
  end
end
