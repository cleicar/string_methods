require "spec_helper"

describe StringMethods do
  it "has a version number" do
    expect(StringMethods::VERSION).not_to be nil
  end

  it "remove white spaces of a text" do
  	sample_text = "Lorem ipsum dolor sit amet "
  	expect(sample_text.remove_white_spaces).to eq "Loremipsumdolorsitamet"
  end

  it "remove break lines of a text" do
  	sample_text = "Lorem ipsum dolor sit amet,\n consectetur adipiscing"
  	expect(sample_text.remove_break_lines).to eq "Lorem ipsum dolor sit amet, consectetur adipiscing"
  end

  it "remove special characteres and spaces for a text" do
  	sample_text = "Lorem & ipsum dõlor * sit amet_"
  	expect(sample_text.remove_special_chars).to eq "Loremipsumdlorsitamet"
  end

  it "return a string as CNPJ format" do
  	expect("99999999999999".as_cnpj_cpf).to eq "99.999.999/9999-99"
  end

  it "return a string as CPF format" do
  	expect("99999999999".as_cnpj_cpf).to eq "999.999.999-99"
  end
end
