class ApplicationController < ActionController::Base
  before_action :authenticate_user!, exept: [:index, :show]
end
