require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:movie) { FactoryBot.create(:movie) }
  
  describe "validations" do
    it "is valid with valid attributes" do
      expect(movie).to be_valid
    end

    it "is not valid with a duplicate title and description" do
      duplicate_movie = FactoryBot.build(:movie, title: movie.title, description: movie.description)
      expect(duplicate_movie).not_to be_valid
    end
  end
end
