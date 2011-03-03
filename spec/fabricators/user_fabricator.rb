Fabricator(:user) do
  email "test@example.com"
  password "password"
  password_confirmation "password"
  
  after_create { |user| user.confirm! }
end