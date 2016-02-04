class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    if(User.find_by_username(current_user.username))
      @username = current_user.username
    else
      redirect_to root_path, :notice=> "User not found!"
    end
  end

  def explore
  end
end
