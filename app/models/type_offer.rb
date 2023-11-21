# == Schema Information
#
# Table name: type_offers
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TypeOffer < ApplicationRecord
  # realciones
  has_many :properties
  # Validaciones
  validates :name, presence: true, uniqueness: true
end
