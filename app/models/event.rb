class Event < ApplicationRecord
  has_many :quotations, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
