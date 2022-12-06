# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  describe 'GET /form' do
    it 'returns http success' do
      get form_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /output' do
    it 'returns http success' do
      get output_path, params: { num: Faker::Number.positive.to_i }
      expect(response).to have_http_status(:success)
    end
  end

  it 'expects to see Mersenne\'s numbers' do
    get output_path, params: { num: 150_000 }
    expect(assigns[:result_m]).to eq([3, 7, 31, 127, 8191, 131_071])
  end
end
