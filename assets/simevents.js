(function(){
	var app=angular.module("simevents",[]);
	app.directive("homeNav",[function(){
		return {
          restrict:"E",
          templateUrl:"assets/templates/home-nav.html",
          replace:true
		};
	}]);
}());