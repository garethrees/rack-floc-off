require 'helper'

class Rack::TestFlocOff < Minitest::Test
  def parent_app
    lambda do |env|
      return [200, { 'Some' => 'Header' }, ['content']]
    end
  end

  def setup
    @app = Rack::FlocOff.new(parent_app)
  end

  def test_turns_off_floc
    expected_headers = {
      'Permissions-Policy' => 'interest-cohort=()',
      'Some' => 'Header'
    }

    assert_equal [200, expected_headers, ['content']], @app.call({})
  end
end
