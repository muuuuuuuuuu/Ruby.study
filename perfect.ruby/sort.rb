a = %w(Bob Alice Charlie)
print a.sort
["Alice", "Bob", "Charlie"]

print a.sort_by { |name| name.length }
["Bob", "Alice", "Charlie"]
