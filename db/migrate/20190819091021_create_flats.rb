class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :description
      t.string :name
      t.string :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
