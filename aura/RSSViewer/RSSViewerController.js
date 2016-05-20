({
	doInit : function(component, event, helper) {
     	helper.getRSS(component);
	},
	refreshContent : function(component, event, helper) {
    	document.getElementById(component.getGlobalId() + '_rssoutputcontainer').innerHTML = "Loading...";
		helper.getRSS(component);
	}    
})