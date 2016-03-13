class ProjectImage < ActiveRecord::Base

    belongs_to :project
    mount_uploader :image, ImageUploader
    enum status: [:main, :sub]
    validates_presence_of :image

end
