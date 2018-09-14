require 'spec_helper'
describe 'composer' do
  context 'with default values for all parameters' do
    it { should contain_class('composer') }
  end
end
