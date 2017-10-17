class CreateResidences < ActiveRecord::Migration[5.1]
  def change
    create_table :residences do |t|
      t.string :address
      t.integer :year_built
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
