# You’re given a list of API requests.
# Each request has:
# 	•	id
# 	•	status ("success" or "failed")
# 	•	response_time (milliseconds)
# 1. Write a method that returns true if any request failed, otherwise false.
# 2. Write a method that returns the first failed request, or nil if none failed.

# Input:
my_requests = [
  { id: 1, status: "success", response_time: 120 },
  { id: 2, status: "success", response_time: 98 },
  { id: 3, status: "failed",  response_time: 500 },
  { id: 4, status: "success", response_time: 110 }
]

# Expected outputs:
# any_failed?(requests)
# => true

# first_failed_request(requests)
# => { id: 3, status: "failed", response_time: 500 }

def any_failed?(requests)
  requests.any? { |request| request[:status] == "failed" }
end

def first_failed_request(requests)
  requests.find { |request| request[:status] == "failed" }
end

# Inspect the output:
p any_failed?(my_requests)
p first_failed_request(my_requests)
