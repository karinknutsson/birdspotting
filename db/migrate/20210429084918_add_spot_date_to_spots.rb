class AddSpotDateToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :spot_date, :date
  end
end
