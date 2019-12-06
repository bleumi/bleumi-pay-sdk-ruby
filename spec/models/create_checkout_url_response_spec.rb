=begin
#Bleumi Pay API

#A simple and powerful REST API to integrate ERC-20, Ethereum, xDai payments and/or payouts into your business or application

The version of the OpenAPI document: 1.0.0
Contact: info@bleumi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BleumiPay::CreateCheckoutUrlResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CreateCheckoutUrlResponse' do
  before do
    # run before each test
    @instance = BleumiPay::CreateCheckoutUrlResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateCheckoutUrlResponse' do
    it 'should create an instance of CreateCheckoutUrlResponse' do
      expect(@instance).to be_instance_of(BleumiPay::CreateCheckoutUrlResponse)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
