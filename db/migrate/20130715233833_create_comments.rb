class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :author
      t.string :commentable_type
      t.integer :commentable_id

      t.timestamps
    end
  end
end
