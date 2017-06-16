//
//  main.m
//  Safari Cache Cleaner
//
//  Created by Roy Prins on 16/06/2017.
//  Copyright © 2017 Roy Prins. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
