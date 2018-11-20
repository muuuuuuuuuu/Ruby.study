def block_sample
  puts "stand up"
  yield
  puts "sit down"
end

block_sample do
  puts "wolk"
end
stand up
wolk(yieldでwolkが呼び出された)
sit down
-----------------------------------------
def with_current_time
  yield Time.now
end

with_current_time do |now|
  puts now.year
end
2018
--------------------------------------
