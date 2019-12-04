class Event < ApplicationRecord
  belongs_to :user
  belongs_to :shop
end

enum event_status: {lend: 0, resereved: 1}