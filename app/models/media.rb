class Media < ApplicationRecord
    belongs_to :step, optional: true
    enum category_of_media: [:photo, :video]
end
