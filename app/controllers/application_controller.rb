class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(current_user)
    current_user.neighborhoods.destroy_all
    Neighborhood.all.each do |neighborhood|
      current_user.neighborhoods << neighborhood
      current_user.save
    end
    decks_show_path
  end

  def after_sign_out_path_for(current_user)
    root_path
  end

  def configure_permitted_parameters
    added_attrs = [:user_name, :diet, :zipcode]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :edit, keys: added_attrs
  end

end
