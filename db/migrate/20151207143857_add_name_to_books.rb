class AddNameToBooks < ActiveRecord::Migration
  def change
    add_column :books, :name, :string
    add_column :books, :description, :text
  end
end
