//
//  EditMedicineVC.m
//  MedApp
//
//  Created by Lalo on 15/04/2013.
//  Copyright (c) 2013 Lalo. All rights reserved.
//

#import "EditMedicineVC.h"

@interface EditMedicineVC ()

@end

@implementation EditMedicineVC

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

# pragma mark - Back

- (void) openNewViewController:(NSString*) ViewControllerIndentifier{
    //Opens the View Controller with identifier passed by the parameter
    ViewController *newViewController = [self.storyboard instantiateViewControllerWithIdentifier:ViewControllerIndentifier];
    [self presentViewController:newViewController animated:YES completion:nil];
}

- (IBAction)back:(id)sender {
    [self openNewViewController:@"ListOfMedicines"];
}
@end
