require 'merchant_converter'

RSpec.describe MerchantConverter, '#converter' do
  it 'should return the answer of how much is glob?' do
    m = MerchantConverter.new
    expect(m.convert('files/test1.txt')).to eq "glob is 1\n"
  end
  it 'should return the answer of how many Credits is glob prok Silver ?' do
    m = MerchantConverter.new
    expect(m.convert('files/test2.txt')).to eq "glob prok Silver is 68 Credits\n"
  end
  it 'should return "I have no idea what you are talking about"' do
    m = MerchantConverter.new
    expect(m.convert('files/test3.txt')).to eq "I have no idea what you are talking about\n"
  end
end