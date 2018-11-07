class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.text   :text
      t.text   :image
      t.integer :user_id,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
