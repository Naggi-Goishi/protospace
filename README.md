#Tables

##Users
* name
* avatar
* self_introduction
* job

##Projects
* catch_copy
* concept
* title

##Projects_images
* image
* user
* projects

##Tags
* name

##Comments
* text

##likes
* user_id
* project_id

##Relation
* user has_many projects
* user has_many likes
* user has_many projects_images
* project belongs_to user
* project has_many tags
* project has_many comments
* project has_many likes
* project has_many projects_images
* tag has_many projects
* tag has_many users
* comment belongs_to user
* comment belongs_to project
* like belongs_to user
* like belongs_to project
* projects_image belongs_to user
* projects_image belongs_to projects