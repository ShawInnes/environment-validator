require 'spec_helper'

describe 'Local User Configuration' do
  describe user('shaw.innes') do
    it { should exist }
    it { should belong_to_group('Administrators') }
  end
end
