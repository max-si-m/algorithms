require 'spec_helper'

describe Algorithms::Sorting::Bubble do
  let(:bubble) { Algorithms::Sorting::Bubble }

  it 'raise error when passed empty array' do
    expect{ bubble.perform([]) }.to raise_error(Algorithms::DataError)
  end

  it 'raise error when passed nil value' do
    expect{ bubble.perform(nil) }.to raise_error(Algorithms::DataError)
  end

  it 'when passes only one element' do
    expect(bubble.perform([1])).to eq [1]
  end

  it 'correct number sorting' do
    expect(bubble.perform([1, 3, 2, 10, 15, 11])).to eq [1, 2, 3, 10, 11, 15]
  end

  it 'correct negative number sorting' do
    expect(bubble.perform([-3, 2, -10, 15, 11])).to eq [-10, -3, 2, 11, 15]
  end

  it 'correct letters sorting' do
    expect(bubble.perform(['a', 'm', 'f', 's', 'e'])).
      to eq ["a", "e", "f", "m", "s"]
  end
end