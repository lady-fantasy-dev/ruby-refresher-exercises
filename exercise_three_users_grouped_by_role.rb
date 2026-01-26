# Write a method that returns a hash grouped by user role, where:
# 	•	only active users are included
# 	•	emails are normalized (lowercased + stripped)
# 	•	each role maps to an array of emails
# 	•	roles with no active users are not included

# Input:
my_users = [
  { id: 1, email: "ADMIN@EXAMPLE.COM ", role: "admin", active: true },
  { id: 2, email: "user1@test.com", role: "user", active: true },
  { id: 3, email: "user2@test.com", role: "user", active: false },
  { id: 4, email: "editor@test.com", role: "editor", active: true }
]

# Expected output:
# {
#   "admin"  => ["admin@example.com"],
#   "user"   => ["user1@test.com"],
#   "editor" => ["editor@test.com"]
# }

def get_user_emails_by_role(users)
	result = Hash.new { |h, k| h[k] = [] }

	users.each do |user|
		next unless user[:active]
		normalized_email = user[:email].strip.downcase
		result[user[:role]] << normalized_email
	end

	result
end

# Inspect the output
p get_user_emails_by_role(my_users)
