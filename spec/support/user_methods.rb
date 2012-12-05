def given_user
  @user ||= User.create!(email: "test@example.com", password: "password")
end