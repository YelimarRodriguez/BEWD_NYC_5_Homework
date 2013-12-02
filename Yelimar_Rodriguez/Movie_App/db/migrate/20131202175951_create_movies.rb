class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.integer :year_release
      t.integer :rating

      t.timestamps
    end
  end
end
