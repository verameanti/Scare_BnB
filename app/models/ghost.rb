class Ghost < ApplicationRecord
belongs_to :user
has_many :hauntings
has_many :users, through: :hauntings, dependent: :destroy
has_many_attached :photos
end
