class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :name
      t.integer :catalogue_id
      t.text :description

      t.timestamps
    end
  end
end
