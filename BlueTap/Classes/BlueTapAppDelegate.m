//
//  BlueTapAppDelegate.m
//  BlueTap
//
//  Created by Dan Weeks on 2008-12-20.
//  Copyright WideZero 2008. All rights reserved.
//

#import "BlueTapAppDelegate.h"

@implementation BlueTapAppDelegate

@synthesize window;
@synthesize btSharedInstance;
@synthesize statusLabel;
@synthesize tagLabel;
@synthesize switchButton;

- (void)applicationDidFinishLaunching:(UIApplication *)application 
{   
    [tagLabel setText:[NSString stringWithFormat:@"danimal/WideZero Industries (%@%@)", [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"], [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]]];
    btSharedInstance = [BluetoothManager sharedInstance];
    [self switchBluetoothStatus];
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}

- (IBAction)switchBluetoothStatus
{
    //NSLog(@"powered: %@",([btSharedInstance powered] ? @"YES" : @"NO"));
    if ([btSharedInstance powered]) {
        [switchButton setEnabled:FALSE];
        [btSharedInstance setPowered:FALSE];
        [statusLabel setText:[NSString stringWithFormat:@"Bluetooth Powered OFF"]];
        [switchButton setEnabled:TRUE];
    } else {
        [switchButton setEnabled:FALSE];
        [btSharedInstance setPowered:TRUE];
        [statusLabel setText:[NSString stringWithFormat:@"Bluetooth Powered ON"]];
        [switchButton setEnabled:TRUE];
    }    
}

- (void)dealloc 
{
    [statusLabel release];
    [tagLabel release];
    [btSharedInstance release];
    [window release];
    [super dealloc];
}


@end

