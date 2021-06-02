class Haunting < ApplicationRecord
  belongs_to :ghost
  belongs_to :user
  # validates :start_date, :end_date, presence: true
end
