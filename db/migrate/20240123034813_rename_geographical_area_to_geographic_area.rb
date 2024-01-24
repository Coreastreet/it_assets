class RenameGeographicalAreaToGeographicArea < ActiveRecord::Migration[7.1]
  def change
    rename_column :plants, :geographical_area, :geographic_area
  end
end
