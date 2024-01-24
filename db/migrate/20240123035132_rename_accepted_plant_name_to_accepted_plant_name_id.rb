class RenameAcceptedPlantNameToAcceptedPlantNameId < ActiveRecord::Migration[7.1]
  def change
    rename_column :plants, :accepted_plant_name, :accepted_plant_name_id
  end
end
