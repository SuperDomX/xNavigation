<li class="dd-item" data-id="{$link.id}">
    <div class="dd-handle">
        <a href="" title="Edit">
        {$link.title}
        </a>
    </div> 
    <div class="widget-controls">
        <!-- <a data-widgster="load"         title="Change Title"        href="#"><i class="fa fa-pencil"></i></a>
        
        <a data-widgster="fullscreen"   title="Full Screen"         href="#"><i class="fa fa-globe"></i></a>
        <a data-widgster="restore"      title="Restore"             href="#"><i class="fa fa-bar-chart-o"></i></a>
        <a data-widgster="close"        title="Close"               href="#"><i class="fa fa-share-alt"></i></a>
        <a data-widgster="watchtower"   title="Add to Watchtower"   href="#"><i class="fa fa-trash-o"></i></a>
 -->
        <!-- <a data-widgster="expand"       title="Expand"              href="#"><i class="fa fa-plus"></i></a> -->
        <!-- <a data-widgster="collapse"     title="Collapse"            href="#"><i class="fa fa-eye"></i></a> -->

    </div>
    {assign var=children value=0}
    {foreach $navi as $nav => $l} 
        {if $l.parent == $link.id} 
           {assign var=children value=$link.id}
        {/if}
    {/foreach} 
    {if $children gt 0}
        <ol class="dd-list"> 
            {foreach $navi as $nav => $l} 
                {if $l.parent == $link.id} 
                   {include file="./nest.tpl" link=$l}
                {/if}
            {/foreach}
        </ol> 
    {/if}
</li>