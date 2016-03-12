class Project < ActiveRecord::Base

  has_many :project_images
  belongs_to :user
  accepts_nested_attributes_for :project_images

end
