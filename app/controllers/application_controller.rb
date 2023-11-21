class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  #Gema pagy
  include Pagy::Backend

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
                                                        :firstname, 
                                                        :lastname, 
                                                        :role, 
                                                        :phone, 
                                                        :website, 
                                                        :description, 
                                                        :photo,
                                                        :agency_id,
                                                        :position_id
                                                      ])

    devise_parameter_sanitizer.permit(:account_update, keys: [
                                                              :firstname, 
                                                              :lastname, 
                                                              :role, 
                                                              :phone, 
                                                              :website, 
                                                              :description, 
                                                              :photo,
                                                              :agency_id,
                                                              :position_id
                                                            ])
  end

  def after_sign_in_path_for(resource)
    root_path  # Redirige al usuario a la ruta root luego de logearse
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path # Redirige al usuario a la ruta root luego de deslogearse
  end

end
