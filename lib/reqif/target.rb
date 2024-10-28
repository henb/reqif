require "lutaml/model"

module Reqif
  class Target < Lutaml::Model::Serializable
    attribute :spec_object_ref, :string

    xml do
      root "TARGET"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_element "SPEC-OBJECT-REF", to: :spec_object_ref
    end
  end
end
