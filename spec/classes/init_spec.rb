require 'spec_helper'
describe 'couchpotato' do

  context 'with defaults for all parameters' do
    it { should contain_class('couchpotato') }
  end
end
