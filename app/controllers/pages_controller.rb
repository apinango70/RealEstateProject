class PagesController < ApplicationController
  def index
    #Muestra las últimas 5 propiedades creadas en la pagina principal
    @properties = Property.order(created_at: :desc).limit(5)
  end

  def list_properties
    #lista con Paginacion
    @pagy, @properties = pagy(Property.order(created_at: :desc), items: 6) #la propiedad mas reciente se muestra primero
    #Muestra los tipos de propiedades en la pagina de listado de propiedades
    @tipos_de_propiedades = TypeProperty.left_joins(properties: [:type_offer, :type_property]).select("type_properties.*, COUNT(properties.id) AS total").group(:id)
    #Muestra los tipos de ofertas en la pagina de listado de propiedades
    @type_offers = TypeOffer.includes(:properties)
    #Muestra las ciudades en la pagina de listado de propiedades
    @cities = Property.group(:city).count
  end

  def agency_list
    @agencies = Agency.all
  end

  def agents_list
    @users = User.where(role: 'agent')
  end

  def agency_profile
    #Muestra la agencia por su id
    @agency = Agency.find(params[:id])
    #Muestra las propiedades de la agencia
    @properties = @agency.properties.distinct
    # Muestra los agents asociados a esa agencia
    @agents = @agency.agents
  end

  def add_property
    #Muestra el formulario para crear una propiedad
    @property = Property.new
  end

  def show_property
  end

  def add_property
  end

  def agent_profile
    #Muestra el perfil del agente por su id
    @user = User.find(params[:id])
    #Muestra las propiedades del agente
    @properties = @user.properties
  end

  private

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(
                                        :user_id,
                                        :type_offer_id,
                                        :type_property_id,
                                        :title,
                                        :description,
                                        :address,
                                        :city,
                                        :state,
                                        :neighborhood,
                                        :bedrooms,
                                        :bathrooms,
                                        :floors,
                                        :garages,
                                        :area,
                                        :sale_or_rent_price,
                                        :photo,
                                        feature_ids: []
                                        )
    end
end
