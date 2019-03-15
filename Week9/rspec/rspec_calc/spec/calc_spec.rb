require 'spec_helper'

describe 'Testing basic calculator functions' do
  before(:all) do
    @calc = Calc.new
  end

  # add
  it "should add two numbers" do
    expect(@calc.add(7, 4)).to eq 11
    expect(@calc.add(7, -4)).to eq 3
    expect(@calc.add(7, 4)).to be_kind_of Integer
    expect(@calc.add(7, 4.0)).to be_kind_of Float

  end

  # subtract
  it "should subtract two numbers" do
    expect(@calc.subtract(7, 4)).to eq 3
    expect(@calc.subtract(7, -4)).to eq 11
    expect(@calc.subtract(7, 4)).to be_kind_of Integer
    expect(@calc.subtract(7, 4.0)).to be_kind_of Float
  end

  # multiply
  it "should multiply two numbers" do
    expect(@calc.multiply(7, 4)).to eq 28
    expect(@calc.multiply(7, -4)).to eq -28
    expect(@calc.multiply(7, 4)).to be_kind_of Integer
    expect(@calc.multiply(7, 4.0)).to be_kind_of Float
  end

  # divide
  it "should divide two numbers" do
    expect(@calc.divide(8, 2)).to eq 4
    expect(@calc.divide(8, -2)).to eq -4
    expect(@calc.divide(8, 2)).to be_kind_of Integer
    expect(@calc.divide(8, 2.0)).to be_kind_of Float
  end
end
