class ChangePowoIdFromIntegerToString < ActiveRecord::Migration[7.1]
  def change
    change_column :plants, :powo_id, :string
  end
end
