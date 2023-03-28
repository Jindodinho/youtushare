class HomeController < ActionController::Base
  before_action :authenticate_user!

  def index
    # home page
  end
end
