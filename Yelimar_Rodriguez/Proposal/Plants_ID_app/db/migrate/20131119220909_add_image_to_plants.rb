class AddImageToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :image, :string, default: 'blank.png'
  end
end
