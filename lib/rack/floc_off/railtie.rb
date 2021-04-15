module Rack
  class FlocOff::Railtie < Rails::Railtie
    initializer 'rack.floc_off.initializer' do |app|
      app.middleware.use Rack::FlocOff
    end
  end
end
