require 'spec_helper'
require 'fizzbuzz'

describe 'FizzBuzz#convert' do
  subject { FizzBuzz.new }

  context '3の倍数の場合' do
    [3,6].each do |num|
      it "Fizzを返す_例#{num}" do
        expect( subject.convert(num) ).to eq 'Fizz'
      end
    end
  end

  context '5の倍数の場合' do
    [5,10].each do |num|
      it "Buzzを返す_例#{num}" do
        expect( subject.convert(num) ).to eq 'Buzz'
      end
    end
  end

  context '3 or 5の倍数の場合' do
    [15,30].each do |num|
      it "Buzzを返す_例#{num}" do
        expect( subject.convert(num) ).to eq 'FizzBuzz'
      end
    end
  end
end
