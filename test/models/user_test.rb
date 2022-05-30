require 'test_helper'

class UserTest < ActiveSupport::TestCase
# 1. check that a user wit valida data is valid
test 'user with a valid email should be valid' do
  user = User.new(email: 'test@test.org', password_digest: 'test')
  assert user.valid?
end
  

# 2. Check that a user with a invalid email address is not valid
test 'user with invalid email should be invalid' do
  user = User.new(email: 'email', password_digest: 'test')
  assert_not user.valid?
end

# 3. Check that a new user with duplicate email is not valid. So
# we use the same email as the fixture we just created.
test 'user with taken email shoud be invalid' do
  other_user = users(:one)
  user = User.new(email: other_user.email, password_digest: 'test')
  assert_not user.valid?
end
end