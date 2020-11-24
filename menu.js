window.addEventListener('load',init,false);

function init(){
	for (var i = 0; i < document.links.length; i++) {
		var str=document.URL;
		if (document.links[i].href == str) 
			document.links[i].className = 'active btn-secondary p-1 m-1 rounded';
	}
}

