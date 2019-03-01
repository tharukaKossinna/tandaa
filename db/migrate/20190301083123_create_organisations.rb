class CreateOrganisations < ActiveRecord::Migration[5.1]
  def change
    create_table :organisations do |t|
      t.string :name
      t.float :hourlyRate

      t.timestamps
    end
  end
end
