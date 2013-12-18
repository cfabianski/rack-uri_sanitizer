require "rack/uri_sanitizer/version"

module Rack
  class URISanitizer
    def initialize(app)
      @app = app
    end

    def call(env)
      unless /\A(?:%[0-9a-fA-F]{2}|[^%])*\z/ =~ env['QUERY_STRING'].to_s
        env['QUERY_STRING'] = env['QUERY_STRING'].gsub(/%(?![0-9a-fA-F]{2})/, '%25')
      end

      @app.call(env)
    end
  end
end
