<!doctype html>

<!--[if IEMobile 7 ]> <html <?php language_attributes(); ?>class="no-js iem7"> <![endif]-->
<!--[if lt IE 7 ]> <html <?php language_attributes(); ?> class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html <?php language_attributes(); ?> class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html <?php language_attributes(); ?> class="no-js ie8"> <![endif]-->
<!--[if (gte IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html <?php language_attributes(); ?> class="no-js"><!--<![endif]-->

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

		<title>
			<?php if ( !is_front_page() ) { echo wp_title( ' ', true, 'left' ); echo ' | '; }
			echo bloginfo( 'name' ); echo ' - '; bloginfo( 'description', 'display' );  ?>
		</title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- For everything else -->
		<link rel="shortcut icon" href="http://www.startechconf.com/favicon.ico">

		<!-- media-queries.js (fallback) -->
		<!--[if lt IE 9]>
			<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
		<![endif]-->

		<!-- html5.js -->
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

  		<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">

  		<link rel="stylesheet/less" type="text/css" href="<?php echo get_template_directory_uri(); ?>/less/bootstrap.less">
  		<link rel="stylesheet/less" type="text/css" href="<?php echo get_template_directory_uri(); ?>/less/responsive.less">
		<link href='http://roboto-webfont.googlecode.com/svn/trunk/roboto.all.css' rel='stylesheet' type='text/css'>

		<!-- wordpress head functions -->
		<?php wp_head(); ?>
		<!-- end of wordpress head -->

		<!-- theme options from options panel -->
		<?php get_wpbs_theme_options(); ?>

		<?php

			// check wp user level
			get_currentuserinfo();
			// store to use later
			global $user_level;

			// get list of post names to use in 'typeahead' plugin for search bar
			if(of_get_option('search_bar', '1')) { // only do this if we're showing the search bar in the nav

				global $post;
				$tmp_post = $post;
				$get_num_posts = 40; // go back and get this many post titles
				$args = array( 'numberposts' => $get_num_posts );
				$myposts = get_posts( $args );
				$post_num = 0;

				global $typeahead_data;
				$typeahead_data = "[";

				foreach( $myposts as $post ) :	setup_postdata($post);
					$typeahead_data .= '"' . get_the_title() . '",';
				endforeach;

				$typeahead_data = substr($typeahead_data, 0, strlen($typeahead_data) - 1);

				$typeahead_data .= "]";

				$post = $tmp_post;

			} // end if search bar is used

		?>

	</head>

	<body <?php body_class(); ?>>

		<header role="banner">
			<div id="inner-header" class="clearfix">

				<div class="navbar navbar-fixed-top">
							<div class="strip">
			<p class="back"><a href="http://www.startechconf.com/">&laquo; Volver al sitio StarTechConf</a></p>
		</div>
					<div class="navbar-inner">
						<div class="container-fluid row-fluid nav-container">
							<nav role="navigation" class="span8">
								<a class="brand" id="logo" title="<?php echo get_bloginfo('description'); ?>" href="<?php echo home_url(); ?>"><img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" width="318" height="74" alt="<?php bloginfo('name'); ?>" /></a>
							</nav>
							<div class="span4">
								<h3>25 y 26 Octubre 2013</h3>
							</div>

						</div>
					</div>
				</div>

			</div> <!-- end #inner-header -->

		</header> <!-- end header -->
									<p class="back"><a href="<?php echo home_url(); ?>">Home</a></p>
		<div class="container-fluid">
