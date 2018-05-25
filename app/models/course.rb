# == Schema Information
#
# Table name: courses
#
#  id          :bigint(8)        not null, primary key
#  difficulty  :integer          default("easy")
#  title       :string
#  time        :integer          default(0)
#  category    :string
#  calories    :integer          default(0)
#  description :text
#  city        :string
#  photo_url   :string
#  tracking    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  distance    :integer
#

class Course < ApplicationRecord
  has_many :reviews
  has_many :steps
  enum difficulty: [:easy, :medium, :hard]
  enum category: ["Les Calanques","L'Estaque","Le vieux port","Centre-ville"]
end
