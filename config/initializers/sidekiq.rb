# require "sidekiq"
# require "sidekiq/web"

# Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
#   [user, password] == ['techtalks', 'password123']
# end

# Sidekiq::Extensions.enable_delay!
