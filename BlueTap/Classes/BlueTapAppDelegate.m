//
//  BlueTapAppDelegate.m
//  BlueTap
//
//  Created by Dan Weeks on 2008-12-20.
//  Released to the public domain, 2010-02-28
//

#import "BlueTapAppDelegate.h"

@implementation BlueTapAppDelegate

@synthesize window;
@synthesize btSharedInstance;
@synthesize statusSwitch;
@synthesize tagLabel;
@synthesize switchButton;
@synthesize backgroundView;

- (void)applicationDidFinishLaunching:(UIApplication *)application 
{   
    backgroundView.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"bright_squares.png"]];
    [tagLabel setText:[NSString stringWithFormat:@"v%@", [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]]];
    btSharedInstance = [BluetoothManager sharedInstance];
    [self switchBluetoothStatus:self];
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}

- (IBAction)switchBluetoothStatus:(id)sender
{
    //NSLog(@"powered: %@",([btSharedInstance powered] ? @"YES" : @"NO"));
    if ([btSharedInstance powered]) {
        [switchButton setEnabled:FALSE];
        [btSharedInstance setPowered:FALSE];
        [statusSwitch setOn:FALSE animated:TRUE];
        [switchButton setEnabled:TRUE];
    } else {
        [switchButton setEnabled:FALSE];
        [btSharedInstance setPowered:TRUE];
        [statusSwitch setOn:TRUE animated:TRUE];
        [switchButton setEnabled:TRUE];
    }    
}

- (IBAction)onOffSwitch:(id)sender
{
    
}



@end

