require 'spec_helper'

describe Movie do

  describe "All rating for movies" do
    it "return all valid ratings" do
      Movie.all_ratings.should == ["G", "PG", "PG-13", "NC-17", "R"]
    end
  end

  describe 'find movies with the same director' do
    it 'should search for similar movies' do
      Movie.should_receive(:find_all_by_director).with('George Lucas')
      Movie.find_by_director('George Lucas')
    end
  end

end