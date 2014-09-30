CanOpen
======
This plugin is useful for checking if native apps are installed on a user's iOS or Android device. By passing an app scheme (e.g., 'fb://', 'gplus://', 'instagram://', etc...), CanOpen returns true if it detects the user has the corresponding native app installed.  By returning false, CanOpen allows the developer the ability to implement a fallback URL–for instance, the app's location in the App Store, or a mobile web version of the corresponding app.  A blog post for this plugin can be found at <a href="http://philmerrell.com/canopen-a-phonegap-plugin-to-check-if-native-apps-are-installed-on-a-users-ios-device/" target="_BLANK">http://philmerrell.com/canopen-a-phonegap-plugin-to-check-if-native-apps-are-installed-on-a-users-ios-device/</a>

## Manual Installation for iOS

Copy the following files to your project's Plugins folder:

**CanOpen.h**<br />
**CanOpen.m**
  

Add a reference for this plugin to **config.xml** in your iOS phonegap project:

```
  <feature name="CanOpen">
      <param name="ios-package" value="CanOpen" />
  </feature>
```

Add the **canOpen.js** script to your www folder and reference it in your main index.html file.

    <script type="text/javascript" charset="utf-8" src="canOpen.js"></script>

## Automatic Installation

Working on registering CanOpen with plugman.  Coming soon.

Usage:
-------

**Alert a user that app is not installed.**

```javascript
CanOpen('fb://', function(isInstalled) {
    
    if(isInstalled) {
        
        document.location = 'fb://';
    
    } else {
    
        alert('Facebook is not installed');
        
    }
});
```

**Or fallback to mobile web.**

```javascript
CanOpen('fb://', function(isInstalled) {
    
    if(isInstalled) {
        
        document.location = 'fb://';
    
    } else {
    
        document.location = 'http://m.facebook.com';
        
    }
});
```

**Or fallback to app in the App Store.**

```javascript
CanOpen('fb://', function(isInstalled) {
    
    if(isInstalled) {
        
        document.location = 'fb://';
    
    } else {
    
        document.location = 'https://itunes.apple.com/us/app/facebook/id284882215';
        
    }
});
```
