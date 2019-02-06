class CreateCabins < ActiveRecord::Migration
  def change
    create_table :cabins do |t|
      t.string :name
      t.string :leader_last
      t.string :assistant_last
      t.string :gender
      t.integer :capacity
      t.integer :year

      t.timestamps null: false
    end
  end
end
