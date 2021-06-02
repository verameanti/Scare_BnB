class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :ghosts, dependent: :destroy
  has_many :hauntings, dependent: :destroy
  has_many :ghosts, through: :hauntings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
