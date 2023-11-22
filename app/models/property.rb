# == Schema Information
#
# Table name: properties
#
#  id                 :bigint           not null, primary key
#  user_id            :bigint           not null
#  type_offer_id      :bigint           not null
#  type_property_id   :bigint           not null
#  title              :string
#  description        :text
#  address            :string
#  city               :string
#  state              :string
#  neighborhood       :string
#  bedrooms           :integer
#  bathrooms          :integer
#  floors             :integer
#  garages            :integer
#  area               :integer
#  sale_or_rent_price :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Property < ApplicationRecord
  #relaciones 1:n
  belongs_to :user
  belongs_to :type_offer
  belongs_to :type_property
  # Relacion 1:1 con photo
  has_one_attached :photo
  #Fotos de la propiedad
  has_many_attached :images
  # Relacion n:n con features
  has_many :property_features, dependent: :destroy
  has_many :features, through: :property_features
  # Validaciones
  validates :description, presence: true
  validates :area, presence: true
  validates :sale_or_rent_price, presence: true
end
