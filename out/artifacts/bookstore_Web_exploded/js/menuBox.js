/**
 * 閰嶇疆鑿滃崟
 * 	绀轰緥锛�
 *	閰嶇疆鍩烘湰鍙傛暟
 *	var config = {
 *		//閰嶇疆鑿滃崟鐨凪enuBoxId
 *		menuBoxId: "#menuBox01",
 *		//鏄惁鍙互鎵撳紑澶氫釜涓婄骇鑿滃崟
 *		multiple: true,
 *		//鍒濆鍖栨墦寮�殑鑿滃崟鏁扮粍
 *		openIndex: [1, 3, 5]
 *	}
 *	menuBox.init(config);
 * 
 * @author DarkRanger
 * http: //www.cnblogs.com/wrcold520/
 */

! function($) {
	if($ == undefined) {
		throw new Error("please put your jquery.js top of menuBox.js!")
	}
	var menuBox = function() {};
	//瑕侀厤缃殑menuBox鐨勮彍鍗昳d
	menuBox.menuBoxId = undefined;
	//鏄惁鍙互鏄剧ず澶氫釜涓婄骇鑿滃崟鐨勫瓙鑿滃崟
	menuBox.multiple = false;
	//榛樿鍏抽棴鎵�湁涓�骇鑿滃崟
	menuBox.openIndex = [];

	//menuBox鍒濆鍖栨柟娉�
	menuBox.init = function(config) {
		
		var cntMenuBox = new menuBox();
		
		//瀹氫箟涓婄骇鑿滃崟spMenu鏁扮粍
		var spMenus;

		if(config.menuBoxId == undefined) {
			throw new Error("your config has not 'menuBoxId', please make sure your menuBox is existed!");
		} else {
			cntMenuBox.menuBoxId = $(config.menuBoxId) ? config.menuBoxId : undefined;
		}

		if(config.multiple == undefined) {
			console.warn("your config has not 'multiple', default value is false which means you can open only one spMenu at the same time!");
		} else {
			cntMenuBox.multiple = config.multiple;
		}

		if(config.openIndex == undefined) {
			console.warn("your config has not 'openIndex', default value is a Array which's length is 0!");
		} else if(!config.openIndex instanceof Array) {
			throw new Error("your config 'openIndex' should be a number Array");
		} else {
			cntMenuBox.openIndex = unique(config.openIndex, false);
		}

		//纭畾瀵瑰簲鐨刴enuBox
		cntMenuBox.menuBoxId = config.menuBoxId;
		//鏄惁鎵撳紑鍏朵粬鏌愪竴涓殑鏃跺�鍏抽棴鍏朵粬閫夐」
		var closeOthers = !cntMenuBox.multiple;
		//鍒濆鍖栫偣鍑讳簨浠�
		initClickEvent(cntMenuBox, closeOthers);
		//纭畾涓婄骇鑿滃崟鏁扮粍
		spMenus = $(cntMenuBox.menuBoxId + " .spMenu");
		//鎵撳紑浼犲叆鐨勬暟缁�
		for(var i in cntMenuBox.openIndex) {
			var index = cntMenuBox.openIndex[i];
			var spMenu = spMenus[index];
			if(spMenu) {
				openSpMenu(cntMenuBox.menuBoxId, index);
				if(!cntMenuBox.multiple) {
					break;
				}
			}
		}
	}

	function unique(arr) {
		var result = [],
			hash = {};
		for(var i = 0, elem;
			(elem = arr[i]) != null; i++) {
			if(!hash[elem]) {
				result.push(elem);
				hash[elem] = true;
			}
		}
		return result;
	}

	//鍒濆鍖栫偣鍑讳簨浠�
	function initClickEvent(menuBox, closeOthers) {
		$(menuBox.menuBoxId + " .spMenu").on("click", function() {
			var cntSpMenu$ = $(this);
			//瑕佸垏鎹㈢殑鍏冪礌
			cntSpMenu$.next().slideToggle();
			cntSpMenu$.parent().toggleClass("active")

			var cntSpMenu = cntSpMenu$['context'];
			if(closeOthers == true) {
				var spMenus = $(menuBox.menuBoxId + " .spMenu");
				$.each(spMenus, function(index, spMenu) {
					if(cntSpMenu != spMenu) {
						closeSpMenu(menuBox.menuBoxId, index);
					}
				});
			}
		});
	}

	//鎵撳紑鏌愪竴涓猧tem
	function openSpMenu(menuBoxId, index) {
		//瑕佸垏鎹㈢殑鍏冪礌
		var spItem = $(menuBoxId + " .spMenu:eq(" + index + ")");
		spItem.next().slideDown();
		spItem.parent().addClass("active")
	}
	//鍏抽棴鏌愪竴涓猧tem
	function closeSpMenu(menuBoxId, index) {
		//瑕佸垏鎹㈢殑鍏冪礌
		var spItem = $(menuBoxId + " .spMenu:eq(" + index + ")");
		spItem.next().slideUp();
		spItem.parent().removeClass("active")
	}
	//鍒囨崲鏌愪竴涓猧tem
	function toggleSpMenu(menuBoxId, index) {
		//瑕佸垏鎹㈢殑鍏冪礌
		var spItem = $(menuBoxId + " .spMenu:eq(" + index + ")");
		spItem.next().slideToggle();
		spItem.parent().toggleClass("active")
	}

	window.menuBox = menuBox;
}($);