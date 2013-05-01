module ApplicationHelper
  def current_locale
    params[:locale] || 'es'
  end

  def locale_li(locale)
    content_tag('li', class: ('selected' if current_locale == locale)) do
      link_to t({'es' => :spanish, 'en' => :english, 'pt' => :portuguese}[locale]),
              url_for(locale: locale)
    end
  end

  def preregistered_tweet_button
    %q|<a href="https://twitter.com/share" class="twitter-share-button" data-via="startechconf" data-url="http://www.startechconf.com" data-text="Me acabo de pre-registrar por un 30% de descuento en la @StarTechConf." data-lang="es" data-size="large" data-count="none">Comparte en Twitter</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>|.html_safe
  end

  def preregistered_fb_button
    %q|<div class="fb-like" data-href="http://www.startechconf.com" data-send="true" data-layout="button_count" data-width="450" data-show-faces="true"></div>|.html_safe
  end

  def include_facebook_js_sdk
    %q|<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1&appId=138736539528656";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>|.html_safe
  end

  def images
    # Lista de imagenes generadas con el navegador cargando las
    # siguientes URLs:
    # - http://www.flickr.com/photos/continuumchile/sets/72157632543758999/
    # - http://www.flickr.com/photos/continuumchile/sets/72157632543758999/?page=2
    #
    # ...Ejecutando el siguiente script:
    # imgs = $x("//img[@class='pc_img' and @width=75]")
    # for (var x in imgs) { console.log('["' + imgs[x].src + '", "' + imgs[x].parentNode.href + '/lightbox/"],') }
    [
      ["http://farm9.staticflickr.com/8473/8390680472_25d58a0414_q.jpg", "http://www.flickr.com/photos/continuumchile/8390680472/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8079/8389593441_b519275719_q.jpg", "http://www.flickr.com/photos/continuumchile/8389593441/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8078/8390678292_166b1eca4f_q.jpg", "http://www.flickr.com/photos/continuumchile/8390678292/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8230/8389591425_f5b3fa1347_q.jpg", "http://www.flickr.com/photos/continuumchile/8389591425/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8077/8390676428_ffb9bf1dd2_q.jpg", "http://www.flickr.com/photos/continuumchile/8390676428/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8224/8389588631_589443b8f7_q.jpg", "http://www.flickr.com/photos/continuumchile/8389588631/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8226/8390672474_eaab1de0b7_q.jpg", "http://www.flickr.com/photos/continuumchile/8390672474/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8217/8390670224_fd040bf3d7_q.jpg", "http://www.flickr.com/photos/continuumchile/8390670224/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8475/8390667714_267519450d_q.jpg", "http://www.flickr.com/photos/continuumchile/8390667714/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8085/8389579713_24d421d3f5_q.jpg", "http://www.flickr.com/photos/continuumchile/8389579713/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8187/8390663526_4f73a87c2b_q.jpg", "http://www.flickr.com/photos/continuumchile/8390663526/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8365/8389575191_56d360f256_q.jpg", "http://www.flickr.com/photos/continuumchile/8389575191/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8354/8390659720_36c0e220e8_q.jpg", "http://www.flickr.com/photos/continuumchile/8390659720/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8234/8390657126_cf6d4c45ab_q.jpg", "http://www.flickr.com/photos/continuumchile/8390657126/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8372/8390654426_3c98364fd8_q.jpg", "http://www.flickr.com/photos/continuumchile/8390654426/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8077/8389565825_a958b0d91d_q.jpg", "http://www.flickr.com/photos/continuumchile/8389565825/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8324/8390649080_a1202b341c_q.jpg", "http://www.flickr.com/photos/continuumchile/8390649080/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8218/8390646496_031c07072a_q.jpg", "http://www.flickr.com/photos/continuumchile/8390646496/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8083/8389559703_f4e66a5385_q.jpg", "http://www.flickr.com/photos/continuumchile/8389559703/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8235/8390644636_1c72ed92cf_q.jpg", "http://www.flickr.com/photos/continuumchile/8390644636/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8098/8390643714_31d1c4d61b_q.jpg", "http://www.flickr.com/photos/continuumchile/8390643714/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8468/8390642624_93f87bf21c_q.jpg", "http://www.flickr.com/photos/continuumchile/8390642624/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8093/8389555695_6c3659afb0_q.jpg", "http://www.flickr.com/photos/continuumchile/8389555695/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8354/8390640692_5ae96dac2c_q.jpg", "http://www.flickr.com/photos/continuumchile/8390640692/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8085/8389553859_b2221fdb71_q.jpg", "http://www.flickr.com/photos/continuumchile/8389553859/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8372/8389528811_b4fcb5ae94_q.jpg", "http://www.flickr.com/photos/continuumchile/8389528811/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8235/8390613518_a3b1753853_q.jpg", "http://www.flickr.com/photos/continuumchile/8390613518/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8080/8390611920_60e69fa59b_q.jpg", "http://www.flickr.com/photos/continuumchile/8390611920/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8232/8389525069_b2602cf064_q.jpg", "http://www.flickr.com/photos/continuumchile/8389525069/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8515/8389523729_37fcc07151_q.jpg", "http://www.flickr.com/photos/continuumchile/8389523729/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8498/8389522343_0276b40bbe_q.jpg", "http://www.flickr.com/photos/continuumchile/8389522343/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8220/8389521637_c37aaf7712_q.jpg", "http://www.flickr.com/photos/continuumchile/8389521637/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8330/8390605980_c6400884af_q.jpg", "http://www.flickr.com/photos/continuumchile/8390605980/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8502/8390604678_2100a9432f_q.jpg", "http://www.flickr.com/photos/continuumchile/8390604678/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8474/8389517737_13342a9e9f_q.jpg", "http://www.flickr.com/photos/continuumchile/8389517737/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8192/8389516469_c36dc5c7f1_q.jpg", "http://www.flickr.com/photos/continuumchile/8389516469/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8501/8389514067_d18ae35862_q.jpg", "http://www.flickr.com/photos/continuumchile/8389514067/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8334/8390597544_506502955b_q.jpg", "http://www.flickr.com/photos/continuumchile/8390597544/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8074/8390595376_2935953f81_q.jpg", "http://www.flickr.com/photos/continuumchile/8390595376/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8214/8389507223_9702882ac7_q.jpg", "http://www.flickr.com/photos/continuumchile/8389507223/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8072/8389505409_8c0ef3c9c0_q.jpg", "http://www.flickr.com/photos/continuumchile/8389505409/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8497/8389502963_5e4cf9e283_q.jpg", "http://www.flickr.com/photos/continuumchile/8389502963/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8085/8390586338_674e6af3bd_q.jpg", "http://www.flickr.com/photos/continuumchile/8390586338/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8473/8390583812_69d183cb25_q.jpg", "http://www.flickr.com/photos/continuumchile/8390583812/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8366/8390581318_dbb6dcc573_q.jpg", "http://www.flickr.com/photos/continuumchile/8390581318/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8365/8389493725_2cc2eb6bcd_q.jpg", "http://www.flickr.com/photos/continuumchile/8389493725/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8331/8389491911_92089f8deb_q.jpg", "http://www.flickr.com/photos/continuumchile/8389491911/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8515/8390575964_2292f97a68_q.jpg", "http://www.flickr.com/photos/continuumchile/8390575964/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8378/8390574214_17856bb2c2_q.jpg", "http://www.flickr.com/photos/continuumchile/8390574214/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8235/8390572260_a6848a2dc1_q.jpg", "http://www.flickr.com/photos/continuumchile/8390572260/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8229/8390570728_dc15a589f9_q.jpg", "http://www.flickr.com/photos/continuumchile/8390570728/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8044/8389483721_f2575034a0_q.jpg", "http://www.flickr.com/photos/continuumchile/8389483721/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8215/8390567968_a1d66d53c6_q.jpg", "http://www.flickr.com/photos/continuumchile/8390567968/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8226/8389481157_72b6e18c64_q.jpg", "http://www.flickr.com/photos/continuumchile/8389481157/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8471/8389479443_919da1539d_q.jpg", "http://www.flickr.com/photos/continuumchile/8389479443/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8366/8390562196_e8cac6327b_q.jpg", "http://www.flickr.com/photos/continuumchile/8390562196/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8050/8390561050_7d31b4b5b5_q.jpg", "http://www.flickr.com/photos/continuumchile/8390561050/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8088/8389474165_ed5651d6f1_q.jpg", "http://www.flickr.com/photos/continuumchile/8389474165/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8195/8390557380_155b97527d_q.jpg", "http://www.flickr.com/photos/continuumchile/8390557380/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8497/8389470753_777a0d855b_q.jpg", "http://www.flickr.com/photos/continuumchile/8389470753/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8472/8389468723_3afcd002da_q.jpg", "http://www.flickr.com/photos/continuumchile/8389468723/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8357/8389467233_2ed67e002a_q.jpg", "http://www.flickr.com/photos/continuumchile/8389467233/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8234/8390551452_c3c4553c1e_q.jpg", "http://www.flickr.com/photos/continuumchile/8390551452/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8497/8389464705_7a40e1ee2d_q.jpg", "http://www.flickr.com/photos/continuumchile/8389464705/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8081/8389463231_23bfdecd7f_q.jpg", "http://www.flickr.com/photos/continuumchile/8389463231/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8363/8390546688_c8617775b6_q.jpg", "http://www.flickr.com/photos/continuumchile/8390546688/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8333/8390544752_f35b88b8d1_q.jpg", "http://www.flickr.com/photos/continuumchile/8390544752/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8365/8389457975_97754416bc_q.jpg", "http://www.flickr.com/photos/continuumchile/8389457975/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8233/8389456379_3dbd2f49e2_q.jpg", "http://www.flickr.com/photos/continuumchile/8389456379/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8366/8389454037_f4344b7a19_q.jpg", "http://www.flickr.com/photos/continuumchile/8389454037/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8086/8389451591_34c2db5b62_q.jpg", "http://www.flickr.com/photos/continuumchile/8389451591/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8051/8389449979_d14d861c62_q.jpg", "http://www.flickr.com/photos/continuumchile/8389449979/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8506/8389447851_7530513379_q.jpg", "http://www.flickr.com/photos/continuumchile/8389447851/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8052/8389445681_2310383c61_q.jpg", "http://www.flickr.com/photos/continuumchile/8389445681/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8513/8390528690_0b7df709ac_q.jpg", "http://www.flickr.com/photos/continuumchile/8390528690/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8054/8389441405_d962d3e870_q.jpg", "http://www.flickr.com/photos/continuumchile/8389441405/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8187/8390525402_ee63bc955a_q.jpg", "http://www.flickr.com/photos/continuumchile/8390525402/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8465/8389438869_329daa161e_q.jpg", "http://www.flickr.com/photos/continuumchile/8389438869/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8369/8389436663_da81a32f14_q.jpg", "http://www.flickr.com/photos/continuumchile/8389436663/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8079/8390519666_c6b386f492_q.jpg", "http://www.flickr.com/photos/continuumchile/8390519666/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8082/8389432049_c9885548ba_q.jpg", "http://www.flickr.com/photos/continuumchile/8389432049/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8332/8389429927_8a2dd6e529_q.jpg", "http://www.flickr.com/photos/continuumchile/8389429927/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8090/8390513732_99f7d0dfc0_q.jpg", "http://www.flickr.com/photos/continuumchile/8390513732/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8075/8389426597_d1966a646d_q.jpg", "http://www.flickr.com/photos/continuumchile/8389426597/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8084/8390509192_c2e0c6b366_q.jpg", "http://www.flickr.com/photos/continuumchile/8390509192/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8373/8390506890_7e87e241f2_q.jpg", "http://www.flickr.com/photos/continuumchile/8390506890/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8464/8390506080_1507f70d6c_q.jpg", "http://www.flickr.com/photos/continuumchile/8390506080/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8494/8389419583_466539bf6b_q.jpg", "http://www.flickr.com/photos/continuumchile/8389419583/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8354/8390502610_401b5abe81_q.jpg", "http://www.flickr.com/photos/continuumchile/8390502610/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8095/8390501366_95ee7777e9_q.jpg", "http://www.flickr.com/photos/continuumchile/8390501366/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8225/8389414609_eeddd2bfee_q.jpg", "http://www.flickr.com/photos/continuumchile/8389414609/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8355/8390498230_c058eb0a6d_q.jpg", "http://www.flickr.com/photos/continuumchile/8390498230/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8055/8389411201_32c74a3f52_q.jpg", "http://www.flickr.com/photos/continuumchile/8389411201/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8358/8389409223_e6537d7d58_q.jpg", "http://www.flickr.com/photos/continuumchile/8389409223/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8495/8389407665_83468afbc0_q.jpg", "http://www.flickr.com/photos/continuumchile/8389407665/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8471/8389405929_3b7ec78416_q.jpg", "http://www.flickr.com/photos/continuumchile/8389405929/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8355/8389403931_eb071b8316_q.jpg", "http://www.flickr.com/photos/continuumchile/8389403931/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8474/8390487134_65edb3beef_q.jpg", "http://www.flickr.com/photos/continuumchile/8390487134/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8375/8390485276_59f6501b21_q.jpg", "http://www.flickr.com/photos/continuumchile/8390485276/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8517/8389398537_cf02c36058_q.jpg", "http://www.flickr.com/photos/continuumchile/8389398537/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8358/8390481704_4e368c3728_q.jpg", "http://www.flickr.com/photos/continuumchile/8390481704/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8323/8389394779_1bc85443d8_q.jpg", "http://www.flickr.com/photos/continuumchile/8389394779/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8088/8389393045_47901c6f38_q.jpg", "http://www.flickr.com/photos/continuumchile/8389393045/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8503/8390476180_296d5d02ae_q.jpg", "http://www.flickr.com/photos/continuumchile/8390476180/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8500/8390474454_70d0e4fe2a_q.jpg", "http://www.flickr.com/photos/continuumchile/8390474454/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8184/8390473026_438319b4d6_q.jpg", "http://www.flickr.com/photos/continuumchile/8390473026/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8513/8390471870_2897dbc3c3_q.jpg", "http://www.flickr.com/photos/continuumchile/8390471870/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8049/8389385329_2e4b1803ca_q.jpg", "http://www.flickr.com/photos/continuumchile/8389385329/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8331/8389384179_64a90f2c6b_q.jpg", "http://www.flickr.com/photos/continuumchile/8389384179/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8092/8390468254_bc3ca507da_q.jpg", "http://www.flickr.com/photos/continuumchile/8390468254/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8222/8390467078_2d4a95aeb8_q.jpg", "http://www.flickr.com/photos/continuumchile/8390467078/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8515/8390465560_3486cc5ccb_q.jpg", "http://www.flickr.com/photos/continuumchile/8390465560/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8093/8390464524_d17bd89a91_q.jpg", "http://www.flickr.com/photos/continuumchile/8390464524/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8375/8390463042_d619774363_q.jpg", "http://www.flickr.com/photos/continuumchile/8390463042/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8472/8389376375_d22abff8f7_q.jpg", "http://www.flickr.com/photos/continuumchile/8389376375/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8048/8390460688_bf74da30ef_q.jpg", "http://www.flickr.com/photos/continuumchile/8390460688/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8327/8389373937_3dbe3e3234_q.jpg", "http://www.flickr.com/photos/continuumchile/8389373937/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8371/8389372267_43df69d4eb_q.jpg", "http://www.flickr.com/photos/continuumchile/8389372267/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8194/8390456564_fe019ec998_q.jpg", "http://www.flickr.com/photos/continuumchile/8390456564/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8186/8389369337_260b9d4c42_q.jpg", "http://www.flickr.com/photos/continuumchile/8389369337/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8056/8390452116_cbd82a8352_q.jpg", "http://www.flickr.com/photos/continuumchile/8390452116/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8465/8389363845_8430d9777d_q.jpg", "http://www.flickr.com/photos/continuumchile/8389363845/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8376/8389362467_391e2c0037_q.jpg", "http://www.flickr.com/photos/continuumchile/8389362467/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8335/8389361193_92e03010a1_q.jpg", "http://www.flickr.com/photos/continuumchile/8389361193/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8090/8390445816_4e30c70877_q.jpg", "http://www.flickr.com/photos/continuumchile/8390445816/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8213/8390444620_9e52d3a8f4_q.jpg", "http://www.flickr.com/photos/continuumchile/8390444620/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8072/8389356851_b46b58dd5b_q.jpg", "http://www.flickr.com/photos/continuumchile/8389356851/in/set-72157632543758999/lightbox/"],
      ["http://farm9.staticflickr.com/8465/8390441622_2cdefd235b_q.jpg", "http://www.flickr.com/photos/continuumchile/8390441622/in/set-72157632543758999/lightbox/"]
    ]
  end

end
