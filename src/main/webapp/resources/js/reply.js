console.log("Reply Module.........");

var replyService = (function() {
	function add(reply, callback, error) {
		console.log("add reply.............");

		$.ajax({
			type : 'post',
			url : '/replies/new',
			data : JSON.stringify(reply),
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			}, 
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}

	function getList(param, callback, error) {
		var board_index = param.board_index;
		var amount = param.amount || 1;
		$.getJSON("/replies/amount/" + board_index + "/" + amount + ".json",
				function(data) {
					if (callback) {
						callback(data.replyCnt, data.replyList);
					}
				}).fail(function(xhr, status, err) {
					if (error) {
						error();
					}
				});
	}

	function remove(reply_index, user_index, callback, error) {
		$.ajax({
			type : 'delete',
			url : '/replies/' + reply_index,
			data : JSON.stringify({reply_index:reply_index, user_index:user_index}),
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			}, 
			contentType : "application/json; charset=utf-8",
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}

	function get(reply_index, callback, error) {
		$.get("/replies/" + reply_index + ".json", function(result) {
			if (callback) {
				callback(result);
			}
		}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}

	function displayTime(timeValue) {
		var today = new Date();

		var gap = today.getTime() - timeValue;

		var dateObj = new Date(timeValue);
		var str = "";

		if (gap < (1000 * 60 * 60 * 24)) {
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [ (hh>9 ? '' : '0') + hh, ':', (mi>9 ? '' : '0') + mi, ':', (ss>9 ? '' : '0') + ss ].join('');
		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1;
			var dd = dateObj.getDate();
			
			return [ yy, '/', (mm>9 ? '' : '0') + mm, '/', (dd>9 ? '' : '0') + dd ].join('');
		}
	}

	return {
		add : add,
		getList : getList,
		remove : remove,
		get : get,
		displayTime : displayTime
	};
})();