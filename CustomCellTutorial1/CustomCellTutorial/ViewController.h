//
//  ViewController.h
//  CustomCellTutorial
//
//  Created by iffytheperfect on 9/22/12.
//  Copyright (c) 2012 iffytheperfect. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end
