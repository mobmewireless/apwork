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
	    responsive_helper = new ResponsiveDatatablesHelper(workers_datatable, breakpoint_definition) unless responsive_helper 
	    return
			
		rowCallback: (nRow) ->
		    responsive_helper.createExpandIcon nRow
		    return

	  drawCallback: (oSettings) ->
	    responsive_helper.respond()
	    return
      
    info: false
    lengthChange: false
    language: {
      search: ""
      searchPlaceholder: "Search"
      paginate: {
        next: ">"
        previous: "<"
      }
    }


$ -> workers_initialization()
$(document).on('page:load', workers_initialization)