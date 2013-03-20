<!-- minicpromo -->
{debug}
<style type="text/css">
	.minicpromo {
		width: {$minic_promo.dimension.width}{$minic_promo.dimension.width_unit};
		height: {$minic_promo.dimension.height}{$minic_promo.dimension.height_unit};
		{if $minic_promo.background}
			background-color: {$minic_promo.background};
		{/if}
		{if $minic_promo.border.border_width && $minic_promo.border.border_style && $minic_promo.border.border_color}
			border: {$minic_promo.border.border_width}px {$minic_promo.border.border_style} {$minic_promo.border.border_color};
		{/if}
		{if $minic_promo.border.border_radius && $minic_promo.border.border_radius_unit}
			-webkit-border-radius: {$minic_promo.border.border_radius}{$minic_promo.border.border_radius_unit};
	   		border-radius: {$minic_promo.border.border_radius}{$minic_promo.border.border_radius_unit};
	   	{/if}
	   	{if $minic_promo.dimension.padding && $minic_promo.dimension.padding_unit}	
   			padding: {$minic_promo.dimension.padding}{$minic_promo.dimension.padding_unit};
   		{/if}

   		{if $minic_promo.position == "left"}
   			left: -{$minic_promo.dimension.width + 2*($minic_promo.dimension.padding + $minic_promo.border.border_width)}px;
   			margin-top: -{$minic_promo.dimension.height/2}{$minic_promo.dimension.height_unit};
   		{/if}
   		{if $minic_promo.position == "right"}
   			right: -{$minic_promo.dimension.width + 2*($minic_promo.dimension.padding + $minic_promo.border.border_width)}px;
   			margin-top: -{$minic_promo.dimension.height/2}{$minic_promo.dimension.height_unit};
   		{/if}
   		{if $minic_promo.position == "top"}
   			top: -{$minic_promo.dimension.height + 2*($minic_promo.dimension.padding + $minic_promo.border.border_width)}px;
   			margin-left: -{($minic_promo.dimension.width + 2*($minic_promo.dimension.padding) +2*($minic_promo.border.border_width))/2}{$minic_promo.dimension.width_unit};
   		{/if}
   		{if $minic_promo.position == "bottom"}
   			bottom: -{$minic_promo.dimension.height + 2*($minic_promo.dimension.padding + $minic_promo.border.border_width)}px;
   			margin-left: -{($minic_promo.dimension.width + 2*($minic_promo.dimension.padding) +2*($minic_promo.border.border_width))/2}{$minic_promo.dimension.width_unit};
   		{/if}
	}
	.minicpromo.active{
		{$minic_promo.position}: 0;
	}
	.minicpromo .promo-title a{
		color: {$minic_promo.title.title_color};
		font-size: {$minic_promo.title.title_size}{$minic_promo.title.title_unit};
		line-height: {$minic_promo.title.title_line_height};
	}
	.minicpromo .activator{
		{$minic_promo.position}: {$minic_promo.dimension.width + 2*($minic_promo.dimension.padding) + ($minic_promo.border.border_width)}px;
		{if $minic_promo.position == "bottom"}
			bottom: {$minic_promo.dimension.height + 2*($minic_promo.dimension.padding) + ($minic_promo.border.border_width)}px;
		{/if}
		{if $minic_promo.position == "top"}
			top: {$minic_promo.dimension.height + 2*($minic_promo.dimension.padding) + ($minic_promo.border.border_width)}px;
		{/if}
	}
</style>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$('.minicpromo').click(function() {
			$(this).toggleClass('active');
	});
});
</script>
<div class="minicpromo position-{$minic_promo.position}">
	<h2 class="promo-title"><a href="{$minic_promo.title.link}" title="{$minic_promo.title.promo_title}">{$minic_promo.title.promo_title}</a></h2>
	<p>{$minic_promo.description}</p>
	<div class="activator">
		<h2>{$minic_promo.activator_title}</h2>
	</div>
</div>
<!-- end minicpromo -->