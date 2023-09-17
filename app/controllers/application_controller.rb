class ApplicationController < ActionController::Base
  include AuthHelper

  helper_method :current_user, :signed_in?, :authenticate_user!, :redirect_if_already_signed_in
end
