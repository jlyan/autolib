class ChangeBookColumn < ActiveRecord::Migration
  def up
    rename_column :books, :image_url, :douban_url
    change_column :books, :borrower_id, :string
    rename_column :books, :borrower_id, :borrower
  end

  def down
    rename_column :books, :douban_url, :image_url
    change_column :books, :borrower_id, :integer
    rename_column :books, :borrower, :borrower_id
  end
end
