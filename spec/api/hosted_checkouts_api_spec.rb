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

# Unit tests for BleumiPay::HostedCheckoutsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HostedCheckoutsApi' do
  before do
    # run before each test
    @api_instance = BleumiPay::HostedCheckoutsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HostedCheckoutsApi' do
    it 'should create an instance of HostedCheckoutsApi' do
      expect(@api_instance).to be_instance_of(BleumiPay::HostedCheckoutsApi)
    end
  end

  # unit tests for create_checkout_url
  # Generate a unique checkout URL to accept payment.
  # @param create_checkout_url_request Specify checkout URL creation parameters.
  # @param [Hash] opts the optional parameters
  # @return [CreateCheckoutUrlResponse]
  describe 'create_checkout_url test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_tokens
  # Retrieve all tokens configured for the Hosted Checkout in your account in the [Bleumi Pay Dashboard](https://pay.bleumi.com/app/).
  # @param [Hash] opts the optional parameters
  # @return [Array<CheckoutToken>]
  describe 'list_tokens test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_checkout_payment
  # Validate the GET parameters passed by Hosted Checkout in successUrl upon successfully completing payment.
  # @param validate_checkout_request Specify validation of checkout parameters.
  # @param [Hash] opts the optional parameters
  # @return [ValidateCheckoutResponse]
  describe 'validate_checkout_payment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
