class Images < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.text :image, null: false
      t.references :shop, null: false, foreign_key: true
      t.timestamps
    end
  end
end
