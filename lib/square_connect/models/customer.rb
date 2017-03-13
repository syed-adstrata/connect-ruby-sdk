=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect
  # Represents one of a business's customers, which can have one or more cards on file associated with it.
  class Customer
    # The customer's unique ID.
    attr_accessor :id

    # The time when the customer was created, in RFC 3339 format.
    attr_accessor :created_at

    # The time when the customer was last updated, in RFC 3339 format.
    attr_accessor :updated_at

    # The non-confidential details of the customer's cards on file.
    attr_accessor :cards

    # The customer's given (i.e., first) name.
    attr_accessor :given_name

    # The customer's family (i.e., last) name.
    attr_accessor :family_name

    # The customer's nickname.
    attr_accessor :nickname

    # The name of the customer's company.
    attr_accessor :company_name

    # The customer's email address.
    attr_accessor :email_address

    # The customer's physical address.
    attr_accessor :address

    # The customer's phone number.
    attr_accessor :phone_number

    # A second ID you can set to associate the customer with an entity in another system.
    attr_accessor :reference_id

    # A note to associate with the customer.
    attr_accessor :note

    # The customer's preferences.
    attr_accessor :preferences

    # The groups the customer belongs to.
    attr_accessor :groups


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'cards' => :'cards',
        :'given_name' => :'given_name',
        :'family_name' => :'family_name',
        :'nickname' => :'nickname',
        :'company_name' => :'company_name',
        :'email_address' => :'email_address',
        :'address' => :'address',
        :'phone_number' => :'phone_number',
        :'reference_id' => :'reference_id',
        :'note' => :'note',
        :'preferences' => :'preferences',
        :'groups' => :'groups'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String',
        :'cards' => :'Array<Card>',
        :'given_name' => :'String',
        :'family_name' => :'String',
        :'nickname' => :'String',
        :'company_name' => :'String',
        :'email_address' => :'String',
        :'address' => :'Address',
        :'phone_number' => :'String',
        :'reference_id' => :'String',
        :'note' => :'String',
        :'preferences' => :'CustomerPreferences',
        :'groups' => :'Array<CustomerGroupInfo>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'cards')
        if (value = attributes[:'cards']).is_a?(Array)
          self.cards = value
        end
      end

      if attributes.has_key?(:'given_name')
        self.given_name = attributes[:'given_name']
      end

      if attributes.has_key?(:'family_name')
        self.family_name = attributes[:'family_name']
      end

      if attributes.has_key?(:'nickname')
        self.nickname = attributes[:'nickname']
      end

      if attributes.has_key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.has_key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.has_key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.has_key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.has_key?(:'preferences')
        self.preferences = attributes[:'preferences']
      end

      if attributes.has_key?(:'groups')
        if (value = attributes[:'groups']).is_a?(Array)
          self.groups = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @created_at.nil?
        invalid_properties.push("invalid value for 'created_at', created_at cannot be nil.")
      end

      if @updated_at.nil?
        invalid_properties.push("invalid value for 'updated_at', updated_at cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          cards == o.cards &&
          given_name == o.given_name &&
          family_name == o.family_name &&
          nickname == o.nickname &&
          company_name == o.company_name &&
          email_address == o.email_address &&
          address == o.address &&
          phone_number == o.phone_number &&
          reference_id == o.reference_id &&
          note == o.note &&
          preferences == o.preferences &&
          groups == o.groups
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, created_at, updated_at, cards, given_name, family_name, nickname, company_name, email_address, address, phone_number, reference_id, note, preferences, groups].hash
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
