=begin
#Bleumi Pay REST API

#A simple and powerful REST API to integrate ERC-20, Ethereum, xDai, Algorand payments and/or payouts into your business or application

The version of the OpenAPI document: 1.0.0
Contact: info@bleumi.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module BleumiPay
  class PaymentsApi
    attr_accessor :api_client
    attr_accessor :request_validator

    def initialize(api_client = ApiClient.default, request_validator = RequestValidator.default)
      @api_client = api_client
      @request_validator = request_validator
    end
    # Generate a unique wallet address in the specified network to accept payment
    # @param create_payment_request [CreatePaymentRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Chain] :chain Network in which payment is to be created. Please refer documentation for Supported Networks
    # @return [CreatePaymentResponse]
    def create_payment(create_payment_request, opts = {})
      data, _status_code, _headers = create_payment_with_http_info(create_payment_request, opts)
      data
    end

    # Generate a unique wallet address in the specified network to accept payment
    # @param create_payment_request [CreatePaymentRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Chain] :chain Network in which payment is to be created. Please refer documentation for Supported Networks
    # @return [Array<(CreatePaymentResponse, Integer, Hash)>] CreatePaymentResponse data, response status code and response headers
    def create_payment_with_http_info(create_payment_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.create_payment ...'
      end
      # verify the required parameter 'create_payment_request' is set
      if @api_client.config.client_side_validation && create_payment_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_payment_request' when calling PaymentsApi.create_payment"
      end

      # verify the values in the request body are valid
      chain = opts[:'chain'] if !opts[:'chain'].nil?
      msg = @request_validator.validate_create_payment_request(create_payment_request, chain)
      if (@request_validator.is_not_empty(msg))
        fail ArgumentError, "`#{msg}` when calling PaymentsApi.create_payment"
      end

      # resource path
      local_var_path = '/v1/payment'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'chain'] = chain

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_payment_request) 

      # return_type
      return_type = opts[:return_type] || 'CreatePaymentResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#create_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the wallet addresses & token balances for a given payment
    # @param id [String] Unique identifier of the payment (specified during createPayment) to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def get_payment(id, opts = {})
      data, _status_code, _headers = get_payment_with_http_info(id, opts)
      data
    end

    # Retrieve the wallet addresses &amp; token balances for a given payment
    # @param id [String] Unique identifier of the payment (specified during createPayment) to retrieve
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Integer, Hash)>] Payment data, response status code and response headers
    def get_payment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.get_payment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.get_payment"
      end
      # resource path
      local_var_path = '/v1/payment/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Payment' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#get_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a payment operation for a specific payment.
    # @param id [String] Unique identifier of the payment (specified during [Create a Payment](#createPayment))
    # @param txid [String] ID of a specific operation of the payment
    # @param [Hash] opts the optional parameters
    # @return [PaymentOperation]
    def get_payment_operation(id, txid, opts = {})
      data, _status_code, _headers = get_payment_operation_with_http_info(id, txid, opts)
      data
    end

    # Retrieve a payment operation for a specific payment.
    # @param id [String] Unique identifier of the payment (specified during [Create a Payment](#createPayment))
    # @param txid [String] ID of a specific operation of the payment
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentOperation, Integer, Hash)>] PaymentOperation data, response status code and response headers
    def get_payment_operation_with_http_info(id, txid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.get_payment_operation ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.get_payment_operation"
      end
      # verify the required parameter 'txid' is set
      if @api_client.config.client_side_validation && txid.nil?
        fail ArgumentError, "Missing the required parameter 'txid' when calling PaymentsApi.get_payment_operation"
      end
      # resource path
      local_var_path = '/v1/payment/{id}/operation/{txid}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'txid' + '}', CGI.escape(txid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PaymentOperation' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#get_payment_operation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all payment operations for a specific payment.
    # @param id [String] Unique identifier of the payment (specified during [Create a Payment](#createPayment))
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Cursor to start results from
    # @return [PaginatedPaymentOperations]
    def list_payment_operations(id, opts = {})
      data, _status_code, _headers = list_payment_operations_with_http_info(id, opts)
      data
    end

    # Retrieve all payment operations for a specific payment.
    # @param id [String] Unique identifier of the payment (specified during [Create a Payment](#createPayment))
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Cursor to start results from
    # @return [Array<(PaginatedPaymentOperations, Integer, Hash)>] PaginatedPaymentOperations data, response status code and response headers
    def list_payment_operations_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.list_payment_operations ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.list_payment_operations"
      end
      # resource path
      local_var_path = '/v1/payment/{id}/operation'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PaginatedPaymentOperations' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#list_payment_operations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all payments created.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Cursor to start results from
    # @option opts [String] :sort_by Sort payments by
    # @option opts [String] :sort_order Sort Order
    # @option opts [String] :start_at Get payments from this timestamp (unix)
    # @option opts [String] :end_at Get payments till this timestamp (unix)
    # @return [PaginatedPayments]
    def list_payments(opts = {})
      data, _status_code, _headers = list_payments_with_http_info(opts)
      data
    end

    # Retrieve all payments created.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Cursor to start results from
    # @option opts [String] :sort_by Sort payments by
    # @option opts [String] :sort_order Sort Order
    # @option opts [String] :start_at Get payments from this timestamp (unix)
    # @option opts [String] :end_at Get payments till this timestamp (unix)
    # @return [Array<(PaginatedPayments, Integer, Hash)>] PaginatedPayments data, response status code and response headers
    def list_payments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.list_payments ...'
      end
      allowable_values = ["createdAt", "updatedAt"]
      if @api_client.config.client_side_validation && opts[:'sort_by'] && !allowable_values.include?(opts[:'sort_by'])
        fail ArgumentError, "invalid value for \"sort_by\", must be one of #{allowable_values}"
      end
      allowable_values = ["ascending", "descending"]
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !allowable_values.include?(opts[:'sort_order'])
        fail ArgumentError, "invalid value for \"sort_order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/payment'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'startAt'] = opts[:'start_at'] if !opts[:'start_at'].nil?
      query_params[:'endAt'] = opts[:'end_at'] if !opts[:'end_at'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PaginatedPayments' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#list_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Refund the balance of a token for a given payment to the buyerAddress
    # @param id [String] Unique identifier of the payment (specified during createPayment)
    # @param payment_refund_request [PaymentRefundRequest] Request body - used to specify the token to refund.
    # @param [Hash] opts the optional parameters
    # @option opts [Chain] :chain Network in which payment is to be refunded.
    # @return [PaymentOperationResponse]
    def refund_payment(id, payment_refund_request, opts = {})
      data, _status_code, _headers = refund_payment_with_http_info(id, payment_refund_request, opts)
      data
    end

    # Refund the balance of a token for a given payment to the buyerAddress
    # @param id [String] Unique identifier of the payment (specified during createPayment)
    # @param payment_refund_request [PaymentRefundRequest] Request body - used to specify the token to refund.
    # @param [Hash] opts the optional parameters
    # @option opts [Chain] :chain Network in which payment is to be refunded.
    # @return [Array<(PaymentOperationResponse, Integer, Hash)>] PaymentOperationResponse data, response status code and response headers
    def refund_payment_with_http_info(id, payment_refund_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.refund_payment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.refund_payment"
      end
      # verify the required parameter 'payment_refund_request' is set
      if @api_client.config.client_side_validation && payment_refund_request.nil?
        fail ArgumentError, "Missing the required parameter 'payment_refund_request' when calling PaymentsApi.refund_payment"
      end
      # verify the values in the request body are valid
      chain = opts[:'chain'] if !opts[:'chain'].nil?
      msg = @request_validator.validate_refund_payment_request(payment_refund_request, chain)
      if (@request_validator.is_not_empty(msg))
        fail ArgumentError, "`#{msg}` when calling PaymentsApi.refund_payment"
      end
      # resource path
      local_var_path = '/v1/payment/{id}/refund'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'chain'] = chain

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(payment_refund_request) 

      # return_type
      return_type = opts[:return_type] || 'PaymentOperationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#refund_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Settle a specific amount of a token for a given payment to the transferAddress and remaining balance (if any) will be refunded to the buyerAddress
    # @param id [String] Unique identifier of the payment (specified during createPayment)
    # @param payment_settle_request [PaymentSettleRequest] Request body - used to specify the amount to settle.
    # @param [Hash] opts the optional parameters
    # @option opts [Chain] :chain Network in which payment is to be settled.
    # @return [PaymentOperationResponse]
    def settle_payment(id, payment_settle_request, opts = {})
      data, _status_code, _headers = settle_payment_with_http_info(id, payment_settle_request, opts)
      data
    end

    # Settle a specific amount of a token for a given payment to the transferAddress and remaining balance (if any) will be refunded to the buyerAddress
    # @param id [String] Unique identifier of the payment (specified during createPayment)
    # @param payment_settle_request [PaymentSettleRequest] Request body - used to specify the amount to settle.
    # @param [Hash] opts the optional parameters
    # @option opts [Chain] :chain Network in which payment is to be settled.
    # @return [Array<(PaymentOperationResponse, Integer, Hash)>] PaymentOperationResponse data, response status code and response headers
    def settle_payment_with_http_info(id, payment_settle_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.settle_payment ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentsApi.settle_payment"
      end
      # verify the required parameter 'payment_settle_request' is set
      if @api_client.config.client_side_validation && payment_settle_request.nil?
        fail ArgumentError, "Missing the required parameter 'payment_settle_request' when calling PaymentsApi.settle_payment"
      end
      # verify the values in the request body are valid
      chain = opts[:'chain'] if !opts[:'chain'].nil?
      msg = @request_validator.validate_settle_payment_request(payment_settle_request, chain)
      if (@request_validator.is_not_empty(msg))
        fail ArgumentError, "`#{msg}` when calling PaymentsApi.settle_payment"
      end      
      # resource path
      local_var_path = '/v1/payment/{id}/settle'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'chain'] = opts[:'chain'] if !opts[:'chain'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(payment_settle_request) 

      # return_type
      return_type = opts[:return_type] || 'PaymentOperationResponse' 

      # auth_names
      auth_names = opts[:auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#settle_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
