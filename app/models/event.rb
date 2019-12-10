class Event < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shop


enum event_status: {lend: 0, resereved: 1}

end