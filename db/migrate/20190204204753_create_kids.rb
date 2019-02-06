class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :year
      t.string :sport
      t.string :emergency_contact
      t.belongs_to :cabin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
