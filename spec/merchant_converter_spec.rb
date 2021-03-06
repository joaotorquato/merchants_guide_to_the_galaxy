require 'spec_helper'

RSpec.describe MerchantConverter, '#converter' do
  it 'should return the answer of how much is glob?' do
    merchant_converter = MerchantConverter.new
    expect(merchant_converter.convert('spec/support/test1.txt'))
      .to eq "glob is 1\n"
  end
  it 'should return the answer of how many Credits is glob prok Silver ?' do
    merchant_converter = MerchantConverter.new
    expect(merchant_converter.convert('spec/support/test2.txt'))
      .to eq "glob prok Silver is 68 Credits\n"
  end
  it 'should return "I have no idea what you are talking about"' do
    merchant_converter = MerchantConverter.new
    expect(merchant_converter.convert('spec/support/test3.txt'))
      .to eq "I have no idea what you are talking about\n"
  end
  it 'should return full text' do
    merchant_converter = MerchantConverter.new
    expect(merchant_converter.convert('spec/support/final_test.txt'))
      .to eq "pish tegj glob glob is 42\n" \
      "glob prok Silver is 68 Credits\n" \
      "glob prok Gold is 57800 Credits\n" \
      "glob prok Iron is 782 Credits\n" \
      "I have no idea what you are talking about\n"
  end
end
