require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(email: "test@example.com", password: "foobar", password_confirmation: "foobar")
  end

  
    test "email validation" do
        assert @user.email
   end

    test "email should be present" do
        @user.email = "  "
        assert_not @user.valid?
    end

    test "email maximum length" do
        @user.email = "a" * 25
        assert @user.email
    end

    test "password should have a minimum lengthc" do
        @user.password = @user.password_confirmation = "a" * 5
        assert_not @user.valid?
    end
 end

