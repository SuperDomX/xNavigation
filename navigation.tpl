







{$tpl.tour = [
	'list'	=> $TALK.JUMBO.BTNS,
	'lang'  => $TALK.JUMBO
]}

{$x.tpl = $tpl}

{$blox['div'][] = [
	'class' => 'col-md-2',
	'tpl'	=> [
		'jumbotron' => $TALK.JUMBO.BTNS
	]
]}

{$blox['div'][] = [
	'class' => 'col-md-6',
	'tpl'	=> [
		'list-group' => $TALK.JUMBO.BTNS
	]
]}



{include "~blox/x.TOUR.tpl"}



<div class="row">
  <div class="col-md-12">
	{include "~widgets/tabs.tpl"}
  </div>
</div>
  
<script type="text/javascript">
	
	window.navi = {
		newLink : function () {
			var a,b,c;

			a = {
				title : prompt("Give the New Page a Title")
			};

			if(a != ''){

				$.ajax({
					type     : "POST",
					url      : '/{$toBackDoor}/navigation/newLink/.json',
					data     : a,
					dataType : "json",
					success: function(data)
					{

					  $.pjax({ 
						container : '.content',
						fragment  : '.content',
						timeout   : 5000,
						url       : window.location.pathname+window.location.search+window.location.hash
					  });
					  // Handle the server response (display errors if necessary)

					  // $.pjax({

					  //   container : '.content',
					  //   fragment  : '.content',
					  //   timeout   : 5000,
					  //   url       : window.location.pathname+window.location.search+window.location.hash
					  // });

					}
				});


			}
		}
	}; 

	$('.dd').on('change', function() {
		
		/* on change event */
		var on  = $("#nestable1").nestable('serialize');
		var off = $("#nestable2").nestable('serialize');


		$.ajax({
			type     : "POST",
			url      : '/{$toBackDoor}/navigation/updateNest/.json',
			data     : { 
				on  : on,
				off : off
			},
			dataType : "json",
			success: function(data)
			{

			  // $.pjax({ 
			  //   container : '.content',
			  //   fragment  : '.content',
			  //   timeout   : 5000,
			  //   url       : window.location.pathname+window.location.search+window.location.hash
			  // });
			  // Handle the server response (display errors if necessary)

			  // $.pjax({

			  //   container : '.content',
			  //   fragment  : '.content',
			  //   timeout   : 5000,
			  //   url       : window.location.pathname+window.location.search+window.location.hash
			  // });

			}
		});

	});



</script>
<script src="/x/html/layout/watchtower/js/list-groups.js" type="text/javascript"> </script>