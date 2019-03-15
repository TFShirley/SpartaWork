require 'spec_helper'

# test data
valid_user = 'rwhitehouse@spartaglobal.com'
valid_pass = 'Password123'

invalid_username = 'robwhitehouse@email.com'
invalid_password = 'password123456789'

short_password = '1234'
weak_password = 'password'

missing_details_error = "Something's missing. Please check and try again."
password_incorrect_error = 'Uh oh, that password doesn’t match that account. Please try again.'
password_short_error = 'Sorry, that password is too short. It needs to be eight characters or more.'
username_incorrect_error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
password_weak_error = "Sorry, that password isn't valid. Please include something that isn't a letter."

describe 'BBC Login page functionality' do

  before(:all) do
    @bbcsite = BBCSite.new
  end

  # Error Tests
  context 'it should respond with the correct error when incorrect details are input' do

    before(:each) do
      @bbcsite = BBCSite.new
      @bbcsite.bbc_homepage.visit_homepage
      @bbcsite.bbc_homepage.click_sign_in
    end

    it "should display an error for blank username & password" do
      @bbcsite.bbc_sign_in_page.click_sign_in
      expect(@bbcsite.bbc_sign_in_page.find_username_error).to eq missing_details_error
      expect(@bbcsite.bbc_sign_in_page.find_password_error).to eq missing_details_error
    end

    it "should display an error for an incorrect username" do
      @bbcsite.bbc_sign_in_page.fill_in_username invalid_username
      @bbcsite.bbc_sign_in_page.fill_in_password valid_user
      @bbcsite.bbc_sign_in_page.click_sign_in
      expect(@bbcsite.bbc_sign_in_page.find_username_error).to eq username_incorrect_error
    end

    it "should display an error for an incorrect password" do
      @bbcsite.bbc_sign_in_page.fill_in_username valid_user
      @bbcsite.bbc_sign_in_page.fill_in_password invalid_password
      @bbcsite.bbc_sign_in_page.click_sign_in
      expect(@bbcsite.bbc_sign_in_page.find_password_error).to eq password_incorrect_error
    end

    it "should display an error for a short password" do
      @bbcsite.bbc_sign_in_page.fill_in_username valid_user
      @bbcsite.bbc_sign_in_page.fill_in_password short_password
      @bbcsite.bbc_sign_in_page.click_sign_in
      expect(@bbcsite.bbc_sign_in_page.find_password_error).to eq password_short_error
    end

    it "should display an error for a weak password" do
      @bbcsite.bbc_sign_in_page.fill_in_username valid_user
      @bbcsite.bbc_sign_in_page.fill_in_password weak_password
      @bbcsite.bbc_sign_in_page.click_sign_in
      expect(@bbcsite.bbc_sign_in_page.find_password_error).to eq password_weak_error
    end
  end

  context 'it should allow the user to login with valid details' do

    it "should perform a login happy path" do
      @bbcsite = BBCSite.new
      # Visit Homepage
      @bbcsite.bbc_homepage.visit_homepage
      expect(@bbcsite.bbc_homepage.current_url).to eq 'https://www.bbc.co.uk/'
      # Click Sign In link
      @bbcsite.bbc_homepage.click_sign_in
      # Enter details
      @bbcsite.bbc_sign_in_page.fill_in_username valid_user
      @bbcsite.bbc_sign_in_page.fill_in_password valid_pass
      # Click Submit
      @bbcsite.bbc_sign_in_page.click_sign_in
      expect(@bbcsite.bbc_homepage.sign_in_link_text).to eq 'Your account'
    end
  end

end
