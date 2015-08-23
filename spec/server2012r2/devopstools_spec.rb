require 'spec_helper'

describe 'DevOps Tools' do
  describe package('Chef Development Kit v0.6.2') do
    it { should be_installed }
  end
end
