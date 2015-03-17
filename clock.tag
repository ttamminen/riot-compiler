<clock>
	<div class="clock">
  		<div class="hour"></div>
  		<div class="minute"></div>
	</div>

	function clock() { 
		var t = moment(),
		    a = t.minutes() * 6,
		    o = t.hours() % 12 / 12 * 360 + (a / 12);
		$(".hour").css("transform", "rotate(" + o + "deg)");
		$(".minute").css("transform", "rotate(" + a + "deg)");
	}
	
	function refreshClock() {
		clock(), setTimeout(refreshClock, 1000)
	}
	refreshClock();

</clock>