require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test 'valid user' do
        user = User.create(username: 'Jovi',
                           email: 'jovi@example.com',
                           encrypted_password: 'xxxxxx',
                           created_at: Date.today,
                           updated_at: Date.today)
        assert user.valid?
    end

    test 'invalid without username' do
        user = User.create(email: 'jovi@example.com')
        refute user.valid?, 'user is valid without a username'
        assert_not_nil user.errors[:username], 'no validation error for username present'
    end

    test 'invalid without email' do
        user = User.create(username: 'Jovi')
        refute user.valid?, 'user is valid without an email'
        assert_not_nil user.errors[:email]
    end

    # meant to fail
    test 'invalid without last_name' do
    end
end
