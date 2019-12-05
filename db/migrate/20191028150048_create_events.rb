class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      # t.string     :title, null: false
      # t.datetime   :start_at, null: false
      # t.datetime   :end_at, null: false
      t.references :shop, null: false, foreign_key: true
      # t.integer    :borrower_id, to_table: :users
      # t.integer    :event_status, null: false, default: 0
      t.timestamps
    end
  end
end
