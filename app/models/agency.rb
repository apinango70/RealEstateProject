# == Schema Information
#
# Table name: agencies
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  address     :string
#  phone       :string
#  email       :string
#  website     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Agency < ApplicationRecord
    #Relaciones
    has_many :users
    has_many :properties, through: :users
    has_many :agents, -> { where(role: 'agent') }, class_name: 'User'

    # Active storage
    has_one_attached :photo

end
