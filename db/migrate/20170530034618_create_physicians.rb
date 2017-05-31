class CreatePhysicians < ActiveRecord::Migration[5.0]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :email
      t.string :ph_no

      t.timestamps
    end
  end
end
