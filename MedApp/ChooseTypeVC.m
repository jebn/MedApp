//
//  ChooseTypeVC.m
//  MedApp
//
//  Created by Lalo on 15/04/2013.
//  Copyright (c) 2013 Lalo. All rights reserved.
//

#import "ChooseTypeVC.h"

@interface ChooseTypeVC ()

@end

@implementation ChooseTypeVC
@synthesize types, typePicker, testLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    types = [NSMutableArray new];
    [types addObject:@"Píldoras"];
    [types addObject:@"Pastillas"];
    [types addObject:@"Ungüento"];
    [types addObject:@"Crema"];
    [types addObject:@"Suspensión"];
    [types addObject:@"Jarabe"];
    [types addObject:@"Breabaje"];
    [types addObject:@"Inyección"];

    NSInteger selectedRow = [typePicker selectedRowInComponent:0];
    testLabel.text = [types objectAtIndex:selectedRow];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Picker Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [types count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [types objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"Selected: %@", [types objectAtIndex:row]);
}


# pragma mark - Back and Next

- (void) openNewViewController:(NSString*) ViewControllerIndentifier{
    //Opens the View Controller with identifier passed by the parameter
    ViewController *newViewController = [self.storyboard instantiateViewControllerWithIdentifier:ViewControllerIndentifier];
    [self presentViewController:newViewController animated:YES completion:nil];
}

- (IBAction)back:(id)sender {
    [self openNewViewController:@"ChooseName"];
}

- (IBAction)next:(id)sender {
    [self openNewViewController:@"ChooseDateAndTime"];
}

- (IBAction)seeType:(id)sender {
    NSInteger selectedRow = [typePicker selectedRowInComponent:0];
    testLabel.text = [types objectAtIndex:selectedRow];
}
@end
