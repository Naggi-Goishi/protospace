class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :catch_copy
      t.string :concept
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
