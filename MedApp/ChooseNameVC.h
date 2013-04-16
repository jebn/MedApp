//
//  ChooseNameVC.h
//  MedApp
//
//  Created by Lalo on 15/04/2013.
//  Copyright (c) 2013 Lalo. All rights reserved.
//

#import "ViewController.h"

@interface ChooseNameVC : ViewController
- (IBAction)next:(id)sender;
- (IBAction)back:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *name;

@end
