require 'spec_helper'

describe 'Developer Tools' do
  describe package('Octopus Deploy Server') do
    it { should be_installed }
  end

  describe package('Octopus Deploy Tentacle') do
    it { should be_installed }
  end
end
