viking.onFirefoxLoad = function(event) {
  document.getElementById("contentAreaContextMenu")
          .addEventListener("popupshowing", function (e){ viking.showFirefoxContextMenu(e); }, false);
};

viking.showFirefoxContextMenu = function(event) {
  // show or hide the menuitem based on what the context menu is on
  document.getElementById("context-viking").hidden = gContextMenu.onImage;
};

window.addEventListener("load", viking.onFirefoxLoad, false);
