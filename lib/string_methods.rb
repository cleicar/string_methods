require "string_methods/version"

class String
  def remove_white_spaces
    self.gsub(/\p{Space}/,'')
  end

  def remove_break_lines
    self.gsub(/(\r\n|\n|\r)/,"")
  end

  def remove_special_chars
    self.gsub(/[^0-9A-Za-z]/, '')
  end

  def as_cnpj_cpf
    str = self.to_s

    return "%s.%s.%s/%s-%s" %[str[0..1], str[2..4], str[5..7], str[8..11], str[12..13]] if str.length == 14
    return "%s.%s.%s-%s" %[str[0..2], str[3..5], str[6..8], str[9..10]] if str.length == 11
    return str
  end

  def as_cep
    str = self.to_s

    return "%s.%s-%s" %[str[0..1], str[2..4], str[5..7]]
  end
end
