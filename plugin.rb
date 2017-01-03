# name: purple-tentacle
# about: A sample plugin showing how to add a plugin route
# version: 0.1
# authors: Robin Ward
# url: https://github.com/discourse/purple-tentacle


# add_admin_route 'purple_tentacle.title', 'purple-tentacle'
#
# Discourse::Application.routes.append do
#  get '/admin/plugins/purple-tentacle' => 'admin/plugins#index'
#end

register_asset 'javascripts/discourse/templates/user/profile.hbs'

after_initialize do
 Discourse::Application.routes.append do
   get 'users/:username/profile' => 'users#show', constraints: {username: USERNAME_ROUTE_FORMAT}
 end
end
