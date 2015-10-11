class AddEmailToAccommodations < ActiveRecord::Migration
  def change
    add_column :accommodations, :email, :string
  end
end
