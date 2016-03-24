class Project < ActiveRecord::Base

  has_many :project_images
  has_many :likes, dependent: :destroy
  has_many :comments
  belongs_to :user
  accepts_nested_attributes_for :project_images
  validates_presence_of :title, :catch_copy, :concept

  def like_user(user)
     self.likes.find_by(user_id: user)
  end

end
