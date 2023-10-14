class AddMethodToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :method, :string
  end
end
