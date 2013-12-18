# coding: UTF-8

require 'bacon/colored_output'
require 'rack/uri_sanitizer'

describe Rack::URISanitizer do
  before do
    @app = Rack::URISanitizer.new(-> env { env })
  end

  shared :does_sanitize_uri do
    it "sanitizes URI-like entity (QUERY_STRING)" do
      env    = @app.({ "QUERY_STRING" => @uri_input })
      result = env["QUERY_STRING"]

      result.should.match /\A(?:%[0-9a-fA-F]{2}|[^%])*\z/
    end
  end

  describe "with trailing %" do
    before do
      @uri_input = "http://bar/foo%5B%5D%3D%"
    end

    behaves_like :does_sanitize_uri
  end
end
