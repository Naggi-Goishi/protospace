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
* like_id

##Project_images
* image


##Tags
* name
* project_id

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
###user and projects one vs. many
* user has_many projects
* project belongs_to user

###user and likes one vs. many
* no description

###projecrt and likes one vs. many
* project has_many likes
* like belongs_to project

###projects and tags many vs. many
* projects has_many tags through projects_tags
* tags has_mant tags through projects_tags

###user and comments one vs. many
* user has_many comments
* comment belong_to user

###project and comments one vs. many
* project has_many comments
* comment belongs_to project

###project has_many project_images one vs. many
* project has_many project_images
* project_image belongs_to project
