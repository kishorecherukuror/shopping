class CreateManufacturers < ActiveRecord::Migration[5.0]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.text :address
      t.string :ph_no

      t.timestamps
    end
  end
end
