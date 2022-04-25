class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title,  null: false
      t.text :explanation, null: false
      t.integer :prefecture_id,  null: false
      t.string :address
      t.integer :category_id, null: false
      t.timestamps
    end
  end
end
