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
  class PayoutsApi
    attr_accessor :api_client
    attr_accessor :request_validator

    def initialize(api_client = ApiClient.default, request_validator = RequestValidator.default)
      @api_client = api_client
      @request_validator = request_validator
    end
    # Create a payout.
    # @param create_payout_request [CreatePayoutRequest] Request body - used to specify payout creation parameters.
    # @param [Hash] opts the optional parameters
    # @option opts [Chain] :chain Network in which payment is to be created. Please refer documentation for Supported Networks
    # @return [CreatePayoutResponse]
    def create_payout(create_payout_request, opts = {})
      data, _status_code, _headers = create_payout_with_http_info(create_payout_request, opts)
      data
    end

    # Create a payout.
    # @param create_payout_request [CreatePayoutRequest] Request body - used to specify payout creation parameters.
    # @param [Hash] opts the optional parameters
    # @option opts [Chain] :chain Network in which payment is to be created. Please refer documentation for Supported Networks
    # @return [Array<(CreatePayoutResponse, Integer, Hash)>] CreatePayoutResponse data, response status code and response headers
    def create_payout_with_http_info(create_payout_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.create_payout ...'
      end
      # verify the required parameter 'create_payout_request' is set
      if @api_client.config.client_side_validation && create_payout_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_payout_request' when calling PayoutsApi.create_payout"
      end
      # verify the values in the request body are valid
      chain = opts[:'chain'] if !opts[:'chain'].nil?
      msg = @request_validator.validate_create_payout_request(create_payout_request, chain)
      if (@request_validator.is_not_empty(msg))
        fail ArgumentError, "`#{msg}` when calling PayoutsApi.create_payout"
      end
      # resource path
      local_var_path = '/v1/payout'

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
      post_body = opts[:body] || @api_client.object_to_http_body(create_payout_request) 

      # return_type
      return_type = opts[:return_type] || 'CreatePayoutResponse' 

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
        @api_client.config.logger.debug "API called: PayoutsApi#create_payout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of payouts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Cursor to start results from
    # @option opts [String] :sort_by Sort payments by
    # @option opts [String] :start_at Get payouts from this timestamp (unix)
    # @option opts [String] :end_at Get payouts till this timestamp (unix)
    # @return [PaginatedPayoutItems]
    def list_payouts(opts = {})
      data, _status_code, _headers = list_payouts_with_http_info(opts)
      data
    end

    # Returns a list of payouts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :next_token Cursor to start results from
    # @option opts [String] :sort_by Sort payments by
    # @option opts [String] :start_at Get payouts from this timestamp (unix)
    # @option opts [String] :end_at Get payouts till this timestamp (unix)
    # @return [Array<(PaginatedPayoutItems, Integer, Hash)>] PaginatedPayoutItems data, response status code and response headers
    def list_payouts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.list_payouts ...'
      end
      allowable_values = ["createdAt", "updatedAt"]
      if @api_client.config.client_side_validation && opts[:'sort_by'] && !allowable_values.include?(opts[:'sort_by'])
        fail ArgumentError, "invalid value for \"sort_by\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/payout'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
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
      return_type = opts[:return_type] || 'PaginatedPayoutItems' 

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
        @api_client.config.logger.debug "API called: PayoutsApi#list_payouts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
