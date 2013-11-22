//
//  CanOpen.m
//  CanOpen
//
//  Created by Phil Merrell on 10/25/13.
//
//

#import "CanOpen.h"
#import <Cordova/CDV.h>

@implementation CanOpen

-(void) appCanOpen:(CDVInvokedUrlCommand*)command {
    CDVPluginResult* pluginResult = nil;
    NSString* appUrl = [command.arguments objectAtIndex:0];
    
    if (appUrl != nil && [appUrl length] > 0) {
        
        NSURL *url = [NSURL URLWithString: appUrl];
        BOOL result = [[UIApplication sharedApplication] canOpenURL: url];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:result];
        
    } else {
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
        
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
