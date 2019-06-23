$(document).ready(function(){

  $('.bxslider').bxSlider({
    auto: true,           // 自動スライド
    speed: 1000,          // スライドするスピード
           // 移動するスライド数
    pause: 2000,          // 自動スライドの待ち時間
          // 一度に表示させる最大数
          // 各スライドの幅
	randomStart: true,    // 最初に表示するスライドをランダムに設定
    autoHover: true,
    slideMargin: 10       // ホバー時に自動スライドを停止
  });
});
$(document).ready(function(){
  $('.bxslider-2').bxSlider({
   ticker: true,
    minSlides: 2,
    maxSlides: 3,
    slideWidth: 100,
    slideMargin: 10,
    tickerHover: true,
    speed: 30000

  });
});
$(document).ready(function(){
  $('.bxslider-3').bxSlider({
   ticker: true,
    minSlides: 2,
    maxSlides: 3,
    slideWidth: 100,
    slideMargin: 10,
    tickerHover: true,
    speed: 30000,
    autoDirection: 'prev'
  });
});
