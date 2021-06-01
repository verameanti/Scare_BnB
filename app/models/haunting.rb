class Haunting < ApplicationRecord
  belongs_to :ghost
  belongs_to :user
end
