class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :image
      t.integer :sort_order

      t.timestamps
    end
  end
end
