require 'spec_helper'

describe 'Seq Server' do
  describe package('Seq') do
    it { should be_installed }
  end

  describe service('Seq') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
    it { should have_start_mode('Automatic') }
  end

  describe port(5341) do
    it { should be_listening.with('tcp') }
  end
end
