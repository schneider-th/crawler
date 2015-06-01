class CreateObcs < ActiveRecord::Migration
  def change
    create_table :obcs do |t|
      t.boolean :landingpage
      t.boolean :first_level
      t.integer :vendor_id

      t.timestamps null: false
    end
  end
end
