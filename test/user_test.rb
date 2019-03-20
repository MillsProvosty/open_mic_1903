require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'

class UserTest < Minitest::Test
  def test_user_exists
    sal = User.new("Sal")
  end
end
