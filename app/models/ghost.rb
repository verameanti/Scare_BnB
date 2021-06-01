class Ghost < ApplicationRecord
belongs_to :user
has_many :users, through: :hauntings, dependent: :destroy
end
