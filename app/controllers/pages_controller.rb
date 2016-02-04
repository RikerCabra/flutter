class PagesController < ApplicationController
  def index
  end

  def home
    @posts = Post.all
  end

  def profile
    if(User.find_by_username(current_user.username))
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User not found!"
    end
    
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]))
  end
  
  def explore
    @posts = Post.all
  end
end
