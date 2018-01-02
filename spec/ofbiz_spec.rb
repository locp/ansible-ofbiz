require_relative 'spec_helper'

describe 'ofbiz role' do
  describe user('ofbiz') do
    it {
      should exist
      should belong_to_primary_group 'ofbiz'
    }
  end

  describe package('openjdk-8-jdk-headless') do
    it { should be_installed }
  end

  describe file('/home/ofbiz/apache-ofbiz-16.11.03/LICENSE') do
    it {
      should be_file
      should be_owned_by 'ofbiz'
      should be_grouped_into 'ofbiz'
    }
  end

  describe service('ofbiz') do
    it {
      should be_enabled
      should be_running
    }
  end
end
