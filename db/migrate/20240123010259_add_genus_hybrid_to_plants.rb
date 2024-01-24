class AddGenusHybridToPlants < ActiveRecord::Migration[7.1]
  def change
    add_column :plants, :genus_hybrid, :boolean
  end
end
