CanOpen
======
This plugin is useful for checking if native apps are installed on a user's iOS device. By passing an app scheme (e.g., 'fb://', 'gplus://', 'instagram://', etc...), CanOpen returns true if it detects the user has the corresponding native app installed.  By returning false, CanOpen allows the developer the ability to implement a fallback URL–for instance, the app's location in the App Store, or a mobile web version of the corresponding app.

Installation:
----------


Usage:
-------
Alert a user that app is not installed.

```javascript
CanOpen('fb://', function(isInstalled) {
    
    if(isInstalled) {
        
        document.location = 'fb://';
    
    } else {
    
        alert('Facebook is not installed');
        
    }
});
```

Or fallback to mobile web.

```javascript
CanOpen('fb://', function(isInstalled) {
    
    if(isInstalled) {
        
        document.location = 'fb://';
    
    } else {
    
        document.location = 'http://m.facebook.com';
        
    }
});
```

Or fallback to app in the App Store

```javascript
CanOpen('fb://', function(isInstalled) {
    
    if(isInstalled) {
        
        document.location = 'fb://';
    
    } else {
    
        document.location = 'https://itunes.apple.com/us/app/facebook/id284882215';
        
    }
});
```
