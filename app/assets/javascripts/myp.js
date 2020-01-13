$(function() {

  // タブのDOM要素取得
  let tabs = $(".mypage-center");
  // tabsを配列に変換
  var tabsAry = Array.prototype.slice.call(tabs);
  
  
  // console.log(tabs);
  // クラスの切り替えをtabswitch関数で定義
  function tabSwitch() {
    $(".active").removeClass("active");
    
    $(this).addClass("active");
  
    
    // tabsArryに何も入ってない！スコープの外で定義しているから
    console.log(tabsAry);
    const index = tabsAry.indexOf(this);
    console.log(this);
    console.log(index);

    
    $(".a-right-content__block__object").removeClass("show").eq(index).addClass("show");
  
    
  }
  
    tabs.click(tabSwitch);
  });
  
  
  
  
  
  
  // ここから下の部分
  
  $(function() {
  
    let tabs = $(".mypage-center2")
    var tabsAry = Array.prototype.slice.call(tabs);
  
    function tabSwitch() {
      $(".ahe").removeClass("ahe")
      $(this).addClass("ahe")

      console.log(this);
      console.log(tabsAry);
      const index = tabsAry.indexOf(this);
      console.log(index);


      $(".a-right-content__block2__object2").removeClass("show").eq(index).addClass("show");


    }
    
    tabs.click(tabSwitch)
  
  });