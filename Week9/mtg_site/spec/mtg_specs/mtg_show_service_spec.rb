require 'spec_helper'

describe 'MtgAPI' do

  before(:all) do
    @api_call = MtgAPI.new
    @mtg = @api_call.mtg_show_service.get_card(rand(1..25))
  end

  context "basic data types" do

    it "should respond with an array" do
      expect(@card).to be_kind_of Array
    end

    it "should contain 1 beer as a Hash" do
      expect(@card[0].class).to be Hash
      expect(@card.length).to eq 1
    end

  end
end
