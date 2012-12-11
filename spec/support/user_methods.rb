def given_user
  @user ||= User.create!(name: "test_user", email: "test_user@example.com", password: "password")
end