class ChangeColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :plants, :place_of_plubication, :place_of_publication
  end
end
