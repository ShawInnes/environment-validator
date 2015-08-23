require 'spec_helper'

describe 'Internet Information Server (IIS)' do
  describe iis_app_pool('api.serenityone.com') do
    it { should exist }
    it { should have_dotnet_version '4.0' }
  end

  describe iis_website('api.serenityone.com') do
    it { should exist }
    it { should be_enabled }
    it { should be_running }
    it { should be_in_app_pool 'api.serenityone.com' }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe file('c://inetpub//wwwroot') do
    it { should be_directory }
    # it { should be_readable }
    # it { should_not be_writable.by('Everyone') }
  end
end
