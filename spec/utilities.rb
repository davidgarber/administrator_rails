def sign_in_user(user)
  visit '/'
  click_on 'Sign up'
  fill_in "Email", with: "test@test.com"
  fill_in "Password", with: "12345678"
  fill_in "Password confirmation", with: "12345678"
  click_button "Sign up"
end
