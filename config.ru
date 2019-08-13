
require './config/environment'

if ActiveRecord::Migrator.needs migration?
    raise 'Migrations are pending. Run rake db:migrate to resolve the issue.'
end

use Rack::MethodOverride
use UsersController
run ApplicationController
