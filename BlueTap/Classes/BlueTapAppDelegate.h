//
//  BlueTapAppDelegate.h
//  BlueTap
//
//  Created by Dan Weeks on 2008-12-20.
//  Copyright WideZero 2008. All rights reserved.
//
#import "BluetoothManager.h"
#import <UIKit/UIKit.h>

@interface BlueTapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    id btSharedInstance;
    UILabel *statusLabel;
    UIButton *switchButton;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) id btSharedInstance;
@property (nonatomic, retain) IBOutlet UILabel *statusLabel;
@property (nonatomic, retain) IBOutlet UIButton *switchButton;

- (IBAction)switchBluetoothStatus;
@end

