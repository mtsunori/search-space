class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string     :title, null: false
      t.datetime   :start, null: false
      t.datetime   :end, null: false
      t.references :shop, foreign_key: true
      t.integer    :borrower_id, to_table: :users
      t.string     :event_status, null: false, default: 0
      t.timestamps
    end
  end
end
