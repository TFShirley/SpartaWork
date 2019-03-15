require 'rspec'

Before do
  @users = ['Rob', 'Ash', 'Zac', 'Tom', 'Louis', 'Jozef', 'Yinka', 'Ayman']
end

After do
  puts 'The test has finished!'
end

Before('@test1') do
  puts 'This is only for test 1.......'
end
