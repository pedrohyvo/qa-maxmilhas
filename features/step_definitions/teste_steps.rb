Quando(/^clico no botao pesquisar$/) do
  @inicio.btn_search_flights.click
end

Então(/^eu recebo o resultado dessa busca$/) do
  expect(@resultado.select_flight.text).to eql 'SELECIONE SEU VOO'
  page.save_screenshot('scenarios/resultado_busca.png')
end

Quando(/^adiciono mais um passageiro$/) do
  @inicio.passengers_drop_trigger.click
  @inicio.adults_passengers.select("2")
end

Então(/^eu verifico se o passageiro foi adicionado$/) do
  expect(@resultado.passengers.text).to eql '02'
  page.save_screenshot('scenarios/resultado_passageiro.png')
end

Quando(/^seleciono a classe executiva$/) do
  @inicio.passengers_drop_trigger.click
  @inicio.cabin.select("Classe Executiva")
end

Então(/^eu verifico se a classe foi selecionada$/) do
  @classe_executiva = find('.text-red.premium-class.ng-scope', match: :first).text
  expect(@classe_executiva).to eql 'Executiva'
  page.save_screenshot('scenarios/resultado_classe.png')
end

Quando(/^refino a busca atraves de alguns filtros$/) do
  @resultado.wait_for_gol_filter
  sleep(5)
  @resultado.gol_filter.click
end

Então(/^eu verifico se os filtros estão funcionando$/) do
  @companhia_selecionada = @resultado.flights_list.first.find('.airline-column div').text
  expect(@resultado.flights_list.size).to be > 0
  expect(@companhia_selecionada).to eql 'GOL'
  page.save_screenshot('scenarios/resultado_filtro.png')
end
