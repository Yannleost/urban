class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.integer :category_of_media
      t.string :url
      t.references :step, foreign_key: true

      t.timestamps
    end
  end
end
