class AddArticleIdAndCategoryIdToArticlesCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :articles_categories, :article_id, :integer
    add_column :articles_categories, :category_id, :integer
    add_foreign_key :articles_categories, :articles, column: :article_id
    add_foreign_key :articles_categories, :categories, column: :category_id
  end
end
