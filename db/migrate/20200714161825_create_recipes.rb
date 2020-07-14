class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :chef
      t.integer :prep_time
      t.integer :cook_time
      t.string :ingredients
      t.text :intructions
      t.text :recipe_notes

      t.timestamps
    end
  end
end
