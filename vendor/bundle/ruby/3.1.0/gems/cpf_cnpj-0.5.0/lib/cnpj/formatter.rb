# frozen_string_literal: true

class CNPJ
  class Formatter
    STRICT_REGEX = %r[[/.-]]
    LOOSE_REGEX = /[^\d]/

    def self.format(number)
      strip(number).gsub(/\A(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})\Z/, "\\1.\\2.\\3/\\4-\\5")
    end

    def self.strip(number, strict = false)
      number.to_s.gsub(strict ? STRICT_REGEX : LOOSE_REGEX, "")
    end
  end
end
