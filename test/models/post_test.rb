require 'test_helper'

class PostTest < ActiveSupport::TestCase
	def setup
		@post = Post.new(title: "Example Post", link: "http://www.google.com", user_id: 1)
	end

	test "should be valid" do 
		assert @post.valid?
	end

	test "title should be no longer than 300 characters" do
		@post.title = "a" * 301
		assert_not @post.valid?
	end

	test "link should be present" do
		@post.link = "   "
		assert_not @post.valid?
	end

	test "link format should be valid" do
		@post.link = "hello lol"
		assert_not @post.valid?
	end

	test "user ID should be present" do
		@post.user_id = ""
		assert_not @post.valid?
	end

	test "user ID should be an integer" do
		@post.user_id = "one"
		assert_not @post.valid?
	end
end
