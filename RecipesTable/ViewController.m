//
//  ViewController.m
//  RecipesTable
//
//  Created by tho dang on 2015-04-14.
//  Copyright (c) 2015 TD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    NSArray *recipes;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
   //Initialize table data
    recipes = @[@"Egg Benedict",
                @"Mushroom Risotto",
                @"Full Breakfast",
                @"Hamburger",
                @"Ham and Egg Sandwich",
                @"Creme Brelee",
                @"White Chocolate Donut",
                @"Starbucks Coffee",
                @"Vegetable Curry",
                @"Instant Noodle with Egg",
                @"Noodle with BBQ Pork",
                @"Japanese Noodle with Pork",
                @"Green Tea",
                @"Thai Shrimp Cake",
                @"Angry Birds Cake",
                @"Ham and Cheese Panini"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    
    cell.imageView.image =[UIImage imageNamed:@"creme_brelee"];
    return cell;
}

@end
