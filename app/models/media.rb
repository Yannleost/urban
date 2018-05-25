# == Schema Information
#
# Table name: media
#
#  id                :bigint(8)        not null, primary key
#  category_of_media :integer
#  url               :string
#  step_id           :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Media < ApplicationRecord
    belongs_to :step, optional: true
    enum category_of_media: [:photo, :video]
end
