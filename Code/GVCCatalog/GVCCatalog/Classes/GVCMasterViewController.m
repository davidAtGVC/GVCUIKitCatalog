//
//  GVCMasterViewController.m
//  GVCCatalog
//
//  Created by David Aspinall on 2013-02-01.
//  Copyright (c) 2013 Global Village. All rights reserved.
//

#import "GVCMasterViewController.h"

#import "GVCDetailViewController.h"

@interface GVCMasterViewController ()
@end

@implementation GVCMasterViewController

- (void)awakeFromNib
{
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
	{
	    self.clearsSelectionOnViewWillAppear = NO;
	    self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
	}
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	self.detailViewController = (GVCDetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
	[self addRowWithImage:nil label:@"Tokens" note:@"Displays token views" toSection:@"Tokens" withId:@"token_view"];

	[self addRowWithImage:nil label:@"Badges" note:@"Displays badge views" toSection:@"Badges" withId:@"badge_view"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
	{
		NSDictionary *row = [self rowAtIndexPath:indexPath];
		if ( gvc_IsEmpty([row objectForKey:GVCDictionaryTableViewController_id]) == NO )
		{
			[[self detailViewController] performSegueWithIdentifier:[row objectForKey:GVCDictionaryTableViewController_id] sender:row];
		}
    }
}


@end
