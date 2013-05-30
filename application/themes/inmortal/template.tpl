{$head}
	<body>
		<!--[if lte IE 8]>
			<style type="text/css">
				body {
					background-image:url(images/bg.jpg);
					background-position:top center;
				}
			</style>
		<![endif]-->
        <section id="wrapper">
			{$modals}
			<header id="hand"></header>
            <header><a href="https://www.facebook.com/" id="hand2" target="_blank"></a></header>
			<header><a href="http://youtube.com" id="hand3" target="_blank"></a></header>
			<header><a href="http://twitter.com" id="hand4" target="_blank"></a></header>
            <header id="hand5"></header>
            <header><a href="register" id="hand6"></a></header>
			<ul id="top_menu">
				{foreach from=$menu_top item=menu_1}
					<li><a {$menu_1.link}>{$menu_1.name}</a></li>
				{/foreach}
			</ul>
			<div id="main">
				<aside id="left">
					<article>
						<h1 class="top">Main menu</h1>
						<ul id="left_menu">
							{foreach from=$menu_side item=menu_2}
								<li><a {$menu_2.link}><img src="{$image_path}bullet.png">{$menu_2.name}</a></li>
							{/foreach}
						</ul>
					</article>

				</aside>

				<aside id="right">
					<section id="slider_bg" {if !$show_slider}style="display:none;"{/if}>
						<div id="slider">
                          <div id="slider_frame">
							{foreach from=$slider item=image}
								<a href="{$image.link}"><img src="{$image.image}" title="{$image.text}"/></a>
							{/foreach}
                           </div>
						</div>
					</section>

					{$page}
				</aside>

				<div class="clear"></div>
			</div>
			<footer>
				<p>&copy; Copyright {date("Y")} {$serverName}</p>
			</footer>
		</section>
	</body>
</html>