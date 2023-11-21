# == Schema Information
#
# Table name: type_properties
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TypeProperty < ApplicationRecord
  # realciones
  has_many :properties

  # Validaciones
  validates :name, presence: true, uniqueness: true
end
