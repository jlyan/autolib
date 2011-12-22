class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.date :pub_date
      t.string :image_url
      t.string :publisher
      t.decimal :price
      t.string :status
      t.integer :borrower_id

      t.timestamps
    end
  end
end
