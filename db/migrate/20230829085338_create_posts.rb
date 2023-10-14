class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :kinds
      t.string :base
      t.string :material

      t.timestamps
    end
  end
end
