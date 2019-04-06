require 'English'

begin
  raise NoMethodError, 'an error has occurred'
rescue NoMethodError => e
  puts "#{e.class}: #{e.message}"
end

puts "\n"

begin
  3 / 0
rescue ZeroDivisionError => e
  puts "#{e.class}: #{e.message}"
end

begin
  'string'.odd?
rescue NoMethodError => e
  puts "#{e.class}: #{e.message}"
end

# Using special variables
begin
  'string'.odd?
rescue NoMethodError => e
  puts "#{$!.class}: #{$!.message}"
  $@.each { |loc| puts loc }
end

# retry
puts "\n"
i = 0

begin
  i += 1
  puts "retry ##{i}"

  raise RuntimeError
rescue RuntimeError => e
  retry if i < 3
end

# Custom errors
class PolicyError < Exception
end

class UserPolicyError < PolicyError
end

begin
  raise PolicyError, 'access not granted!'
rescue PolicyError => policy_error
  puts "#{policy_error.class}: #{policy_error.message}"
end

begin
  raise UserPolicyError, 'user unauthorized'
rescue UserPolicyError => user_policy_error
  puts "#{user_policy_error.class}: #{user_policy_error.message}"
end

class NotAnError
end

raise NotAnError
