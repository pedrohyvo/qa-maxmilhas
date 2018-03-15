class ResultadoVoo < SitePrism::Page

  element :select_flight, '.big.show-active-unselected'
  element :passengers, '.passengers span'
  element :executive, '.text-red.premium-class.ng-scope'
  element :trip_text, '.trip-text'
  elements :flights_list, '.flight.row'
  element :airline_column, '.airline-column div'

  element :gol_filter, :xpath, '//*[@id="flights_section"]/div[4]/div/div[2]/div[2]/div[2]/div[2]/label'

  element :buy_button, '.flight-button.lightblue.small'

end
