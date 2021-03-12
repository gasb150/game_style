class Article < ApplicationRecord
  belongs_to :user
  has_many :votes, dependent: :destroy
  has_one_attached :image
  has_many :articles_categories, dependent: :destroy
  has_many :categories, through: :articles_categories

  validates :title, presence: true
  validates :text, presence: true
  validates :image, presence: true
  validates :category_ids, presence: true

  validates :title, length: { minimum: 2 }
  validates :text, length: { minimum: 5 }
end
