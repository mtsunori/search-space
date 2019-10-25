class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string     :name, null: false, index: true
      t.integer    :price, null: false, index:true
      t.text       :explanation, null: false
      t.integer    :capacity, null: false
      t.references :user, null: false, foreign_key: true
      t.text       :address, null: false
      t.string     :house_number, null: false
      t.string     :event_status, null: false, default: 0
      t.integer    :borrower_id, to_table: :users
      t.string     :lending_time, null: false
      t.string     :business_hour
      t.string     :phone_number, null: false

      t.timestamps
    end
  end
end
