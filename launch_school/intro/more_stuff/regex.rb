## regex
# =~ operator
p "powerball" =~ /b/

def has_a_b?(string)
  if string =~ /b/
    puts "YEAH, at index #{string =~ /b/}"
  else
    puts "No.."
  end
end

has_a_b?("yolo")
has_a_b?("mabeokroe")

# match method, returns a MatchData object. This can be used as a boolean also
p /b/.match("powerball")

def match_a_b?(string)
  if /b/.match(string)
    puts "YEAH"
  else
    puts "No.."
  end
end

match_a_b?("hello")
match_a_b?("youngblood")