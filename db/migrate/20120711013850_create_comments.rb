class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.references :post

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
