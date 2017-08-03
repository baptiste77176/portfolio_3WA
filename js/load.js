$(function()
{
var fill = document.getElementById("fill");
var fill1 = document.getElementById("fill1");
var fill2 = document.getElementById("fill2");
var fill3 = document.getElementById("fill3");
var fill4 = document.getElementById("fill4");

var percent = document.getElementById("percent");
var percent1 = document.getElementById("percent1");
var percent2 = document.getElementById("percent2");
var percent3 = document.getElementById("percent3");
var percent4 = document.getElementById("percent4");
var size = 0;
var timer;
function interval()
	{
		size += 2;
		if ( size <=80)
		{
			fill.style.width=size+"%";
			percent.textContent = size+"%";
		}
		if ( size <= 60)
		{	
			fill1.style.width=size+"%";
			percent1.textContent = size+"%";
		}
		if ( size <= 70)
		{
			fill2.style.width=size+"%";
			percent2.textContent = size+"%";
		}
		if ( size <= 90)
		{
			fill3.style.width=size+"%";
			percent3.textContent = size+"%";
		}
		if ( size <= 70)
		{
			fill4.style.width=size+"%";
			percent4.textContent = size+"%";
		}
		if ( size == 100)
			window.clearInterval(timer);
	}
timer = window.setInterval(interval,50);
});
