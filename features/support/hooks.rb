Before '@iniciando_busca' do
    visit 'https://www2.maxmilhas.com.br'
    @inicio = Inicio.new
    @resultado = ResultadoVoo.new
    @inicio.search_form_from.set "São Paulo"
    find(:css, '#form_from_dropdown > div', text: 'São Paulo - Todos (SAO)').click
    @inicio.search_form_to.set "Rio de Janeiro"
    find(:css, '#form_to_dropdown > div', text: 'Rio de Janeiro - Galeão Intl (GIG)').click
    @inicio.initial_date.set "20/04/2018"
end

After do
    #clean stored session data
    page.execute_script("window.localStorage.clear()")
end