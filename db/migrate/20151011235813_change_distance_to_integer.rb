class ChangeDistanceToInteger < ActiveRecord::Migration
  def up
    add_column :accommodations, :distance_int, :integer

    Accommodation.all.each do |a|
      dist_int = a.distance.split.first.to_i
      a.distance_int = dist_int
      a.save
    end

    remove_column :accommodations, :distance
    rename_column :accommodations, :distance_int, :distance
  end

  def down
    add_column :accommodations, :distance_str, :string

    Accommodation.all.each do |a|
      a.distance_str = "#{a.distance} minutes away"
      a.save
    end

    remove_column :accommodations, :distance
    rename_column :accommodations, :distance_str, :distance
  end
end
