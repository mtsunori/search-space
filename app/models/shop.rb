class Shop < ApplicationRecord
belongs_to :user
has_many   :images, dependent: :destroy
has_many   :events
accepts_nested_attributes_for :images
accepts_nested_attributes_for :events

enum capacity: {five_se: 0, ten_se: 1, fifteen_se: 2, twenty_se: 3, twenty_five_se: 4 }
enum event_status: {lend: 0, resereved: 1}



end
