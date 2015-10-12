class AddPriceInteger < ActiveRecord::Migration
  def change
    add_column :accommodations, :price_int, :integer

    Accommodation.all.each do |a|
      price_int = a.price.split.first[1..-1].to_i
      a.price_int = price_int
      a.save
    end
  end
end
