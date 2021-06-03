class Haunting < ApplicationRecord
  belongs_to :ghost
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  # validates :start_date, :end_date, presence: true
end
