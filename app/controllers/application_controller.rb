class ApplicationController < ActionController::Base
  include DeviseWhitelist
  protect_from_forgery with: :exception
  before_action :authenticate_user!
end
