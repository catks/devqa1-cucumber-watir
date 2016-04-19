# encoding: utf-8
Dado(/^que estou na página do Google$/) do
  @browser.goto("www.google.com.br")
end

Quando(/^pesquiso por "([^"]*)"$/) do |texto|
  pesquisa = @browser.text_field(:name,'q')
  pesquisa.set(texto)
  pesquisa.send_keys :enter
end

Então(/^posso visualizar o resultado da busca$/) do
  resultados = @browser.links(:css, 'h3 a')
  resultados.each{|link| puts link.text; expect(link.text).not_to be_empty}
end
