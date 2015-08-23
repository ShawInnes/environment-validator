require 'spec_helper'

describe 'Developer Tools' do
  describe package('Microsoft Visual Studio Enterprise 2015') do
    it { should be_installed }
  end

  describe package('JetBrains ReSharper Ultimate in Visual Studio 2015') do
    it { should be_installed }
  end

  describe package('JetBrains dotCover 3.1.2') do
    it { should be_installed }
  end

  describe package('JetBrains dotMemory 4.3.2') do
    it { should be_installed }
  end

  describe package('JetBrains dotPeek 1.4.2') do
    it { should be_installed }
  end

  describe package('JetBrains dotTrace 6.1.2') do
    it { should be_installed }
  end

  describe package('LINQPad 4') do
    it { should be_installed }
  end
end
