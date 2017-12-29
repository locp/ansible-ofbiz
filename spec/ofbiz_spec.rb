require_relative 'spec_helper'

describe 'ofbiz role' do
  describe user('ofbiz') do
    it { should exist }
    it { should belong_to_primary_group 'ofbiz' }
  end

  describe package('openjdk-8-jdk-headless') do
    it { should be_installed }
  end
end
