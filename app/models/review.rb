# == Schema Information
#
# Table name: reviews
#
#  id                :bigint(8)        not null, primary key
#  note              :integer
#  content           :text
#  selfie            :text
#  lost_calories     :integer
#  felt_difficulties :integer
#  time_spent        :integer
#  course_id         :bigint(8)
#  user_id           :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Review < ApplicationRecord
  belongs_to :course
  belongs_to :user
  mount_uploader :selfie, PhotoUploader
  validates :content, presence: true
  validates :felt_difficulties, presence: true, numericality: { only_integer: true, :less_than_or_equal_to => 5, :greater_than_or_equal_to => 0, message: "doit être compris entre 0 et 5" }
 end
