class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name, null: false
      t.boolean :attending_ceremony, null: false
      t.integer :number_attending
      t.text :dietary_restrictions
      t.boolean :attending_friday, null: false
    end
  end
end
