class AddCategoryIdToVote < ActiveRecord::Migration[6.1]
  def change
    add_column :votes, :category_id, :integer
  end
end
