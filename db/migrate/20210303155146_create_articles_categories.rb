class CreateArticlesCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :articles_categories, &:timestamps
  end
end
