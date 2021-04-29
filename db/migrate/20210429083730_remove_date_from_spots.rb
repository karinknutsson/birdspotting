class RemoveDateFromSpots < ActiveRecord::Migration[6.0]
  def change
    remove_column :spots, :date, :string
  end
end
