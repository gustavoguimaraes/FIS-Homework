require_relative 'my_min.rb'

describe '#return_hash_key_with_lowest_value' do
  hash = {:key1=>23, :key2=>42, :key3=>16, :key4 => 20, key5: 200}
  it 'should not return nil' do
    expect(return_hash_key_with_lowest_value(hash)).not_to be_nil
  end

  it 'should return a key that points to the lowest value' do
    expect(return_hash_key_with_lowest_value(hash)).to eq(:key3)
  end
end
