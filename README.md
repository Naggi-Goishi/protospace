#Tables

##Users
* name
* avatar
* profile
* job
* member

##Projects
* catch_copy
* concept
* title
* user_id

##Project_images
* image
* status
* project_id


##Tags
* name

##Comments
* text
* user_id
* project_id

##likes
* user_id
* project_id

##projects_tags
* project_id
* tag_id

##Relation
###User
* user has_many projects
* user has_many comments
* user has_many likes
###Project
* project belongs_to user
* project has_many likes
* project has_many tags through projects_tags
* project has_many comments
* project has_many project_images
###Project_images
* project_image belongs_to project
###Like
* like belongs_to project
* like belongs_to user
###Tags
* tag has_many projects through projects_tags