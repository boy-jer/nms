# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	Morris.Donut
		element : 'news-stats-donut' 
		data:[
			{label: 'Kriminal', value:$('#news-stats-donut').data('kriminal')}
			{label: 'Nah Ini Dia', value:$('#news-stats-donut').data('nah')}
			{label: 'Megapolitan', value:$('#news-stats-donut').data('mega')}
			]
			
		