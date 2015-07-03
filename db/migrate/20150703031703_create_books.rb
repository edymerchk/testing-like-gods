class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.date :release_date

      t.timestamps null: false
    end
  end
end
