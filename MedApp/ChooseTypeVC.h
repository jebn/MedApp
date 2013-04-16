//
//  ChooseTypeVC.h
//  MedApp
//
//  Created by Lalo on 15/04/2013.
//  Copyright (c) 2013 Lalo. All rights reserved.
//

#import "ViewController.h"

@interface ChooseTypeVC : ViewController <UIPickerViewDataSource, UIPickerViewDelegate>

- (IBAction)back:(id)sender;
- (IBAction)next:(id)sender;
- (IBAction)seeType:(id)sender;

@property (strong, nonatomic) IBOutlet UIPickerView *typePicker;
@property (nonatomic, strong) NSMutableArray *types;
@property (strong, nonatomic) IBOutlet UILabel *testLabel;

@end
