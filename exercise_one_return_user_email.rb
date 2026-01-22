# You’re given an array of users.
# Return the emails of active users only, lowercased.

# expected output: ["test@example.com"]

# Steps:
# Filter active user(s) first
# Transform email(s)


my_users = [
  { email: "TEST@EXAMPLE.COM", active: true },
  { email: "foo@bar.com", active: false }
]

def return_active_users(users_array)
  active_users = users_array.select do |user|
    true if user[:active]== true
  end

  user_email = active_users.map do |user|
    user[:email].strip.downcase
  end
end

# Test the code:
p return_active_users(my_users)

