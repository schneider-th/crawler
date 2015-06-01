class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.integer :vendorid
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
