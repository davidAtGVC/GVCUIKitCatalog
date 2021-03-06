//
//  GVCDetailViewController.h
//  GVCCatalog
//
//  Created by David Aspinall on 2013-02-01.
//  Copyright (c) 2013 Global Village. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GVCFoundation/GVCFoundation.h>
#import <GVCUIKit/GVCUIKit.h>

@interface GVCDetailViewController : GVCUIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
