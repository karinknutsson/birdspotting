class AddDesriptionToBirds < ActiveRecord::Migration[6.0]
  def change
    add_column :birds, :description, :text
  end
end
