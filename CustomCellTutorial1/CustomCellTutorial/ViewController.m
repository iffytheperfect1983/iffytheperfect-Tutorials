//
//  ViewController.m
//  CustomCellTutorial
//
//  Created by iffytheperfect on 9/22/12.
//  Copyright (c) 2012 iffytheperfect. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()
{
    NSArray *leftArray;
    NSArray *rightArray;
}

@end

@implementation ViewController

@synthesize myTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
    leftArray = [[NSArray alloc]initWithObjects:@"Left1", @"Left2", @"Left3", nil];
    rightArray = [[NSArray alloc]initWithObjects:@"Right1", @"Right2", @"Right3", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// tableview datasouce delegate methods..

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return leftArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.leftLabel.text = [leftArray objectAtIndex:indexPath.row];
    cell.rightLabel.text = [rightArray objectAtIndex:indexPath.row];
    cell.myImageView.image = [UIImage imageNamed:@"iffyHat.jpg"];
    
    return cell;
}

@end
