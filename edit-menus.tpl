<div class="row">
	<div class="col-md-5">
		<div class="panel-group" id="accordion2">
			{foreach $TALK.MENU as $menu => $m}
				<div class="panel">
					<div class="panel-heading">
							<a class="accordion-toggle {if $menu > 0}collapse{/if}" data-toggle="collapse" data-parent="#accordion2" href="#accord_{$menu}">
									{include 'i.tpl' i=$m.i}
									{$m.a}
							</a>
					</div>
					<div id="accord_{$menu}" class="panel-collapse {if $menu > 0}collapse{else}in{/if} " style="height: auto;">
						<div class="panel-body">
							{if $m.tpl != ''}
								{include "x{$Xtra|ucfirst}/{$m.tpl}.tpl"}
							{/if}
						</div>
					</div>
				</div>
			{/foreach} 
		</div>
	</div> 
	 <div class="col-md-7" id="navi-tree">
		<!-- <header>
				<h5>
						<span class="label label-success"><i class="fa fa-eye"></i></span> &nbsp; <strong>Online</strong>
				</h5>
				<div class="widget-controls">
						<a onclick="window.navi.newLink();" title="Reload" href="#" class="btn btn-info btn-small"><strong>New Linx <i class="fa fa-link"></i> </strong></a>
						<a data-widgster="close" title="Close" href="#"><strong>Close</strong></a>
				</div>
		</header> -->

		<div class="dd" id="nestable1" >
				{if $navi == 0}
						<div class="dd-empty"></div>
				{else}
						<ol class="dd-list" style=" ">  
								{foreach $navi as $n => $link}
										{if $link.parent == 0} 
												{include file="./nest.tpl" link=$link} 
										{/if} 
								{/foreach}
						</ol> 
				{/if} 
		</div>


			
			 
	</div> 
</div>