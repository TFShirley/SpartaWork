require "mac/say"
def bmi_result bmi
  if (bmi <= 18.5)
    Mac::Say.say "Don't waste away!"
  elsif (bmi >= 25.0)
    Mac::Say.say "Lay off the snacks!"
  end
end

puts "(b)asic, (a)dvanced or b(m)i?"
mode = gets.chomp.to_s

if (mode == "b")
  puts "You chose Basic. You can do addition, subtraction, multiplication and division here."
  puts "Enter your first number"
  num1 = gets.chomp.to_i
  puts "Enter your second number"
  num2 = gets.chomp.to_i
  puts "What operation do you want to use?"
  puts "(a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision"
  operation = gets.chomp.to_s

  if (operation == "a")
    ans = num1 + num2
    puts "#{num1} + #{num2} = #{ans}"
  elsif (operation == "s")
    ans = num1 - num2
    puts "#{num1} - #{num2} = #{ans}"
  elsif (operation == "m")
    ans = num1 * num2
    puts "#{num1} x #{num2} = #{ans}"
  elsif (operation == "d")
    ans = num1 / num2.to_f
    puts "#{num1} / #{num2} = #{ans}"
  else
    puts "Did not recognise :S"
  end

elsif (mode == "a")
  puts "You chose Advanced. You can do power and square root here."
  puts "Enter your first number"
  num1 = gets.chomp.to_i
  puts "What operation do you want to use?"
  puts "(p)ower or (s)quare root"
  operation = gets.chomp.to_s

  if (operation == "p")
    puts "Enter your second number"
    num2 = gets.chomp.to_i
    ans = num1 ** num2
    puts "#{num1} ^ #{num2} = #{ans}"
  elsif (operation == "s")
    ans = Math.sqrt(num1).to_f
    puts "The square root of #{num1} is #{ans}"
  else
    puts "Did not recognise :S"
  end

elsif (mode == "m")
  puts "You chose BMI Calculator."
  puts "Would you like to calculate using the (i)mperial or (m)etric system?"
  operation = gets.chomp.to_s

  if (operation == "i")
    puts "You chose Imperial."
    puts "Please enter your weight in pounds (lb)"
    weight = gets.chomp.to_f
    puts "Please enter your height in inches (in)"
    height = gets.chomp.to_f
    bmi = (weight / (height ** 2)) * 703
    puts "Your BMI is #{bmi}"
    bmi_result bmi
  elsif (operation == "m")
    puts "You chose Metric."
    puts "Please enter your weight in kilograms (kg)"
    weight = gets.chomp.to_f
    puts "Please enter your height in metres (m)"
    height = gets.chomp.to_f
    bmi = weight / (height ** 2)
    puts "Your BMI is #{bmi}"
    bmi_result bmi
  else
    puts "Did not recognise :S"
  end
  
else
  puts "Did not recognise :S"
end
