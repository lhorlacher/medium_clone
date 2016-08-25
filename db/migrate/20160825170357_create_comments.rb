class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author, null: false
      t.string :body, null: false
      t.belongs_to :user 
      t.belongs_to :blog

      t.timestamps
    end
  end
end
