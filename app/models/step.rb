class Step < ApplicationRecord
  belongs_to :course
    validates :latitude, presence: true
    validates :longitude, presence: true
end
