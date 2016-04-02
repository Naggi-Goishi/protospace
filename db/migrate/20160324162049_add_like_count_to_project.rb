class AddLikeCountToProject < ActiveRecord::Migration
  def change
    add_column :projects, :likes_count, :integer
  end
end
