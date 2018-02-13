$("#searchBtn").keyup(function(e){if(e.keyCode == 13)  showPage(eng.value,Nkeyword.value); });

function showPage(eng, Nkeyword) {
	var params = "eng=" + eng + "&keyword=" + Nkeyword;
	if(Nkeyword !=""){
		$.ajax({
			url : 'newslist.do',
			type : 'get',
			data : params,
			dataType : 'json',
			success : function(data) {
	
				if (data) {
					// alert(data) 들어온 리스트객체들 확인
					$('#lists').empty();
					listUpload(data);
	
				}
			}
		})
	}else{
		alert("검색어를 입력해 주세요.")
	}
}

function listUpload(list) {
	var newsList = list;


	$.each(newsList, function(index, item) {
		
		
			var nId = newsList[index].news_id;
			var nUrl = newsList[index].news_url;
		 	var nTitle = newsList[index].news_title;
			var nImg = newsList[index].news_img;
			var ndate = newsList[index].news_date;
			var nContent = newsList[index].news_content;

			 
			var li = $('<li>').appendTo('#lists').attr('id',index).attr('class','nlist scrolling').attr('data-news',nId);	//li 태그만들기
			
			var a = $("<a href='"+nUrl+"'target='_blank'></a>").appendTo(li);
			
			var div= $('<div>').appendTo(a).addClass('thum');
			if(nImg != null){
				$("<img src='"+nImg+"' onerror='this.style.display=\"none\"' style='width:80px;height:80px;'/>").appendTo(div);
			}
			var dl = $('<dl>').appendTo(a)
			$('<dt>').text(nTitle).appendTo(dl);
			$('<dd>').text(
					$.format.date(ndate, 'yy/MM/dd')).appendTo(dl);
			$('<dd>').text(nContent).appendTo(dl);


	});
}
