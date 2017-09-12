=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Defines the parameters that can be included in the body of a request to the [CreateCheckout](#endpoint-createcheckout) endpoint.
  class CreateCheckoutRequest
    # A unique string that identifies this checkout among others you've created. It can be any valid string but must be unique for every order sent to Square Checkout for a given location ID.  The idempotency key is used to avoid processing the same order more than once. If you're unsure whether a particular checkout was created successfully, you can reattempt it with the same idempotency key and all the same other parameters without worrying about creating duplicates.  We recommend using a random number/string generator native to the language you are working in to generate strings for your idempotency keys.  See [Idempotency keys](#idempotencykeys) for more information.
    attr_accessor :idempotency_key

    # The order including line items to be checked out.
    attr_accessor :order

    # If `true`, Square Checkout will collect shipping information on your behalf and store that information with the transaction information in your Square Dashboard.  Default: `false`.
    attr_accessor :ask_for_shipping_address

    # The email address to display on the Square Checkout confirmation page and confirmation email that the buyer can use to contact the merchant.  If this value is not set, the confirmation page and email will display the primary email address associated with the merchant's Square account.  Default: none; only exists if explicitly set.
    attr_accessor :merchant_support_email

    # If provided, the buyer's email is pre-populated on the checkout page as an editable text field.  Default: none; only exists if explicitly set.
    attr_accessor :pre_populate_buyer_email

    # If provided, the buyer's shipping info is pre-populated on the checkout page as editable text fields.  Default: none; only exists if explicitly set.
    attr_accessor :pre_populate_shipping_address

    # The URL to redirect to after checkout is completed with `checkoutId`, Square's `orderId`, `transactionId`, and `referenceId` appended as URL parameters. For example, if the provided redirect_url is `http://www.example.com/order-complete`, a successful transaction redirects the customer to:  `http://www.example.com/order-complete?checkoutId=xxxxxx&orderId=xxxxxx&referenceId=xxxxxx&transactionId=xxxxxx`  If you do not provide a redirect URL, Square Checkout will display an order confirmation page on your behalf; however Square strongly recommends that you provide a redirect URL so you can verify the transaction results and finalize the order through your existing/normal confirmation workflow.  Default: none; only exists if explicitly set.
    attr_accessor :redirect_url


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'idempotency_key' => :'idempotency_key',
        :'order' => :'order',
        :'ask_for_shipping_address' => :'ask_for_shipping_address',
        :'merchant_support_email' => :'merchant_support_email',
        :'pre_populate_buyer_email' => :'pre_populate_buyer_email',
        :'pre_populate_shipping_address' => :'pre_populate_shipping_address',
        :'redirect_url' => :'redirect_url'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'idempotency_key' => :'String',
        :'order' => :'CreateOrderRequest',
        :'ask_for_shipping_address' => :'BOOLEAN',
        :'merchant_support_email' => :'String',
        :'pre_populate_buyer_email' => :'String',
        :'pre_populate_shipping_address' => :'Address',
        :'redirect_url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'idempotency_key')
        self.idempotency_key = attributes[:'idempotency_key']
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.has_key?(:'ask_for_shipping_address')
        self.ask_for_shipping_address = attributes[:'ask_for_shipping_address']
      end

      if attributes.has_key?(:'merchant_support_email')
        self.merchant_support_email = attributes[:'merchant_support_email']
      end

      if attributes.has_key?(:'pre_populate_buyer_email')
        self.pre_populate_buyer_email = attributes[:'pre_populate_buyer_email']
      end

      if attributes.has_key?(:'pre_populate_shipping_address')
        self.pre_populate_shipping_address = attributes[:'pre_populate_shipping_address']
      end

      if attributes.has_key?(:'redirect_url')
        self.redirect_url = attributes[:'redirect_url']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @idempotency_key.nil?
        invalid_properties.push("invalid value for 'idempotency_key', idempotency_key cannot be nil.")
      end

      if @idempotency_key.to_s.length > 192
        invalid_properties.push("invalid value for 'idempotency_key', the character length must be smaller than or equal to 192.")
      end

      if @idempotency_key.to_s.length < 1
        invalid_properties.push("invalid value for 'idempotency_key', the character length must be great than or equal to 1.")
      end

      if @order.nil?
        invalid_properties.push("invalid value for 'order', order cannot be nil.")
      end

      if !@merchant_support_email.nil? && @merchant_support_email.to_s.length > 254
        invalid_properties.push("invalid value for 'merchant_support_email', the character length must be smaller than or equal to 254.")
      end

      if !@pre_populate_buyer_email.nil? && @pre_populate_buyer_email.to_s.length > 254
        invalid_properties.push("invalid value for 'pre_populate_buyer_email', the character length must be smaller than or equal to 254.")
      end

      if !@redirect_url.nil? && @redirect_url.to_s.length > 800
        invalid_properties.push("invalid value for 'redirect_url', the character length must be smaller than or equal to 800.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @idempotency_key.nil?
      return false if @idempotency_key.to_s.length > 192
      return false if @idempotency_key.to_s.length < 1
      return false if @order.nil?
      return false if !@merchant_support_email.nil? && @merchant_support_email.to_s.length > 254
      return false if !@pre_populate_buyer_email.nil? && @pre_populate_buyer_email.to_s.length > 254
      return false if !@redirect_url.nil? && @redirect_url.to_s.length > 800
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] idempotency_key Value to be assigned
    def idempotency_key=(idempotency_key)
      if idempotency_key.nil?
        fail ArgumentError, "idempotency_key cannot be nil"
      end

      if idempotency_key.to_s.length > 192
        fail ArgumentError, "invalid value for 'idempotency_key', the character length must be smaller than or equal to 192."
      end

      if idempotency_key.to_s.length < 1
        fail ArgumentError, "invalid value for 'idempotency_key', the character length must be great than or equal to 1."
      end

      @idempotency_key = idempotency_key
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_support_email Value to be assigned
    def merchant_support_email=(merchant_support_email)

      if !merchant_support_email.nil? && merchant_support_email.to_s.length > 254
        fail ArgumentError, "invalid value for 'merchant_support_email', the character length must be smaller than or equal to 254."
      end

      @merchant_support_email = merchant_support_email
    end

    # Custom attribute writer method with validation
    # @param [Object] pre_populate_buyer_email Value to be assigned
    def pre_populate_buyer_email=(pre_populate_buyer_email)

      if !pre_populate_buyer_email.nil? && pre_populate_buyer_email.to_s.length > 254
        fail ArgumentError, "invalid value for 'pre_populate_buyer_email', the character length must be smaller than or equal to 254."
      end

      @pre_populate_buyer_email = pre_populate_buyer_email
    end

    # Custom attribute writer method with validation
    # @param [Object] redirect_url Value to be assigned
    def redirect_url=(redirect_url)

      if !redirect_url.nil? && redirect_url.to_s.length > 800
        fail ArgumentError, "invalid value for 'redirect_url', the character length must be smaller than or equal to 800."
      end

      @redirect_url = redirect_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          idempotency_key == o.idempotency_key &&
          order == o.order &&
          ask_for_shipping_address == o.ask_for_shipping_address &&
          merchant_support_email == o.merchant_support_email &&
          pre_populate_buyer_email == o.pre_populate_buyer_email &&
          pre_populate_shipping_address == o.pre_populate_shipping_address &&
          redirect_url == o.redirect_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [idempotency_key, order, ask_for_shipping_address, merchant_support_email, pre_populate_buyer_email, pre_populate_shipping_address, redirect_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SquareConnect.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
