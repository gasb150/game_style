class Article < ApplicationRecord
    belongs_to :user
    has_many :votes, dependent: :destroy

    has_many :articles_categories, dependent: :destroy
    has_many :categories, through: :articles_categories
end
