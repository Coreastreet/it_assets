class AddGenusToPlants < ActiveRecord::Migration[7.1]
  def change
    add_column :plants, :genus, :string
  end
end
