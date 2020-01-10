$(function() {

  // タブのDOM要素取得
  let tabs = $(".mypage-center");
  // tabsを配列に変換
  tabsAry = Array.prototype.slice.call(tabs);
  
  // クラスの切り替えをtabswitch関数で定義
  function tabSwitch() {
    $(".active").removeClass("active");
    
  
    $(this).addClass("active");
  
    const index = tabsAry.indexOf(this);
    
  
    $(".a-right-content__block__object").removeClass("show").eq(index).addClass("show");
    
  }
  
    tabs.click(tabSwitch);
  });
  
  
  
  
  
  
  // ここから下の部分
  
  $(function() {
  
    let tabs = $(".mypage-center2")
    tabsAry = Array.prototype.slice.call(tabs);
  
    function tabSwitch() {
      $(".ahe").removeClass("ahe")
      $(this).addClass("ahe")
    }
    
    tabs.click(tabSwitch)
  
  });