responsive_helper = undefined
breakpoint_definition =
  tablet: 1024
  phone: 480

workers_initialization = ->
	workers_datatable = $('.datatable')
	
	workers_datatable.dataTable
		pagingType: 'simple'
		autoWidth: false
		preDrawCallback: ->
			# Initialize the responsive datatables helper once.
	    responsive_helper = new ResponsiveDatatablesHelper(workers_datatable, breakpoint_definition)  unless responsive_helper 
	    return
			
		rowCallback: (nRow) ->
		    responsive_helper.createExpandIcon nRow
		    return

	  drawCallback: (oSettings) ->
	    responsive_helper.respond()
	    return
			
  workers_datatable_filter_input = $('#workers_datatable_filter input')
  workers_datatable_filter_input.unbind()
  workers_datatable_filter_input.bind 'keyup', (e) ->
    if e.keyCode == 13
      workers_datatable.fnFilter this.value

$ -> workers_initialization()
$(document).on('page:load', workers_initialization)