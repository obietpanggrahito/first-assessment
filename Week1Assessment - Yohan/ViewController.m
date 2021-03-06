//
//  ViewController.m
//  Week1Assessment - Yohan
//
//  Created by Obiet Panggrahito on 20/03/2017.
//  Copyright © 2017 Obiet Panggrahito. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;
@property (weak, nonatomic) IBOutlet UIButton *timesButton;
@property (weak, nonatomic) IBOutlet UIButton *devidedByButton;
@property (assign, nonatomic) NSInteger *calculatedValue;
@property (weak, nonatomic) IBOutlet UILabel *answer;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        [self.button addTarget:self action:NSSelectorFromString(@"submitButton") forControlEvents:UIControlEventTouchUpInside];
        [self.plusButton addTarget:self action:NSSelectorFromString(@"plusButtonSign") forControlEvents:UIControlEventTouchUpInside];
        [self.minusButton addTarget:self action:NSSelectorFromString(@"minusButtonSign") forControlEvents:UIControlEventTouchUpInside];
        [self.timesButton addTarget:self action:NSSelectorFromString(@"timesButtonSign") forControlEvents:UIControlEventTouchUpInside];
        [self.devidedByButton addTarget:self action:NSSelectorFromString(@"devidedByButtonSign") forControlEvents:UIControlEventTouchUpInside];
        [self.calculateButton addTarget:self action:NSSelectorFromString(@"calculation") forControlEvents:UIControlEventTouchUpInside];
    
    }

-(void)plusButtonSign {
    
    if (self.plusButton.isEnabled) {
        
        [self.plusButton setTintColor:[UIColor redColor]];
        [self.minusButton setTintColor:[UIColor blueColor]];
        [self.timesButton setTintColor:[UIColor blueColor]];
        [self.devidedByButton setTintColor:[UIColor blueColor]];
        
    }
}

-(void) minusButtonSign {
    
    if (self.minusButton.isEnabled) {
        
        [self.plusButton setTintColor:[UIColor blueColor]];
        [self.minusButton setTintColor:[UIColor redColor]];
        [self.timesButton setTintColor:[UIColor blueColor]];
        [self.devidedByButton setTintColor:[UIColor blueColor]];
    
    }
}

-(void) timesButtonSign {
    
    if (self.timesButton.isEnabled) {
        
        [self.plusButton setTintColor:[UIColor blueColor]];
        [self.minusButton setTintColor:[UIColor blueColor]];
        [self.timesButton setTintColor:[UIColor redColor]];
        [self.devidedByButton setTintColor:[UIColor blueColor]];
        
    }
}

-(void) devidedByButtonSign {
    
        if (self.devidedByButton.isEnabled) {
        
        [self.plusButton setTintColor:[UIColor blueColor]];
        [self.minusButton setTintColor:[UIColor blueColor]];
        [self.timesButton setTintColor:[UIColor blueColor]];
        [self.devidedByButton setTintColor:[UIColor redColor]];
        
    }
}

-(void) calculation {
    
    NSUInteger number1 = [self.textField1.text integerValue];
    NSUInteger number2 = [self.textField2.text integerValue];

    if (_plusButton.tintColor == [UIColor redColor]) {
        
        self.calculatedValue = number1 + number2;
   
    }
    else if (_minusButton.tintColor == [UIColor redColor]) {
        
        self.calculatedValue = number1 - number2;
    
    }
    else if (_timesButton.tintColor == [UIColor redColor]) {
        
        self.calculatedValue = number1 * number2;
        
    }
    else if (_devidedByButton.tintColor == [UIColor redColor]) {
        
        self.calculatedValue = number1 / number2;
        
    }
    
    self.answer.text = [NSString stringWithFormat:@"%i", self.calculatedValue];
    self.textField1.text = @"";
    self.textField2.text = @"";
    
}


-(void)submitButton {
    
    if  ((int)_calculatedValue == 999) {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"I'm impressed" message:@"You're a genius" preferredStyle:UIAlertControllerStyleAlert];
        [self presentViewController:alert animated:YES completion:NULL];
        
        UIAlertAction *back = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [self performSegueWithIdentifier:@"submitNumber" sender:self];
            }];
        [alert addAction:back];
        
    }
    
    else if ((int)_calculatedValue %9 == 0) {
            
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"I'm impressed" message:@"You're a genius" preferredStyle:UIAlertControllerStyleAlert];
        [self presentViewController:alert animated:YES completion:NULL];
        
        UIAlertAction *back = [UIAlertAction actionWithTitle:@"Back" style:UIAlertActionStyleDefault handler:NULL];
        [alert addAction:back];
        
    }
        
    else {
        
        return;
       
    }
}
@end
