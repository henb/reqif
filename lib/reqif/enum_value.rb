require "lutaml/model"

module Reqif
  class EnumValue < Lutaml::Model::Serializable
    attribute :desc, :string
    attribute :identifier, :string
    attribute :last_change, :time
    attribute :long_name, :string
    attribute :alternative_id, AlternativeId
    attribute :properties, Properties

    xml do
      root "ENUM-VALUE"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_attribute "DESC", to: :desc
      map_attribute "IDENTIFIER", to: :identifier
      map_attribute "LAST-CHANGE", to: :last_change
      map_attribute "LONG-NAME", to: :long_name
      map_element "ALTERNATIVE-ID", to: :alternative_id
      map_element "PROPERTIES", to: :properties
    end
  end
end
