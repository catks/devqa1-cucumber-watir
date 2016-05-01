Dado(/^que estou na tela de login$/) do
  @browser.goto("http://localhost:8084/ProjetoRestaurante/login.jsp")
end

Quando(/^faço um login com um usuário válido$/) do
  login = @browser.text_field(:name,'login')
  senha = @browser.text_field(:name,'password')

  login.set "carlos@email.com"
  senha.set "123123"

  submit = @browser.button(:type ,"submit")
  submit.click
end

Então(/^devo me logar$/) do
  card = @browser.div(:class , 'card')
  expect(card.exists?).to be true
end
