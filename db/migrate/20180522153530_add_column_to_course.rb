class AddColumnToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :distance, :integer
  end
end
