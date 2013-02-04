//
//  GVCMasterViewController.h
//  GVCCatalog
//
//  Created by David Aspinall on 2013-02-01.
//  Copyright (c) 2013 Global Village. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GVCFoundation/GVCFoundation.h>
#import <GVCUIKit/GVCUIKit.h>

@class GVCDetailViewController;

@interface GVCMasterViewController : GVCDictionaryTableViewController

@property (strong, nonatomic) GVCDetailViewController *detailViewController;

@end
