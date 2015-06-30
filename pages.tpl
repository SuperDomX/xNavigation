    <!-- <div class="widget-controls">
                    <a data-widgster="load" title="Reload" href="#" class="btn btn-danger btn-small"><strong>Delete Page <i class="fa fa-ban"></i> </strong></a>
                    <a data-widgster="close" title="Close" href="#"><strong>Close</strong></a>
            </div>
    <header>
            <h5>
                    <span class="label label-inverse"><i class="fa fa-eye-slash"></i></span> &nbsp; Offline
            </h5>
            
    </header> -->
    <div class="dd" id="nestable2"> 
        {if $deku == 0}
            <div class="dd-empty"></div>
        {else}
            <ol class="dd-list"> 
            {foreach $deku as $n => $link}
                    {if $link.parent == 0} 
                            {include file="./nest.tpl" link=$link navi=$deku} 
                    {/if} 
            {/foreach}
            </ol>
        {/if}
    </div>

<!-- 
<small>
    <ul id="pages" class="nav nav-tabs">
    <li class="active"><a href="#profile" data-toggle="tab">Most Recent</a></li>
    <li><a href="#home" data-toggle="tab">View All</a></li>
    <li><a href="#home" data-toggle="tab">Search</a></li>
    
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Search <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li><a href="#dropdown3" data-toggle="tab">@fat</a></li>
            <li><a href="#dropdown4" data-toggle="tab">@mdo</a></li>
        </ul>
    </li>
</ul>
<div id="pagesContent" class="tab-content" >
    <div class="tab-pane fade" id="home">
        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
    </div>
    <div class="tab-pane fade in active" id="profile">
        <p>Light Blue - is a next generation admin template based on the latest Metro design. There are few reasons we want to tell you, why we have created it:
            We didn't like the darkness of most of admin templates, so we created this light one. We didn't like the high contrast of most of admin templates, so we created this unobtrusive one.
            We searched for a solution of how to make widgets look like real widgets, so we decided that deep background - is what makes widgets look real.</p>
    </div>
    <div class="tab-pane fade" id="dropdown3">
        <p>Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
    </div>
    <div class="tab-pane fade" id="dropdown4">
        <p>They sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
    </div>
</div>
</small> -->