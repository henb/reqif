require "lutaml/model"

module Reqif
  class AttributeDefinitionEnumeration < Lutaml::Model::Serializable
    attribute :desc, :string
    attribute :identifier, :string
    attribute :is_editable, :boolean
    attribute :last_change, :time
    attribute :long_name, :string
    attribute :multi_valued, :boolean
    attribute :default_value, DefaultValue
    attribute :alternative_id, AlternativeId
    attribute :type, Type

    xml do
      root "ATTRIBUTE-DEFINITION-ENUMERATION"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_attribute "DESC", to: :desc
      map_attribute "IDENTIFIER", to: :identifier
      map_attribute "IS-EDITABLE", to: :is_editable
      map_attribute "LAST-CHANGE", to: :last_change
      map_attribute "LONG-NAME", to: :long_name
      map_attribute "MULTI-VALUED", to: :multi_valued
      map_element "DEFAULT-VALUE", to: :default_value
      map_element "ALTERNATIVE-ID", to: :alternative_id
      map_element "TYPE", to: :type
    end
  end
end
