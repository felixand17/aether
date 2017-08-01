function showFilterContent() {
	document.getElementById('dfilter').style.display = "block";
	document.getElementById('filtering').style.display = "none";
}

function hideFilterContent() {
	document.getElementById('dfilter').style.display = "none";
	document.getElementById('filtering').style.display = "block";
}

function calendarScheduler(container) {
  $(container).fullCalendar({
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay,listWeek'
    },
    defaultDate: '2016-09-12',
    navLinks: true, // can click day/week names to navigate views
    editable: true,
    eventLimit: true, // allow "more" link when too many events
    events: [
      {
        title: 'All Day Event',
        start: '2016-09-01'
      },
      {
        title: 'Long Event',
        start: '2016-09-07',
        end: '2016-09-10'
      },
      {
        id: 999,
        title: 'Repeating Event',
        start: '2016-09-09T16:00:00'
      },
      {
        id: 999,
        title: 'Repeating Event',
        start: '2016-09-16T16:00:00'
      },
      {
        title: 'Conference',
        start: '2016-09-11',
        end: '2016-09-13'
      },
      {
        title: 'Meeting',
        start: '2016-09-12T10:30:00',
        end: '2016-09-12T12:30:00'
      },
      {
        title: 'Lunch',
        start: '2016-09-12T12:00:00'
      },
      {
        title: 'Meeting',
        start: '2016-09-12T14:30:00'
      },
      {
        title: 'Happy Hour',
        start: '2016-09-12T17:30:00'
      },
      {
        title: 'Dinner',
        start: '2016-09-12T20:00:00'
      },
      {
        title: 'Birthday Party',
        start: '2016-09-13T07:00:00'
      },
      {
        title: 'Click for Google',
        url: 'http://google.com/',
        start: '2016-09-28'
      }
    ]
  });
}

$(document).on('turbolinks:load', function() {
	$('.ui.dropdown').dropdown();

	$('.menu .item').tab({
		history: true,
		historyType: 'hash'
	});

	$('.ui.left.sidebar').sidebar({
    transition: 'overlay'
	});

  if ( $('#calendar').length > 0 ) {
    calendarScheduler('#calendar');
  }

	// left is opened by button
	$('.ui.left.sidebar').sidebar('attach events', '.launch.icon.item');

	//datepicker
	$('.datepicker-here').datepicker({})

	$('.disablePast').datepicker({
	    minDate: new Date() // Now can select only dates, which goes after today
	})
	$('.disableFuture').datepicker({
	    maxDate: new Date() // Now can select only dates, which goes after today
	})

});
