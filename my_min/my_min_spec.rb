require_relative 'my_min.rb'

describe '#my_min' do

hash = {:key1=>23, :key2=>42, :key3=>16, :key4 => 20, key5: 200}
  it 'should not return nil' do
    my_min(hash).should_not be_nil
  end

  it 'should return a key that points to the lowest value' do
    my_min(hash).should == :key3
  end



end
