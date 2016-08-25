class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :author, null: false
      t.text :body, null: false
      t.string :title, null:false

      t.belongs_to :user

      t.timestamps
    end
  end
end
