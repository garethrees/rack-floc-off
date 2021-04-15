module Rack
  # Turns off Federated Learning of Cohorts (FLoC)
  # https://plausible.io/blog/google-floc
  class FlocOff
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body = @app.call(env)
      headers['Permissions-Policy'] = 'interest-cohort=()'
      [status, headers, body]
    end
  end
end
