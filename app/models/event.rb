class Event < ApplicationRecord
  belong_to :user
  belong_to :shop
end
