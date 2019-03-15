require 'selenium-webdriver'

describe 'Testing the Sparta Global Registration Page' do

  before(:all) do
    @registration_service = SpartaRegistration.new
    @registration_service.visit_registration_site
    @data = DataGenerator.new
    @firstname = @data.get_firstname
    @lastname = @data.get_lastname
    @date_of_birth = @data.get_birthday
    @age = @data.get_age
    @gender = @data.get_gender
    @text = "WAHOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOooooooooooooooooo"
    # @text = 'male'
    # @email
    # @linkedIn
  end

  it "should land on the registration page" do
    expect(@registration_service.get_current_url).to eq @registration_service.registration_url
  end

  it "should accept first name" do
    @registration_service.input_first_name_field(@firstname)
    expect(@registration_service.get_first_name_field).to eq @firstname
  end

  it "should accept last name" do
    @registration_service.input_last_name_field(@lastname)
    expect(@registration_service.get_last_name_field).to eq @lastname
  end

  it "should accept age" do
    @registration_service.input_age(@age)
    expect(@registration_service.get_age).to eq @age.to_s
  end

  it "should accept date of birth" do
    @registration_service.input_date_of_birth(@date_of_birth)
    expect(@registration_service.get_date_of_birth).to eq @date_of_birth
  end

  it "should select a gender" do
    @registration_service.select_gender(@gender)
    expect(@registration_service.is)
  end

  it "should input degree" do
    @registration_service.input_degree(@text)
    expect(@registration_service.get_degree).to eq @text
  end

  it "should select a University" do
    @registration_service.select_university
    expect(@registration_service.is_a_university_selected).to be true
  end

  it "should accept address*" do
    @registration_service.input_address(@text)
    expect(@registration_service.get_address).to eq @text
  end

  it "should accept address2" do
    @registration_service.input_address_2(@text)
    expect(@registration_service.get_address_2).to eq @text
  end

  it "should accept city" do
    @registration_service.input_city(@text)
    expect(@registration_service.get_city).to eq @text
  end

  it "should select a County" do
    @registration_service.select_county
    expect(@registration_service.is_county_selected).to be true
  end

  it "should input postcode" do
    @registration_service.input_postcode(@text)
    expect(@registration_service.get_postcode).to eq @text
  end

  it "should return input email" do
    @registration_service.input_email(@text)
    expect(@registration_service.input_email).to eq @text
  end

  it 'should return input skills' do
    pending
  end

  it 'should return phone number' do
    pending
  end

  it 'should return linkedIn URL' do
    pending
  end

  it 'should be able to upload file' do
    pending
  end

  it 'should accept SDET for stream' do
    pending
  end

  it 'should accept DevOps for stream' do
    pending
  end

  it 'should accept agree to terms and conditions' do
    pending
  end

  it 'should slide the experince from 0-100' do
    pending
  end

  it 'should sign in the application' do
    pending
  end

end
