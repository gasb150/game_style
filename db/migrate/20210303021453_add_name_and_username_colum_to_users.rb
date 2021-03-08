# frozen_string_literal: true

class AddNameAndUsernameColumToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :gravatar_url, :string
  end
end
