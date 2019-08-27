
require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end


run ApplicationController
use Rack::MethodOverride
use UsersController
use GroupsController
  #mount application controller, this can really be called anything

 SINATRA_ACTIVESUPPORT_WARNING=false
