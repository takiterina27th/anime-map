class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name,            null: false, index: true
      t.text :description,       null: false
      t.string :image,           null: false
      t.string :anime_title,     null: false
      t.string :place,           null: false
      t.references :user,        foreign_key: true

      t.timestamps
    end
  end
end
