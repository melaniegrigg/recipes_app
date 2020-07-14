class FixTypoOnInstructionsKey < ActiveRecord::Migration[6.0]
  def change
    rename_column :recipes, :intructions, :instructions
  end
end
