class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :discussion_id
      t.string :username
      t.text :content

      t.timestamps
    end
  end
end
