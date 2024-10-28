require "lutaml/model"

module Reqif
  class Object < Lutaml::Model::Serializable
    attribute :spec_object_ref, :string

    xml do
      root "OBJECT"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "SPEC-OBJECT-REF", to: :spec_object_ref
    end
  end
end