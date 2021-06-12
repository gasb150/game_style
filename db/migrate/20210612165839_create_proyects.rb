class CreateProyects < ActiveRecord::Migration[6.1]
  def change
    create_table :proyects do |t|
      t.string :name
      t.references :framework, null: false, foreign_key: true
      t.references :language, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true
      t.string :other
      t.string :imageurl
      t.string :live_url
      t.string :source_url

      t.timestamps
    end
  end
end
