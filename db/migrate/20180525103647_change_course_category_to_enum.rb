class ChangeCourseCategoryToEnum < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :category, :string
    add_column :courses, :category, :integer
  end
end
