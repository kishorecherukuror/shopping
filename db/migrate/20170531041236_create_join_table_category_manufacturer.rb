class CreateJoinTableCategoryManufacturer < ActiveRecord::Migration[5.0]
  def change
    create_join_table :categories, :manufacturers do |t|
      # t.index [:category_id, :manufacturer_id]
      # t.index [:manufacturer_id, :category_id]
    end
  end
end
