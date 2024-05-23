class Changetitle < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :titile, :string
    add_column :movies, :title, :string
  end
end
