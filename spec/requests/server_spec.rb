# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Servers', type: :request do
  describe 'GET /result in xml' do
    context 'with valid params' do
      before { get server_result_path, params: { number: 3, string_array: '1 4 16' } }

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end
      
      it 'responds with xml' do
        expect(response.content_type).to eq('application/xml; charset=utf-8')
      end
    end
  end
end
