class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :borrower_id
      t.integer :book_id

      t.timestamps
    end
  end
end
