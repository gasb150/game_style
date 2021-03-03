class CategoriesController < ApplicationController
    def index
      @categories = Category.all.order(:id)
      @categories_priory = Category.all.order(:priority).limit(5)
      @most_voted = Article.joins(:votes).group('articles.id').order('count(votes.id) desc').first
    end

    def show
        @category = Category.find(params[:id])
        @articles_cat = Category.find(params[:id]).articles.ordered_by_most_recent
    end
end
