class WelcomeController < ApplicationController
  def index
  end

  def about
    redirect_to root_path
  end
end
