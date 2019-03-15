def calc_bmi height, weight
  (weight / (height ** 2)).to_f
end

def calc_bmr sex, height, weight, age
  if sex.downcase == "male"
    bmr = 66.47 + (13.7 * weight) + (5 * height * 100) - (6.8 * age)
  else
    bmr = 655.1 + (9.5 * weight) + (1.85 * height * 100) - (4.6 * age)
  end
  bmr
end

# Person 1
person_one_name = "jim"
person_one_sex = "male"
person_one_age = 27
person_one_height = 2.00
person_one_weight = 85.00

person1 = {
  name: "jim",
  sex: "male",
  age: 27,
  height: 2.00,
  weight: 85.00
}

puts "#{person1[:name]} has a BMI of #{calc_bmi person1[:height], person1[:weight]}; their recommended calorie intake is #{calc_bmr person1[:sex], person1[:height], person1[:weight], person1[:age]} calories"
