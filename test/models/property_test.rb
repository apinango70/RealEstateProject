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
require "test_helper"

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
