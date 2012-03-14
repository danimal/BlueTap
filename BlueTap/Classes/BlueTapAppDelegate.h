//
//  BlueTapAppDelegate.h
//  BlueTap
//
//  Created by Dan Weeks on 2008-12-20.
//  Released to the public domain. 2010-02-28
//
#import "BluetoothManager.h"
#import <UIKit/UIKit.h>

@interface BlueTapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    id btSharedInstance;
    UILabel *statusLabel;
    UILabel *tagLabel;
    UIButton *switchButton;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) id btSharedInstance;
@property (nonatomic, retain) IBOutlet UISwitch *statusSwitch;
@property (nonatomic, retain) IBOutlet UILabel *tagLabel;
@property (nonatomic, retain) IBOutlet UIButton *switchButton;
@property (nonatomic, retain) IBOutlet UIView *backgroundView;

- (IBAction)switchBluetoothStatus:(id)sender;
- (IBAction)onOffSwitch:(id)sender;
@end

