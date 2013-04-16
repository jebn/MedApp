//
//  ChooseNameVC.m
//  MedApp
//
//  Created by Lalo on 15/04/2013.
//  Copyright (c) 2013 Lalo. All rights reserved.
//

#import "ChooseNameVC.h"

@interface ChooseNameVC ()

@end

@implementation ChooseNameVC
@synthesize name;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}


# pragma mark - Back and Next

- (void) openNewViewController:(NSString*) ViewControllerIndentifier{
    //Opens the View Controller with identifier passed by the parameter
    ViewController *newViewController = [self.storyboard instantiateViewControllerWithIdentifier:ViewControllerIndentifier];
    [self presentViewController:newViewController animated:YES completion:nil];
}

- (IBAction)next:(id)sender {
    [self openNewViewController:@"ChooseType"];
}

- (IBAction)back:(id)sender {
    //If last View Controller was Main Menu
    [self openNewViewController:@"MainMenu"];
    //else if last View Controller was Edit Medicine
    //[self openNewViewController:@"List of medicines"];
}

# pragma mark - Delegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField{

    if (textField == name){
        if (![self nameIsEmpty]){
            [self openNewViewController:@"ChooseType"];
        }
    }
    return YES;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    
    if([touch view] != self.name && [self.name isFirstResponder]){
        [self.name resignFirstResponder];
    }
    else if([touch view] == self.name){
        [self.name becomeFirstResponder];
    }
}

- (BOOL) nameIsEmpty{
    if ([self.name.text isEqualToString:@""]) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Name empty"
                                                       message:@"You must enter the name of the medicine"
                                                      delegate: self
                                             cancelButtonTitle:@"Ok"
                                             otherButtonTitles:nil, nil];
        [alert show];

        return YES;
    }
    else{
        return NO;
    }
    
}

@end
