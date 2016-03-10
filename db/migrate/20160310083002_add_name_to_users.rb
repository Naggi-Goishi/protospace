class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :profile, :string
    add_column :users, :job, :string
    add_column :users, :member, :string
  end
end
