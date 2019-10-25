class Shop < ApplicationRecord
belongs_to :user
has_many   :images, dependent: :destroy
has_many   :resarvations
accepts_nested_attributes_for :images


end
