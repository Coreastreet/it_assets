class RenameNomenclaturalRemarksToNomenclaturalRemarks < ActiveRecord::Migration[7.1]
  def change
    rename_column :plants, :nomenclutural_remarks, :nomenclatural_remarks
  end
end
