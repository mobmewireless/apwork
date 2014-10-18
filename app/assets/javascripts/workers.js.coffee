workers_initialization = ->
	workers_datatable = $('.datatable')
	
	workers_datatable.dataTable({
		ordering: false
	})

$ -> workers_initialization()
$(document).on('page:load', workers_initialization)