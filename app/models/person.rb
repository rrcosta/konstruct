require 'cpf_cnpj'

class Person < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { minimum:3 }

  validate :document_format

  has_enumeration_for :kind_document, with: DocumentType,
                        create_helpers: true, create_scopes: true

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
