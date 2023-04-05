require 'rails_helper'

RSpec.describe MoviesController, type: :request do
  describe 'GET /movies' do
    context 'when no filters are applied' do
      before { get '/movies' }

      it 'returns a 200 OK status' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns all movies' do
        expect(JSON.parse(response.body).size).to eq(Movie.count)
      end
    end

    context 'when filters are applied' do
      let!(:movie_1) { create(:movie, title: 'Movie 1', description: 'foo', release_year: 2010) }
      let!(:movie_2) { create(:movie, title: 'Movie 2', description: 'bar', release_year: 2020) }

      before { get '/movies', params: { release_year: 2020 } }

      it 'returns a 200 OK status' do
        expect(response).to have_http_status(:ok)
      end

      it 'returns only movies matching the filters' do
        expect(JSON.parse(response.body).size).to eq(1)
        expect(JSON.parse(response.body).first['title']).to eq('Movie 2')
      end
    end
  end
end

