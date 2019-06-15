class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def search
    @posts = Post.search(params[:search])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :family_name, :first_name_kana, :family_name_kana, :phone_number, :registration_address, :registration_postal_code])
  end

  def after_sign_up_path_for(resoursce)
    products_path
  end
  def after_sign_in_path_for(_resoursce)
    products_path
  end
end
