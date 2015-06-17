class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |table|
      table.string :name, null: false
      table.text :body, null: false

      table.timestamps
    end
  end
end
