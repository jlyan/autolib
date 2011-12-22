class ChangeBorrowerColumn < ActiveRecord::Migration
  def up
    rename_column :books, :borrower, :borrower_id
    change_column :books, :borrower_id, :integer
  end

  def down
  end
end
