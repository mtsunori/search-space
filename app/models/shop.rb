class Shop < ApplicationRecord
belongs_to :user
has_many   :images, dependent: :destroy
has_many   :resarvations
accepts_nested_attributes_for :images

enum capacity: {5se: 0, 10se: 1, 15se: 2, 20se: 3, 25se: 4 }
enum event_status: {lend: 0, resereved: 1}
enum lending_time_start: {}
enum lending_time_end: {}
enum business_hour_start: {}
enum business_hour_end: {}


end
