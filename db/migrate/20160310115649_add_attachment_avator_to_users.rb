class AddAttachmentAvatorToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :avator
    end
  end

  def self.down
    remove_attachment :users, :avator
  end
end
