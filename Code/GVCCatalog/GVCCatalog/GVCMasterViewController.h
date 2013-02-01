//
//  GVCMasterViewController.h
//  GVCCatalog
//
//  Created by David Aspinall on 2013-02-01.
//  Copyright (c) 2013 Global Village. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GVCDetailViewController;

@interface GVCMasterViewController : UITableViewController

@property (strong, nonatomic) GVCDetailViewController *detailViewController;

@end
