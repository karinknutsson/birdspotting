class AddNoteToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :note, :text
  end
end
