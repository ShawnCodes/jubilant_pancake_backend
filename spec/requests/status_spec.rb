require 'spec_helper'
require 'rest-client'

RSpec.describe 'Status requests' do
  describe 'GET /input' do
    it 'returns a status message' do
    RestClient.get('http://localhost:3000/api/v1/inputs') { |response, request, result, &block|
    expect(response.code).to eql(200)

}      end
    end
  end
