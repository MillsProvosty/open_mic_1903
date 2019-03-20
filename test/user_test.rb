require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require 'pry'

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @ali = User.new("Ali")
  end

  def test_user_exists
    assert_instance_of User, @sal
  end

  def test_user_has_name
    assert_equal "Sal", @sal.name
  end

  def test_jokes_returns_empty_array
    assert_equal [], @sal.jokes
  end

  def test_learn_jokes_adds_jokes_to_array
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)
    assert_equal [@joke_1, @joke_2], @sal.jokes
  end

  def test_ali_can_learn_jokes_from_sal
    @sal.tell(@ali, @joke_1)
    @sal.tell(@ali, @joke_2)
    assert_equal [@joke_1, @joke_2], @ali.jokes
  end

  def test_find_joke_by_id
    @ali.learn(@joke_1)
    @ali.learn(@joke_2)
    assert_equal @joke_1, @ali.joke_by_id(1)
    assert_equal @joke_2, @ali.joke_by_id(2)
  end


end
