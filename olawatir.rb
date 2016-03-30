require 'watir-webdriver'

#Inicia o watir com o browser desejado
browser = Watir::Browser.new :firefox
 #Abre a página
browser.goto("www.google.com.br")
#Mapeia a caixa de texto de pesquisa para a variavel 'pesquisa'
pesquisa = browser.text_field(:name,'q')
#Digita 'Ola mundo' na caixa de pesquisa
pesquisa.set("Ola mundo")
#Clica em enter
pesquisa.send_keys :enter
#Cria uma variavel resultados com uma collection de todos os links retornados na primeira página da pesquisa
resultados = browser.links(:css, 'h3 a')
#Espera carregar o primeiro link
resultados.first.wait_until_present
#Clica no primeiro link
resultados.first.click
