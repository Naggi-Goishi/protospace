class CreateProjectImages < ActiveRecord::Migration
  def change
    create_table :project_images do |t|
      t.string :image
      t.integer :status
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
