class HomeController < ApplicationController
  def index
    @user = current_yuuzaa
  end
end
