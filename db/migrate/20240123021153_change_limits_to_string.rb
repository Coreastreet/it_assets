class ChangeLimitsToString < ActiveRecord::Migration[7.1]
  def change
    change_column :plants, :taxon_rank, :string
    change_column :plants, :taxon_status, :string
    change_column :plants, :infraspecific_rank, :string
    change_column :plants, :nomenclutural_remarks, :string
  end
end
