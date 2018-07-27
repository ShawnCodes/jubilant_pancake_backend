require_relative '../app/methods.rb'

RSpec.describe 'Test Levinshtein' do
  describe 'Levinshtein test' do
    it 'returns an output' do
      expect(levenshtein("water", "rater")).to eql(1)
    end
  end
end

RSpec.describe 'Test Levinshtein' do
  describe 'Levinshtein test' do
    it 'returns an output' do
      expect(levenshtein("hello", "jello")).to eql(1)
    end
  end
end

RSpec.describe 'Test Levinshtein' do
  describe 'Levinshtein test' do
    it 'returns an output' do
      expect(levenshtein("water", "")).to eql(5)
    end
  end
end
