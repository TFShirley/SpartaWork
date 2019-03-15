require 'faker'

class DataGenerator

  # Prefix
  def get_prefix
    Faker::Name.prefix
  end

  # First Name
  def get_firstname
    Faker::Name.first_name.capitalize
  end

  # Middle Name
  def get_middlename
    Faker::Name.middle_name.capitalize
  end

  # Last Name
  def get_lastname
    Faker::Name.last_name.capitalize
  end

  # Suffix
  def get_suffix
    Faker::Name.suffix
  end

  # Gender (Binary)
  def get_gender
    Faker::Gender.binary_type
  end

  # Gender (Non-binary)
  def get_gender_nonbinary
    Faker::Gender.type
  end

  # Age
  def get_age
    Date.today.year - get_birthday.year
  end

  # Birthday
  def get_birthday
    Faker::Date.birthday
  end

  # Marital Status
  def get_marital_status
    Faker::Demographic.marital_status
  end

  # City
  def get_city
    Faker::Address.city
  end

  # Phone Number
  def get_phone_number
    Faker::Confic.locale = 'en-GB'
    Faker::PhoneNumber.cell_phone.gsub(' ','')
  end

  # Email Address
  def get_email
    Faker::Internet.free_email(get_firstname)
  end


end
