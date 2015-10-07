class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.string :title
      t.string :price
      t.string :distance
      t.text :description
      t.string :address_line_1
      t.string :address_line_2
      t.string :website
      t.string :phone
    end
  end
end
