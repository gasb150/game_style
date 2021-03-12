class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.includes(:user).all
  end

  def show; end

  def new
    @categories = Category.all.order(:id)
    @article = Article.new
  end

 
  def edit; end

 
  def create
    @article = current_user.articles.new(article_params)
    respond_to do |format|
      if @article.save

        format.html { redirect_to root_path, notice: 'Article was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity, notice: 'Article was not successfully created.' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html do
          redirect_to category_path(@article.category_ids.first), notice: 'Article was successfully updated.'
        end

      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :text, :image, category_ids: [])
  end
end
