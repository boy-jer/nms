# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	Morris.Donut
		element : 'news-stats-donut' 
		data:[
			{label: 'Kriminal', value:$('#news-stats-donut').data('kri')}
			{label: 'Nah Ini Dia', value:$('#news-stats-donut').data('nah')}
			{label: 'Megapolitan', value:$('#news-stats-donut').data('meg')}
			{label: 'Nasional', value:$('#news-stats-donut').data('nas')}
			{label: 'Iptek', value:$('#news-stats-donut').data('ipt')}
			{label: 'Kesehatan', value:$('#news-stats-donut').data('kes')}
			{label: 'Sport', value:$('#news-stats-donut').data('spo')}
			{label: 'Selebriti', value:$('#news-stats-donut').data('sel')}
			{label: 'Nusantara', value:$('#news-stats-donut').data('nus')}
			{label: 'Internasional', value:$('#news-stats-donut').data('int')}
			{label: 'Edukasi', value:$('#news-stats-donut').data('edu')}
			{label: 'Wisata', value:$('#news-stats-donut').data('wis')}
			{label: 'Sorot', value:$('#news-stats-donut').data('sor')}
			{label: 'Opini', value:$('#news-stats-donut').data('opi')}
			]
			
	Morris.Donut
		element : 'pub-stats-donut' 
		data:[
			{label: 'Kriminal', value:$('#pub-stats-donut').data('kri')}
			{label: 'Nah Ini Dia', value:$('#pub-stats-donut').data('nah')}
			{label: 'Megapolitan', value:$('#pub-stats-donut').data('meg')}
			{label: 'Nasional', value:$('#pub-stats-donut').data('nas')}
			{label: 'Iptek', value:$('#pub-stats-donut').data('ipt')}
			{label: 'Kesehatan', value:$('#pub-stats-donut').data('kes')}
			{label: 'Sport', value:$('#pub-stats-donut').data('spo')}
			{label: 'Selebriti', value:$('#pub-stats-donut').data('sel')}
			{label: 'Nusantara', value:$('#pub-stats-donut').data('nus')}
			{label: 'Internasional', value:$('#pub-stats-donut').data('int')}
			{label: 'Edukasi', value:$('#pub-stats-donut').data('edu')}
			{label: 'Wisata', value:$('#pub-stats-donut').data('wis')}
			{label: 'Sorot', value:$('#pub-stats-donut').data('sor')}
			{label: 'Opini', value:$('#pub-stats-donut').data('opi')}
			]		

	Morris.Donut
		element : 'unpub-stats-donut' 
		data:[
			{label: 'Kriminal', value:$('#unpub-stats-donut').data('kri')}
			{label: 'Nah Ini Dia', value:$('#unpub-stats-donut').data('nah')}
			{label: 'Megapolitan', value:$('#unpub-stats-donut').data('meg')}
			{label: 'Nasional', value:$('#unpub-stats-donut').data('nas')}
			{label: 'Iptek', value:$('#unpub-stats-donut').data('ipt')}
			{label: 'Kesehatan', value:$('#unpub-stats-donut').data('kes')}
			{label: 'Sport', value:$('#unpub-stats-donut').data('spo')}
			{label: 'Selebriti', value:$('#unpub-stats-donut').data('sel')}
			{label: 'Nusantara', value:$('#unpub-stats-donut').data('nus')}
			{label: 'Internasional', value:$('#unpub-stats-donut').data('int')}
			{label: 'Edukasi', value:$('#unpub-stats-donut').data('edu')}
			{label: 'Wisata', value:$('#unpub-stats-donut').data('wis')}
			{label: 'Sorot', value:$('#unpub-stats-donut').data('sor')}
			{label: 'Opini', value:$('#unpub-stats-donut').data('opi')}
			]					