<!DOCTYPE html>

<html lang="en">

  <head>
  
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Categories &amp; Latest Reviews</title>
    
    <!--COMMON SPECIFIC CSS BEGINS-->
	<link rel="stylesheet" href="css/common/bootstrap.min.css">
	<link rel="stylesheet" href="css/common/pageLayout.css">
	<link rel="stylesheet" href="css/common/fonts.css">
	<link rel="stylesheet" href="css/common/fontAwesome.css">
	<link rel="stylesheet" href="css/common/buttons.css">
	<link rel="stylesheet" href="css/common/customAlert.css">
	<link rel="stylesheet" href="css/common/progressIndicator.css">
	<link rel="stylesheet" href="css/common/masks.css">
	<link rel="stylesheet" href="css/common/z-index.css">
	
	<link rel="stylesheet" href="css/common/header/banner.css">
	<link rel="stylesheet" href="css/common/header/header.css">
	<link rel="stylesheet" href="css/common/header/burgerMenu.css">
	
	<link rel="stylesheet" href="css/common/leftRight.css">
	
	<link rel="stylesheet" href="css/common/footer/footer.css">
	<link rel="stylesheet" href="css/common/footer/footerMenu.css">
	<link rel="stylesheet" href="css/common/footer/newExistingUser.css">
	<link rel="stylesheet" href="css/common/footer/emailFromFooter.css">	
	
	<link rel="stylesheet" href="css/common/register/registerDlg.css">
	<link rel="stylesheet" href="css/common/login/loginDlg.css">
	<link rel="stylesheet" href="css/common/forgot/forgotDlg.css">
	<link rel="stylesheet" href="css/common/reset/resetDlg.css">
	
	<link rel="stylesheet" href="css/common/pp.css">
	<link rel="stylesheet" href="css/common/tc.css">
	<link rel="stylesheet" href="css/common/stars.css">
	<!--COMMON SPECIFIC CSS ENDS-->
	
	<!--INDEX PAGE SPECIFIC CSS BEGINS-->
	<link rel="stylesheet" href="css/index/categoryList.css">
	<link rel="stylesheet" href="css/index/entityList.css">
	<link rel="stylesheet" href="css/index/latest_reviews.css">
	<link rel="stylesheet" href="css/input/inputDlgId.css">
	<link rel="stylesheet" href="css/input/comments.css">
	<!--INDEX PAGE SPECIFIC CSS ENDS---->
	
	<!--LIST PAGE SPECIFIC CSS BEGINS-->
	<link rel="stylesheet" href="css/list/sub_category.css">
	<link rel="stylesheet" href="css/list/square_rect_box.css">
	
	<link rel="stylesheet" href="css/list/camera_sprite.css">
	<link rel="stylesheet" href="css/list/car_sprite.css">
	<link rel="stylesheet" href="css/list/cat_sprite.css">
	<link rel="stylesheet" href="css/list/dinnerDate_sprite.css">
	<link rel="stylesheet" href="css/list/dog_sprite.css">
	<link rel="stylesheet" href="css/list/fitness_sprite.css">
	<link rel="stylesheet" href="css/list/fragrance_sprite.css">
	<link rel="stylesheet" href="css/list/motorCycle_sprite.css">
	<link rel="stylesheet" href="css/list/movie_sprite.css">
	<link rel="stylesheet" href="css/list/nightLife_sprite.css">
	<link rel="stylesheet" href="css/list/salon_sprite.css">
	<link rel="stylesheet" href="css/list/scooter_sprite.css">
	<link rel="stylesheet" href="css/list/spa_sprite.css">
	<link rel="stylesheet" href="css/list/tattoo_sprite.css">
	
	<link rel="stylesheet" href="css/list/entity.css">
	<link rel="stylesheet" href="css/list/badge.css">
	<link rel="stylesheet" href="css/list/disclaimer.css">
	<link rel="stylesheet" href="css/list/search.css">
	<!--LIST PAGE SPECIFIC CSS ENDS---->
	
	<!--PROFILE CSS BEGINS-->
	<link rel="stylesheet" href="css/profile/profileDlg.css">
	<link rel="stylesheet" href="css/profile/upload_photo.css">
	<!--PROFILE CSS ENDS---->
	
	<!--HISTORY CSS BEGINS-->
	<link rel="stylesheet" href="css/history/historyDlg.css">
	<!--HISTORY CSS ENDS---->
	
	<!--GENERAL JS BEGINS-->
	<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>	
    <script src="js/z_general/jquery-2.1.0.min.js"></script>
    <script src="js/z_general/bootstrap.min.js"></script>
	<script src="js/z_general/ga.js"></script>
	<script src="js/z_general/gadd.js"></script>	
	<!--GENERAL JS ENDS-->

  </head>

  <body>
	
	<img src="images/common/progress.gif" class="progress-indicator" />

	<div class="webui-banner-mask">
		<div class="banner-container">
			<img src="images/common/banner.png" class="banner-img" />
		</div>
		<div class="webui-mobile-site-header text-center" title="Home">
			<span style="color: white" class="site-name">ri</span><span style="color: red" class="site-name">view</span><span style="color: white" class="site-name">z</span>
		</div>
	</div>
	<div class="webui-site-header" title="Home">
		<span style="color: white" class="site-name">ri</span><span style="color: red" class="site-name">view</span><span style="color: white" class="site-name">z</span>
	</div>
	
	<div class="burger-container" title="Click to login or register">
		<img src="images/common/burger-menu.png" class="burger-img">
	</div>	
	<div class="burger-links">
		<ul>
			<li><a href="javascript:void(0);" onclick="showLoginDlg()" title="Click to login">Log In</a></li>
			<li><a href="javascript:void(0);" onclick="showRegisterDlg()" title="Click to register">Register</a></li>
		</ul>
	</div>

    <nav class="page-nav">
	</nav><!-- nav ends -->

	<form class="dto-form" method="get">
		<input type="hidden" id="dto-form-category"    name="category"    value="" />
		<input type="hidden" id="dto-form-entity-id"   name="entity_id"   value="" />
		<input type="hidden" id="dto-form-entity-name" name="entity_name" value="" />
		<input type="hidden" id="dto-form-p"        name="pn"   value="index" />
		<input type="hidden" id="dto-form-j"         name="j"         value="" />
		
		<input type="hidden" id="dto-form-zu" name="zu" value="" />
	</form>

    <article class="page-article">
		
		<div class="left-side"><!-- left div begins -->
			
			<div class="category camera">Camera</div>
			<div class="camera_list" style="display:none;">
				<div class="entity">Canon</div>
				<div class="entity">Nikon</div>
				<div class="entity">Pentax</div>
				<div class="entity">Sony</div>
				<div class="entity">Fujifilm</div>
				<div class="entity">Olympus</div>
				<div class="entity">Philips</div>
				<div class="entity">Kodak</div>
				<div class="entity">Panasonic</div>
				<div class="entity">Samsung</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category car">Cars</div>
			<div class="car_list" style="display:none;">
				<div class="entity">Audi</div>
				<div class="entity">Fiat</div>
				<div class="entity">Hyundai</div>
				<div class="entity">Maruti-Suzuki</div>
				<div class="entity">Renault</div>
				<div class="entity">Toyota</div>
				<div class="entity">BMW</div>
				<div class="entity">Ford</div>
				<div class="entity">Jaguar</div>
				<div class="entity">Mercedes-Benz</div>
				<div class="entity">Skoda</div>
				<div class="entity">Volkswagen</div>
				<div class="entity">Chevrolet</div>
				<div class="entity">Honda</div>
				<div class="entity">Mahindra</div>
				<div class="entity">Nissan</div>
				<div class="entity">Tata</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category cat">Cats</div>
			<div class="Cats_list" style="display:none;">
				<div id="1" class="entity">Abyssinian cat</div>
				<div id="4" class="entity">Australian Mist</div>
				<div id="7" class="entity">Birman</div>
				<div id="10" class="entity">Burmese</div>
				<div id="13" class="entity">Cheetoh</div>
				<div id="16" class="entity">Devon Rex</div>
				<div id="19" class="entity">Highlander</div>
				<div id="22" class="entity bottom-margin">Persian</div>
				<div id="2" class="entity">Aegean cat</div>
				<div id="5" class="entity">Balinese cat</div>
				<div id="8" class="entity">Bombay</div>
				<div id="11" class="entity">Burmilla</div>
				<div id="14" class="entity">Cornish Rex</div>
				<div id="17" class="entity">Egyptian Mau</div>
				<div id="20" class="entity">Himalayan</div>
				<div id="23" class="entity">Siamese Cat</div>
				<div id="3" class="entity">American Bobtail</div>
				<div id="6" class="entity">Bengal cat</div>
				<div id="9" class="entity">British Shorthair</div>
				<div id="12" class="entity">Burmilla Long Hair</div>
				<div id="15" class="entity">Chinchilla Cat</div>
				<div id="18" class="entity">Exotic Shorthair</div>
				<div id="21" class="entity">Maine Coon</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category dog">Dogs</div>
			<div class="dog_list" style="display:none;">
				<div class="entity">Herding Group</div>
				<div class="entity">Non Sporting Group</div>
				<div class="entity">Toy Group</div>
				<div class="entity">Hound Group</div>
				<div class="entity">Sporting Group</div>
				<div class="entity">Working Group</div>
				<div class="entity">Native Indian Breeds</div>
				<div class="entity">Terrier Group</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category fitness_center">Fitness Centers</div>
			<div class="fitness_center_list" style="display:none;">
				<div class="entity">Bengaluru</div>
				<div class="entity">Delhi</div>
				<div class="entity">Kolkata</div>
				<div class="entity">Chandigarh</div>
				<div class="entity">Gurgaon</div>
				<div class="entity">Mumbai</div>
				<div class="entity">Chennai</div>
				<div class="entity">Hyderabad</div>
				<div class="entity">Pune</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category fragrance">Fragrances</div>
			<div class="fragrance_list" style="display:none;">
				<div class="entity">AZZARO</div>
				<div class="entity">Calvin Klein</div>
				<div class="entity">DIOR</div>
				<div class="entity">GIORGIO ARMANI</div>
				<div class="entity">HUGO BOSS</div>
				<div class="entity">PRADA</div>
				<div class="entity">BVLGARI</div>
				<div class="entity">CHANEL</div>
				<div class="entity">ESCADA</div>
				<div class="entity">GIVENCHY</div>
				<div class="entity">LACOSTE</div>
				<div class="entity">RALPH LAUREN</div>
				<div class="entity">BURBERRY</div>
				<div class="entity">DAVIDOFF</div>
				<div class="entity">ESTEE LAUDER</div>
				<div class="entity">GUCCI</div>
				<div class="entity">ISSEY MIYAKE</div>
				<div class="entity">VERSACE</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category motor_cycle">Motor Cycles</div>
			<div class="motor_cycle_list" style="display:none;">
				<div class="entity">Aprilia</div>
				<div class="entity">Ducati</div>
				<div class="entity">Honda</div>
				<div class="entity">KTM</div>
				<div class="entity">Suzuki</div>
				<div class="entity">Bajaj</div>
				<div class="entity">Harley-Davidson</div>
				<div class="entity">Hyosung</div>
				<div class="entity">Mahindra</div>
				<div class="entity">TVS</div>
				<div class="entity">DSK Benelli</div>
				<div class="entity">Hero</div>
				<div class="entity">Indian</div>
				<div class="entity">Royal Enfield</div>
				<div class="entity">Yamaha</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category movie">Movies</div>
			<div class="movie_list" style="display:none;">
				<div class="entity">Bengali</div>
				<div class="entity">Malayalam</div>
				<div class="entity">Telugu</div>
				<div class="entity">Hindi</div>
				<div class="entity">Marathi</div>
				<div class="entity">English</div>
				<div class="entity">Kannada</div>
				<div class="entity">Tamil</div>
				<div class="entity">Other Languages</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category night_life">Night Life</div>
			<div class="night_life_list" style="display:none;">
				<div class="entity">Bengaluru</div>
				<div class="entity">Delhi</div>
				<div class="entity">Kolkata</div>
				<div class="entity">Chandigarh</div>
				<div class="entity">Gurgaon</div>
				<div class="entity">Mumbai</div>
				<div class="entity">Chennai</div>
				<div class="entity">Hyderabad</div>
				<div class="entity">Pune</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category online_store">Online Stores</div>
			<div class="OnlineStore_list" style="display:none;">
				<div id="1" class="entity">amazon.in</div>
				<div id="2" class="entity">flipkart.com</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>			
			
			<div class="category packer_mover">Packers &amp; Movers</div>
			<div class="PackersAndMovers_list" style="display:none;">
				<div id="1" class="entity">Aadhunik Packers &amp; Movers</div>
				<div id="2" class="entity">Agility Packers &amp; Movers</div>
				<div id="3" class="entity">Chennai Packers &amp; Movers</div>
				<div id="4" class="entity">Global Express Packers &amp; Movers</div>
				<div id="5" class="entity">Kuber Logistics Movers &amp; Packers Pvt. Ltd</div>
				<div id="6" class="entity">Pragati Express Packers &amp; Movers</div>
				<div id="7" class="entity">ABT Packers &amp; Movers</div>
				<div id="8" class="entity">Apollo Relocation</div>
				<div id="9" class="entity">DHL Cargo Packers &amp; Movers</div>
				<div id="10" class="entity">Globe Logistics &amp; Packers Pvt. Ltd</div>
				<div id="11" class="entity">Nikhil International Packers &amp; Movers</div>
				<div id="12" class="entity">Sainik Packers &amp; Movers</div>
				<div id="13" class="entity">Agarwal Packers &amp; Movers Ltd</div>
				<div id="14" class="entity">Ascent Packers &amp; Movers</div>
				<div id="15" class="entity">Diamond National Packers &amp; Movers</div>
				<div id="16" class="entity">Jangra Freight Carrier</div>
				<div id="17" class="entity">Paradise Packers &amp; Movers</div>
				<div id="18" class="entity">SRM Relocation Packers &amp; Movers</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category restaurant">Restaurants</div>
			<div class="restaurant_list" style="display:none;">
				<div class="entity">Bengaluru</div>
				<div class="entity">Delhi</div>
				<div class="entity">Kolkata</div>
				<div class="entity">Chandigarh</div>
				<div class="entity">Gurgaon</div>
				<div class="entity">Mumbai</div>
				<div class="entity">Chennai</div>
				<div class="entity">Hyderabad</div>
				<div class="entity">Pune</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>

			<div class="category salon">Salons</div>
			<div class="salon_list" style="display:none;">
				<div class="entity">Bengaluru</div>
				<div class="entity">Delhi</div>
				<div class="entity">Kolkata</div>
				<div class="entity">Chandigarh</div>
				<div class="entity">Gurgaon</div>
				<div class="entity">Mumbai</div>
				<div class="entity">Chennai</div>
				<div class="entity">Hyderabad</div>
				<div class="entity">Pune</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>
			
			<div class="category scooter">Scooters</div>
			<div class="scooter_list" style="display:none;">
				<div class="entity">Hero</div>
				<div class="entity">Mahindra</div>
				<div class="entity">Vespa</div>
				<div class="entity">Honda</div>
				<div class="entity">Suzuki</div>
				<div class="entity">Yamaha</div>
				<div class="entity">LML</div>
				<div class="entity">TVS</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>			
			
			<div class="category spa_center">Spa Centers</div>
			<div class="spa_center_list" style="display:none;">
				<div class="entity">Bengaluru</div>
				<div class="entity">Delhi</div>
				<div class="entity">Kolkata</div>
				<div class="entity">Chandigarh</div>
				<div class="entity">Gurgaon</div>
				<div class="entity">Mumbai</div>
				<div class="entity">Chennai</div>
				<div class="entity">Hyderabad</div>
				<div class="entity">Pune</div>
				<div class="entity cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>			
			
			<div class="category tattoo_parlor">Tattoo Parlors</div>
			<div class="tattoo_parlor_list" style="display:none;">
				<div class="entity">Bengaluru</div>
				<div class="entity">Delhi</div>
				<div class="entity">Kolkata</div>
				<div class="entity">Chandigarh</div>
				<div class="entity">Gurgaon</div>
				<div class="entity">Mumbai</div>
				<div class="entity">Chennai</div>
				<div class="entity">Hyderabad</div>
				<div class="entity">Pune</div>
				<div class="cancel-btn-container-entity-list">
					<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
						<i class="glyphicon glyphicon-remove"></i>
					</button>
				</div>
			</div>

		</div><!-- left div ends -->
		
		<div class="right-side">
		</div><!-- right div ends -->
		
	</article><!-- article ends -->

    <div class="page-ad">
	</div><!-- ad div ends -->

	<!--footer begins-->
    <footer class="site-footer">
		<div class="company-name">
			<p class="copy-rights">&copy;2015 Raven Media LLP</p>
			<p class="copy-rights">All rights reserved</p>
		</div>
		<div class="footer-menu">
			<div class="footer-menu-links">
				<ul>
					<li><a href="javascript:void(0);" class="contact-us">Contact Us</a></li>					
					<li><a href="javascript:void(0);" class="report-bug">Report bug</a></li>
					<li><a href="javascript:void(0);" class="site-feedback">Site feedback</a></li>
					<li><a href="javascript:void(0);" class="privacy-policy">Privacy Policy</a></li>
					<li><a href="javascript:void(0);" class="terms-and-conditions">Terms &amp; Conditions</a></li>
				</ul>
			</div>
			<img src="images/common/footer-menu.png" class="footer-menu-img">
		</div>	
	</footer>
	<!-- footer ends -->
	
	<div class="input-dialog-container" >
		<div class="input-dialog">
		
			<div class="legend text-center">
				<span class="label label-success  btn-xs">Best</span>
				<span class="label label-primary  btn-xs">Good</span>
				<span class="label label-info  btn-xs">Avg</span>
				<span class="label label-warning  btn-xs">Below Avg</span>
				<span class="label label-danger  btn-xs">No Idea</span>
			</div>
			
			<form class="input-form">
				

				
			</form>
			<div class="cancel-btn-container-entity-list">
				<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
					<i class="glyphicon glyphicon-remove"></i>
				</button>
			</div>
		</div>
	</div>	
	
	<div class="profile-dialog-container" >
		<div class="profile-dialog">

			<div class="photo-record">
				<div class="user-img" class="col-md-12 col-lg-12" align="center">

				</div>
			</div>

			<form class="profile-form" method="post" action="#" enctype="multipart/form-data">

				<div id="email" class="profile-row"></div>
				<div id="name" class="profile-row"></div>
				<div id="regdate" class="profile-row"></div>
				<div id="status" class="profile-row"></div>

				<!-- UPLOAD PHOTO DIALOG - BEGINS -->
				<div class="upload-photo-dialog" >
					<span class="upload-photo-btn-container">
						<input type="button" value="Upload Photo" class="upload-photo-btn" />
						<input type="file" name="uploaded-photo" id="upload-photo-file" class="upload-photo-file" />
					</span>
					<input type="button" value="Remove Photo" onclick="removePhoto()" class="remove-photo-btn" />
					<p class="valid-photo-text">*Only JPEG/JPG files allowed - Max file size allowed is 2 MB</p>
				</div>
				
				<!-- UPLOAD PHOTO DIALOG - ENDS -->
				<input name="userId" id="userId" type="hidden" value="">
				<input name="userName" id="userName" type="hidden" value="">
				<input name="emailId" id="emailId" type="hidden" value="">
			</form>

			<div class="profile-delete-btn-container text-center">
				<button type="button" class="btn btn-info profile-delete-btn" onclick="deleteAccount()">Delete Account</button>
			</div>
			
			<div class="cancel-btn-container-entity-list">
				<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
					<i class="glyphicon glyphicon-remove"></i>
				</button>
			</div>			

		</div>
	</div>
	
	<div class="history-dialog-container" >
		<div class="history-dialog">
			<form class="history-form">
				

			</form>
			<div class="delete-history-btn-container text-center">
				<button type="button" class="btn btn-info delete-history-btn" onclick="deleteAll()">Delete All</button>
			</div>
			<p class="all-clear">All Clear</p>
			
			<div class="cancel-btn-container-entity-list">
				<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
					<i class="glyphicon glyphicon-remove"></i>
				</button>
			</div>	
		</div>
	</div>
	
	<!-- New/Existing User dialog - begins  -->
	<div style="display: none;" class="new-existing-user-dialog">
		<input type="button" value="Existing User" onclick="showLoginDlg()" class="existing-user" />			
		<input type="button" value="New User" onclick="showRegisterDlg()" class="new-user" />
		<input type="hidden" value="" class="new-existing-user-form" />
		<input type="hidden" value="" class="new-existing-user-action" />
		<input type="hidden" value="" class="new-existing-user-login-src" />
	</div>
	<!-- New/Existing User dialog - ends  -->

	<!-- email from footer dialog begins-->
	<div class="email-dialog">
		<form class="email-form" method="post" action="#">
			<span style="display:none">To:</span>
			<span style="display:none"><input type="text" name="email-dest" value="contact@riviewz.com" class="email-dest"></span>
			
			<span style="display:none">Subject:</span>
			<span style="display:none"><input type="text" name="email-subject" value="" class="email-subject"></span>						
			
			<span class="email-content-container"><textarea name="email-content" placeholder="Please type here..." rows="10" cols="50" class="email-content"></textarea></span>
			
			<span style="display:none" class="error"></span>
			
			<span class="email-btn-container"><input type="button" value="Send Email" onclick="sendEmail()" class="email-btn"></span>
		</form>
		<div class="cancel-btn-container-entity-list">
			<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
				<i class="glyphicon glyphicon-remove"></i>
			</button>
		</div>
	</div>
	<!--email from footer dialog ends---->	
	
	<!--register dialog begins-->
	<div class="register-dialog">
		<form method="post" action="#" class="register-form">
			<div class="register-form-input">
				<input type="email" value="" autocomplete="on" placeholder="&#xf0e0; Email address" class="register-email">
				<p class="register-email-blank">Please enter your email address</p>
				<p class="register-email-invalid">Please enter a valid email address</p>
				
				<input type="password" value="" autocomplete="on" placeholder="&#xf023; Password" class="register-password">
				<p class="register-password-blank">Please enter the password</p>
				
				<input type="text" value="" autocomplete="on" placeholder="&#xf007; User name" class="register-username">
				<p class="register-username-blank">Please enter a user name</p>						
				
				<input type="button" value="Register" onclick="register()" class="form-control register-btn">
			</div>

			<div class="register-tc">
				<input id="tcCheck" name="tcCheck" type="checkbox" value="" class="register-tc-check"/>
				<label id="tcAgree" for="tcCheck" class="register-tc-label">I agree to the terms &amp; conditions</label>
				<a href="javascript:void(0);" onclick="tc()" class="register-tc-link">Terms &amp; Conditions</a>
			</div>			
			
			<div class="register-login-link">
				<a class="register-login-link-label">Click here to Log In</a>
			</div>
			
			<div class="cancel-btn-container">
				<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
					<i class="glyphicon glyphicon-remove"></i>
				</button>
			</div>			
		</form>
	</div>
	<!--register dialog ends---->
	
	<!--login dialog begins-->
	<div class="login-dialog">
		<form method="post" action="#" class="login-form">
			<div class="login-form-input">
				<input type="email" value="" autocomplete="on" placeholder="&#xf0e0; Email address" class="login-email">
				<p class="login-email-blank">Please enter your email address</p>
				<p class="login-email-invalid">Please enter a valid email address</p>
				
				<input type="password" value="" autocomplete="on" placeholder="&#xf023; Password" class="login-password">
				<p class="login-password-blank">Please enter the password</p>
				
				<input type="button" value="Login" onclick="login()" class="form-control login-btn">
			</div>
			
			<div class="login-forgot-link">
				<a class="login-forgot-link-label">Forgot Pasword</a>
			</div>

			<div class="login-register-link">
				<a class="login-register-link-label">Click here to Register</a>
			</div>
			
			<div class="cancel-btn-container">
				<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
					<i class="glyphicon glyphicon-remove"></i>
				</button>
			</div>
		</form>
	</div>
	<!--login dialog ends---->	

	<!--forgot password dialog begins-->
	<div class="forgot-dialog">
		<form method="post" action="#" class="forgot-form">
			<div class="forgot-form-input">
				<input type="email" value="" autocomplete="on" placeholder="&#xf0e0; Email address" class="forgot-email">
				<p class="forgot-email-blank">Please enter your email address</p>
				<p class="forgot-email-invalid">Please enter a valid email address</p>
				
				<input type="button" value="Email Password" onclick="forgot()" class="form-control forgot-btn">
			</div>
			
			<div class="cancel-btn-container">
				<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
					<i class="glyphicon glyphicon-remove"></i>
				</button>
			</div>			
		</form>
	</div>
	<!--forgot password dialog ends---->
	
	<!--reset-password dialog begins-->
	<div class="reset-password-dialog">
		<form method="post" action="#" class="reset-password-form">
			<div class="reset-password-form-input">
				<input type="email" value="" autocomplete="on" placeholder="&#xf0e0; Email address" class="reset-password-email">
				
				<input type="password" value="" autocomplete="on" placeholder="&#xf023; One Time Password" class="reset-password-one-time-password">
				<p class="reset-password-one-time-password-blank">Please enter the one-time password</p>
				
				<input type="password" value="" autocomplete="on" placeholder="&#xf023; New Password" class="reset-password-new-password">
				<p class="reset-password-new-password-blank">Please enter the new password</p>
				
				<input type="button" value="Reset" onclick="resetPassword()" class="form-control reset-password-btn">
			</div>
			
			<div class="cancel-btn-container">
				<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
					<i class="glyphicon glyphicon-remove"></i>
				</button>
			</div>			
		</form>
	</div>
	<!--reset-password dialog ends---->	

	<!--alert dialog begins-->
	<div class="alert-mask"></div>
	<div class="alert-dialog">
		<div class="alert-header"></div>
		<div class="alert-body">
			<p class="alert-message"></p>
		</div>
		<div class="alert-footer"></div>
	</div>
	<!--alert dialog ends---->

	<!--pp dialog begins-->
	<div class="pp-dialog-container" >
		<div class="pp-dialog">

		</div>
		<div class="cancel-btn-container-entity-list">
			<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
				<i class="glyphicon glyphicon-remove"></i>
			</button>
		</div>
	</div>
	<!--pp dialog ends-->	

	<!--tc dialog begins-->
	<div class="tc-dialog-container" >
		<div class="tc-dialog">
		
		</div>
		<div class="cancel-btn-container-entity-list">
			<button type="button" class="tabledit-remove-button btn btn-sm" style="margin-left: 5px; background-color: red" onclick="cancel();">
				<i class="glyphicon glyphicon-remove"></i>
			</button>
		</div>
	</div>
	<!--tc dialog ends-->
	
    <!--INDEX SPECIFIC JS BEGINS-->
	<script src="js/index/getAndSetUrls.js"></script>
    <script src="js/index/confirmRegistration.js"></script>
    <script src="js/index/showResetPasswordDlg.js"></script>
    <script src="js/index/resetPassword.js"></script>
    <script src="js/index/fieldValidation.js"></script>
    <script src="js/index/zOnLoad.js"></script>
    <script src="js/index/getLatestReviews.js"></script>
	<script src="js/index/showEntityList.js"></script>
	<script src="js/index/getReviewsByEntity.js"></script>
	<script src="js/index/getEntityDetails.js"></script>
	<script src="js/index/showRegisterDlg.js"></script>
	<script src="js/index/register.js"></script>
	<script src="js/index/loginLink.js"></script>
	<script src="js/index/keyboardClick.js"></script>
	<script src="js/index/showLoginDlg.js"></script>
	<script src="js/index/login.js"></script>
	<script src="js/index/logout.js"></script>
	<script src="js/index/forgotLink.js"></script>
	<script src="js/index/registerLink.js"></script>
	<script src="js/index/keyboardClick.js"></script>
	<script src="js/index/showForgotDlg.js"></script>
	<script src="js/index/forgot.js"></script>
	<!--INDEX SPECIFIC JS ENDS-->
	
	<!--COMMON JS BEGINS-->
	<script src="js/common/cookieManagement.js"></script>
	<script src="js/common/progressIndicator.js"></script>	
	<script src="js/common/masks.js"></script>
	<script src="js/common/pp.js"></script>
	<script src="js/common/tc.js"></script>
	<script src="js/common/actionPerformingAlert.js"></script>
	<script src="js/common/formSubmittingAlert.js"></script>
	<script src="js/common/normalAlert.js"></script>
	<script src="js/common/siteNameClick.js"></script>
	<script src="js/common/burgerMenu.js"></script>
	<script src="js/common/configureBurgerMenu.js"></script>
	<script src="js/common/footerMenu.js"></script>
	<script src="js/common/newOrExistingUser.js"></script>
	<script src="js/common/emailFromFooter.js"></script>
	<script src="js/common/inputDlgId.js"></script>
	<!--COMMON JS ENDS-->
	
	<!--PROFILE SPECIFIC JS BEGINS---->
	<script src="js/profile/show-profile.js"></script>
	<script src="js/profile/upload-photo.js"></script>
	<script src="js/profile/remove-photo.js"></script>
	<script src="js/profile/delete-account.js"></script>
	<!--PROFILE SPECIFIC JS ENDS---->
	
	<!--HISTORY SPECIFIC JS BEGINS---->
	<script src="js/history/show-history.js"></script>
	<script src="js/history/edit-history.js"></script>
	<script src="js/history/delete-history.js"></script>
	
	<script src="js/history/submit_edited_history.js"></script>
	<!--HISTORY SPECIFIC JS ENDS---->
	
	<!--Z_ENC_DEC JS BEGINS-->
	<script src="js/z_enc_dec/aes.js"></script>
	<script src="js/z_enc_dec/pbkdf2.js"></script>
	<script src="js/z_enc_dec/AesUtil.js"></script>
	<script src="js/z_enc_dec/encrypt_decrypt.js"></script>
	<!--Z_ENC_DEC JS ENDS-->

  </body>

</html>