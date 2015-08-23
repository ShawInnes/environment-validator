require 'spec_helper'

describe 'RabbitMQ Server' do
  describe service('RabbitMQ') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
    it { should have_start_mode('Automatic') }
  end

  describe package('RabbitMQ') do
    it { should be_installed }
  end

  describe port(5672) do
    it { should be_listening.with('tcp') }
  end

  describe port(15_672) do
    it { should be_listening.with('tcp') }
  end
end
