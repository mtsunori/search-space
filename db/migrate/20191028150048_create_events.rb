class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string     :title, null: false
      t.integer    :day_price, null: false
      t.datetime   :start_at, null: false
      t.datetime   :end_at, null: false
      # shop_idにnull: falseを入れるとDB保存ができない
      t.references :shop, foreign_key: true 
      t.references :borrower, foreign_key: { to_table: :users }
      t.integer    :event_status, null: false, default: 0
      t.timestamps
    end
  end
end
