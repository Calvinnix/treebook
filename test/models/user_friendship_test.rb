require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase

	should belong_to(:user)
	should belong_to(:friend)
	
	
	test "Creating the friendship works" do
	
		assert_nothing_raised do
		UserFriendship.create user: users(:Calvin), friend: users(:Mike)
		
		end
	end
	
	test "that creating a friendship based on user id and friend id works" do
	
		UserFriendship.create user_id: users(:Calvin).id, friend_id: users(:Mike).id
		assert users(:Calvin).friends.include?(users(:Mike))
	
	end
	
end
