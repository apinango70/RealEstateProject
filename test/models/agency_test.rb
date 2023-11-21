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
require "test_helper"

class AgencyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
