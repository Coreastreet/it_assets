class RenameParatheticalAuthorToParentheticalAuthor < ActiveRecord::Migration[7.1]
  def change
    rename_column :plants, :parathetical_author, :parenthetical_author
  end
end
