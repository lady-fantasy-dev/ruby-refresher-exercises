# You’re given a list of events.
# Each event has:
# 	•	user_id
# 	•	type (string)
# 	•	success (boolean)

# Return a hash that shows, per user, how many successful events they have.

# Assumptions:
	# •	user_id is always present
	# •	We only count events where success == true

# Expected output:
# {
#   1 => 2,
#   2 => 1
# }

# Example input
my_events = [
  { user_id: 1, type: "login", success: true },
  { user_id: 1, type: "login", success: false },
  { user_id: 2, type: "purchase", success: true },
  { user_id: 1, type: "purchase", success: true }
]

def count_success_per_user(events)
  result = Hash.new(0)

  events.each do |event|
    result[event[:user_id]] += 1 if event[:success]
  end

  result
end

# Inspect the output
p count_success_per_user(my_events)
# {1=>2, 2=>1}
