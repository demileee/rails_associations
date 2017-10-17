class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :year_founded
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end
