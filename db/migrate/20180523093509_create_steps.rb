class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.references :course, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.text :description
      t.string :title
      t.integer :step_num

      t.timestamps
    end
  end
end
