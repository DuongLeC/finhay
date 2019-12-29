class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :require_login

  def require_login
    unless current_user.present?
      if current_user.is_admin?
        redirect_to root_path
      end
    end
  end
end
