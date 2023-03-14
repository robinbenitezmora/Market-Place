require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'User with valid email and password should be valid' do
    user = User.new(email: 'test@test.org', password_digest: '123456')
    assert user.valid?
  end

  test 'User with invalid email should be invalid' do
    user = User.new(email: 'test', password_digest: '123456')
    assert_not user.valid?
  end

  # test 'User with taken email should be invalid' do
  #   other_user = users(one)
  #   user = User.new(email: other_user.email, password_digest: 'test')
  #   assert_not user.valid?   
  # end
end
