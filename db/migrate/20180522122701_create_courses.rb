class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :difficulty, default: 0
      t.string :title
      t.integer :time, default: 0
      t.string :category
      t.integer :calories, default: 0
      t.text :description
      t.string :city
      t.string :photo_url
      t.text :tracking

      t.timestamps
    end
  end
end
