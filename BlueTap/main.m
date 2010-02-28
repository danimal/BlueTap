//
//  main.m
//  BlueTap
//
//  Created by Dan Weeks on 2008-12-20.
//  Released to the public domain, 2010-02-28
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
