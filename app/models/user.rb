class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles
  has_many :votes

  validates :name, presence: true
  validates :username, presence: true
end
