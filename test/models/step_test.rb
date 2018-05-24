# == Schema Information
#
# Table name: steps
#
#  id          :bigint(8)        not null, primary key
#  course_id   :bigint(8)
#  latitude    :float
#  longitude   :float
#  description :text
#  title       :string
#  step_num    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class StepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
