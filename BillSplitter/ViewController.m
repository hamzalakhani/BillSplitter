//
//  ViewController.m
//  BillSplitter
//
//  Created by Hamza Lakhani on 2016-11-13.
//  Copyright © 2016 Hamza Lakhani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *totalAmountTextField;
@property (weak, nonatomic) IBOutlet UISlider *peopleAmountSlider;
@property (weak, nonatomic) IBOutlet UILabel *amountEachPersonLabel;
@property (weak, nonatomic) IBOutlet UIButton *tapToCalculateButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)calculateSplitAmout:(id)sender{
//    float billAmount = [self.totalAmountTextField.text floatValue];//when one needs to asign the text input to a value
//    int peopleAmount = [self.peopleAmountSlider value];
//    float perPerson = billAmount/peopleAmount;
    NSDecimalNumber *billamount = [NSDecimalNumber decimalNumberWithString:self.totalAmountTextField.text];
    NSDecimalNumber *peopleAmount = [NSDecimalNumber decimalNumberWithMantissa:self.peopleAmountSlider.value exponent:0 isNegative:NO];//review this
    self.amountEachPersonLabel.text = [NSString stringWithFormat:@"%@", [billamount decimalNumberByDividingBy:peopleAmount]];
}
@end
