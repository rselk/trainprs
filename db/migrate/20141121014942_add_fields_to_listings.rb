class AddFieldsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :title, :string
    add_column :listings, :length_in_days, :integer
    add_column :listings, :coach_id, :integer
    add_column :listings, :information, :text
  end
end
