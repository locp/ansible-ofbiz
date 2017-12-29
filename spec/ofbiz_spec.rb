require_relative 'spec_helper'

describe 'ofbiz role' do
  describe user('ofbiz') do
    it { should exist }
    it { should belong_to_primary_group 'ofbiz' }
  end
end
