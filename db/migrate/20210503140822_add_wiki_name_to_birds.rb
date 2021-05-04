class AddWikiNameToBirds < ActiveRecord::Migration[6.0]
  def change
    add_column :birds, :wiki_name, :string
  end
end
