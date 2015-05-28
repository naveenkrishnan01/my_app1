require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  
  def setup
     @user = users(:naveen) 
  end	
  
  test "unsuccessful edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), user: {email: "foo@invalid",
                                   password: "foo",
                                   password_confirmation: "bar" }
    assert_template 'users/edit'                               
  end

  test "successful edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    email = "foo@bar.com"
    patch user_path(@user), user: { 
                                    email: email,
                                    password:              "",
                                    password_confirmation: "" }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal email, @user.email
  end
end