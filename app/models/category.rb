class Category < ApplicationRecord
  has_many :articles_categories
  has_many :articles, through: :articles_categories

  validates :name, presence: true
  validates :priority, presence: true
end
