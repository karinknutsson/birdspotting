class RemoveDescriptionFromBirds < ActiveRecord::Migration[6.0]
  def change
    remove_column :birds, :description, :string
  end
end
