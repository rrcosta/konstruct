class Person < ApplicationRecord
  has_enumeration_for :kind_document, with: DocumentType,
                        create_helpers: true, create_scopes: true
end
