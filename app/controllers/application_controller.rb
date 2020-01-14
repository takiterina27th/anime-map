class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  def set_search
    @q = Post.ransack(params[:q])
    @search_posts = @q.result(distinct: true)
  end

  protected

  def configure_permitted_parameters
    added_attrs = [ :nickname, :email, :password, :password_confirmation　]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
