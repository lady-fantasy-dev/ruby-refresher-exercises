# Write a method that returns the most recent successful request.
# If there are no successful requests, return nil.
# Each request has:
# 	•	id
# 	•	status ("success" or "failed")
# 	•	response_time (ms)
# 	•	created_at (integer timestamp)

# Expected output
# { id: 3, status: "success", response_time: 150, created_at: 300 }

my_requests = [
  { id: 1, status: "success", response_time: 120, created_at: 100 },
  { id: 2, status: "failed",  response_time: 300, created_at: 200 },
  { id: 3, status: "success", response_time: 150, created_at: 300 },
  { id: 4, status: "success", response_time: 90,  created_at: 250 }
]

def find_newest_successful_request(requests)
  requests
          .select { |req| req[:status] == "success" }
          .max_by { |successful_req| successful_req[:created_at] }
end

# Inspect the output:
p find_newest_successful_request(my_requests)
