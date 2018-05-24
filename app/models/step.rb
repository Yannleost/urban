class Step < ApplicationRecord
    belongs_to :course
    has_many :medias
    validates :latitude, presence: true
    validates :longitude, presence: true
end
