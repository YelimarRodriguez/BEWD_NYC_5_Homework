class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :genus
      t.text :description
      t.text :medicinal_uses
      t.text :utilitarian_uses
      t.text :edible_parts_preparation
      t.text :warnings
      t.text :sources

      t.timestamps
    end
  end
end
