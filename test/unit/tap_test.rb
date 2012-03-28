require 'test_helper'

class TapTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Tap.new.valid?
  end
end
