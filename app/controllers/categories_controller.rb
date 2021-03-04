class CategoriesController < ApplicationController
    def index
      show_category
      @categories_priory = Category.all.order(:priority).limit(5)
      @most_voted = Article.joins(:votes).group('articles.id').order('count(votes.id) desc').first
    end

    def show
      show_category
        @category = Category.find(params[:id])
        @articles_cat = Category.find(params[:id]).articles.ordered_by_most_recent
    end

    private

    def show_category
      @categories = Category.all.order(:id)
    end
end
