=begin
#Bleumi Pay API

#A simple and powerful REST API to integrate ERC20 payments into your business or application

The version of the OpenAPI document: 1.0.0
Contact: info@bleumi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.0

=end

# Common files
require 'bleumi_pay_sdk_ruby/api_client'
require 'bleumi_pay_sdk_ruby/api_error'
require 'bleumi_pay_sdk_ruby/version'
require 'bleumi_pay_sdk_ruby/configuration'

# Models
require 'bleumi_pay_sdk_ruby/models/bad_request'
require 'bleumi_pay_sdk_ruby/models/eth_address'
require 'bleumi_pay_sdk_ruby/models/eth_network'
require 'bleumi_pay_sdk_ruby/models/paginated_wallet_operations'
require 'bleumi_pay_sdk_ruby/models/paginated_wallets'
require 'bleumi_pay_sdk_ruby/models/wallet'
require 'bleumi_pay_sdk_ruby/models/wallet_balance'
require 'bleumi_pay_sdk_ruby/models/wallet_create_input'
require 'bleumi_pay_sdk_ruby/models/wallet_create_output'
require 'bleumi_pay_sdk_ruby/models/wallet_inputs'
require 'bleumi_pay_sdk_ruby/models/wallet_operation'
require 'bleumi_pay_sdk_ruby/models/wallet_operation_inputs'
require 'bleumi_pay_sdk_ruby/models/wallet_operation_output'
require 'bleumi_pay_sdk_ruby/models/wallet_refund_operation_input'
require 'bleumi_pay_sdk_ruby/models/wallet_settle_operation_input'

# APIs
require 'bleumi_pay_sdk_ruby/api/erc20_payments_api'

module BleumiPay
  class << self
    # Customize default settings for the SDK using block.
    #   BleumiPay.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
