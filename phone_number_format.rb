# You are for a customer support center and have been asked to help update the company's extensive phone directory.
# In order to check which phone numbers are still valid and which need updating, you need to write a short program that:
# • Checks wether a phone number (given as string str) in the database is in the format (XXX) XXX-XXXX. And then
# • If the number is in the correct format, returns it as a continues
# 10-digit string (called convert_number )
# • If the number is not in the correct format, returns "No"
# Take the following into account:
# • 1 <= |str| <= 100
# Example 1: Input: (123) 456-7890 => Output: 1234567890

# pseudocode:
# 1. check phone number format, e.g. by regex or by checking the index of the parentheses
# 2. if the format is correct, return the number without any spaces, dashes, or parentheses
# 3. if not correct, return no


def convert_number(str)
  if str.match(/^\(\d{3}\)\s\d{3}-\d{4}\z/)
    return str.gsub(/[\(\)\s\-]/, "")
  else
    return "No"
  end
end

# Inspect the output
p convert_number("(123) 456-7890")
p convert_number("(123) 456-7890 hello")
