require 'spec_helper'

describe Forgery::Name do
  let(:dictionaries) { Forgery::Dictionaries.new }

  describe ".university" do
    it "there should be a 'university' dictionary" do
      dictionaries[:universities].should_not be_empty
    end

    it "should return a sample from universities dictionary" do
      dictionaries[:universities].include?(Forgery::Name.university).should be_true
    end
  end

  describe "degree" do
    %w(academic_degrees fields_of_study).each do | name |
      it "there should be a '#{name}' dictionary" do
        dictionaries[name.to_sym].should_not be_empty
      end
    end

    it "should happy pass" do
      Forgery::Name.degree.should_not be_empty
    end
  end
end
