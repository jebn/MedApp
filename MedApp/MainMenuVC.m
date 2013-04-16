//
//  MainMenuVC.m
//  MedApp
//
//  Created by Lalo on 15/04/2013.
//  Copyright (c) 2013 Lalo. All rights reserved.
//

#import "MainMenuVC.h"

@interface MainMenuVC ()

@end

@implementation MainMenuVC

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) openNewViewController:(NSString*) ViewControllerIndentifier{
    //Opens the View Controller with identifier passed by the parameter
    ViewController *newViewController = [self.storyboard instantiateViewControllerWithIdentifier:ViewControllerIndentifier];
    [self presentViewController:newViewController animated:YES completion:nil];
}

- (IBAction)addMedicine:(id)sender {
    [self openNewViewController:@"ChooseName"];
}

- (IBAction)editMedicine:(id)sender {
    [self openNewViewController:@"ListOfMedicines"];

}

- (IBAction)seeSchedule:(id)sender {
    [self openNewViewController:@"Schedule"];

}
@end
