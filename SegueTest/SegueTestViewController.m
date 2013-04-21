//
//  SegueTestViewController.m
//  SegueTest
//
//  Created by Mike on 4/10/13.
//  Copyright (c) 2013 Mike. All rights reserved.
//

#import "SegueTestViewController.h"
#import "HappinessViewController.h"
@interface SegueTestViewController ()

@property(nonatomic)int happiness;
@end

@implementation SegueTestViewController
@synthesize happiness=_happiness;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"test";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"test"]) {
        NSString* strLanguage = [[[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"] objectAtIndex:0];
        NSLog(@"strLanguage :%@",strLanguage);
        [segue.destinationViewController setHappiness:self.happiness];
    }
}
-(void)pushSegueWithHappiness:(int)happiness{
    self.happiness = happiness;
    [self performSegueWithIdentifier:@"test" sender:self];
}
- (IBAction)test1:(UIButton *)sender {
    [self pushSegueWithHappiness:80];
}

- (IBAction)test2:(UIButton *)sender {
    [self pushSegueWithHappiness:50];
    
}

- (IBAction)test3:(UIButton *)sender {
    [self pushSegueWithHappiness:10];
}
@end
