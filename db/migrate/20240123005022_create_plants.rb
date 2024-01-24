class CreatePlants < ActiveRecord::Migration[7.1]
  def change
    create_table :plants do |t|
      t.integer :plant_name_id
      t.integer :ipni_id
      t.integer :taxon_rank, limit: 2
      t.integer :taxon_status, limit: 2
      t.string :family
      t.string :species
      t.integer :infraspecific_rank, limit: 2
      t.string :infraspecies
      t.string :parathetical_author
      t.string :primary_author
      t.string :publication_author
      t.string :place_of_plubication
      t.string :volume_and_page
      t.string :first_published
      t.integer :nomenclutural_remarks, limit: 2
      t.string :geographical_area
      t.string :lifeform_description
      t.string :climate_description
      t.string :taxon_name
      t.string :taxon_authors
      t.integer :accepted_plant_name
      t.integer :basionym_plant_name_id
      t.string :replaced_synonym_author
      t.boolean :homotypic_synonym
      t.integer :parent_plant_name_id
      t.integer :powo_id
      t.boolean :reviewed

      t.timestamps
    end
  end
end
