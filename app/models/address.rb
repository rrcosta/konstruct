class Address < ApplicationRecord
  extend EnumerateIt

  belongs_to :person
end
