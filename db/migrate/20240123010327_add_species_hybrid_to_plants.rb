class AddSpeciesHybridToPlants < ActiveRecord::Migration[7.1]
  def change
    add_column :plants, :species_hybrid, :boolean
  end
end
