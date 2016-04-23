class Project < ActiveRecord::Base

  has_many :project_images
  has_many :likes, dependent: :destroy
  has_many :comments
  has_many :tags
  belongs_to :user
  accepts_nested_attributes_for :project_images
  validates_presence_of :title, :catch_copy, :concept, :project_images
  acts_as_taggable

  def like_user(user)
     self.likes.find_by(user_id: user)
  end

end
