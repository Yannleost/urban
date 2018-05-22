class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :note
      t.text :content
      t.text :selfie
      t.integer :lost_calories
      t.integer :felt_difficulties
      t.integer :time_spent
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
