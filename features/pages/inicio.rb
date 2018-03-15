class Inicio < SitePrism::Page

	element :search_form_from, '#form_from'
	element :search_form_to, '#form_to'
    element :initial_date, '#form_date_go'
    element :end_date, '#form_date_return'
    element :passengers_drop_trigger, '#passengers_drop_trigger'
    element :adults_passengers, "select[id='adults_passengers']"
    element :children_passengers, "select[id='children_passengers']"
    element :babies_passengers, "select[id='babies_passengers']"
    element :cabin, ".small-12.columns.no-padding"
    element :btn_search_flights, '#btn_search_flights'

end