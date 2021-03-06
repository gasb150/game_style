class Article < ApplicationRecord
    belongs_to :user
    has_many :votes, dependent: :destroy
    has_one_attached :image
    has_many :articles_categories, dependent: :destroy
    has_many :categories, through: :articles_categories

    validates :title, presence: true
    validates :text, presence: true
    validates :image, presence: true
  

    #title: params[:title], text: params[:text], image_url: params[:image_url], category_ids: params[:category_ids]
end
