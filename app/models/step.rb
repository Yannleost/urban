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

class Step < ApplicationRecord
    belongs_to :course
    has_many :medias
    validates :latitude, presence: true
    validates :longitude, presence: true
end
