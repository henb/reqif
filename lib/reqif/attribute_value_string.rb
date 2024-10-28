require "lutaml/model"

module Reqif
  class AttributeValueString < Lutaml::Model::Serializable
    attribute :the_value, :string
    attribute :definition, Definition

    xml do
      root "ATTRIBUTE-VALUE-STRING"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_attribute "THE-VALUE", to: :the_value
      map_element "DEFINITION", to: :definition
    end
  end
end