require 'cpf_cnpj'

class Person < ApplicationRecord
  has_many :addresses, dependent: :destroy

  accepts_nested_attributes_for :addresses, limit: 2, reject_if: :reject_addresses

  validates :name, presence: true, length: { minimum:3 }

  validate :document_format

  has_enumeration_for :kind_document, with: DocumentType,
                        create_helpers: true, create_scopes: true

  def reject_addresses(attributes)
    attributes['street'].blank?
    attributes['neighborhood'].blank?
    attributes['city'].blank?
  end

  def document_format
    unless CPF.valid?(document, strict: true) || CNPJ.valid?(document, strict: true)
      errors.add(:document, 'Documento invalido')
    end

    stripe_document
  end

  def stripe_document
    stripe_cpf if CPF.valid?(document, strict: true)
    stripe_cnpj if CNPJ.valid?(document, strict: true)
  end

  def stripe_cpf
    new_cpf = CPF.new(document)
    self.document = new_cpf.stripped
  end

  def stripe_cnpj
    new_cnpj = CNPJ.new(document)
    self.document = new_cnpj.stripped
  end
end
