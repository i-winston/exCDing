class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  def set_search
    @search = Product.ransack(params[:q])
    @search_products = @search.result
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :family_name, :first_name_kana, :family_name_kana, :phone_number, :registration_address, :registration_postal_code])
  end

  def after_enduser_sign_up_path_for(resoursce)
    products_path
  end

  def after_enduser_sign_in_path_for(_resoursce)
    products_path
  end
  Refile.secret_key = 'a41e3e13e4f3ed14d672a4b04fea76c1d8e7f5c3489547397975cc3d51ba81c0e8692b1cb768cc5ee5feca7271acdec4418145fbd025801de01d01c2eba02f5d'

  def after_admin_sign_up_path_for(_resoursce)
    admins_home_path
  end


   def after_admin_sign_in_path_for(_resoursce)

    admins_home_path
  end
end
