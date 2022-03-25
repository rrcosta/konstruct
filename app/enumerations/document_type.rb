class DocumentType < EnumerateIt::Base
  associate_values(
    :cpf,
    :cnpj
  )
end
