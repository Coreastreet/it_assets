class ChangeIpniIdToString < ActiveRecord::Migration[7.1]
  def change
    change_column :plants, :ipni_id, :string
  end
end
