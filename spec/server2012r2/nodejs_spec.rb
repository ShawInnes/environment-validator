require 'spec_helper'

describe 'NodeJs' do
  nodejs = 'c:/program files/nodejs/node.exe'

  describe file(nodejs) do
    it { should be_file }
    it { should be_version('0.12.4') }
    its(:md5sum) { should eq 'e05e5562864f2c914259ff562fa51be4' }
  end

  # describe command("Get-FileHash -Path \"#{nodejs}\"") do
  #  its(:stdout) { should match /1D8F8EB77A710EDA6A6A8703BC8345809A4AE6DF7C90A99B3E115C8D94FE855E/ }
  # end
end
