//
//  ViewController.m
//  UnitConverter
//
//  Created by Billy Rey Caballero on 8/3/17.
//  Copyright © 2017 alcoderithm. All rights reserved.
//

#import "ViewController.h"

double convertInchesToCentimeters(double inchesValue){
    double centimetersValue;
    centimetersValue = inchesValue * 2.54;
    return centimetersValue;
}

double convertInchesToFeet(double inchesValue){
    double feetValue;
    feetValue = inchesValue / 12;
    return feetValue;
}

double convertInchesToYards(double inchesValue){
    double yardsValue;
    yardsValue = inchesValue / 36;
    return yardsValue;
}


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textInput;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *convertedValue;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)conveterButton:(id)sender {
    NSMutableString *textOutput = [NSMutableString new];
    double userInput = [self.textInput.text doubleValue];
    
    if(self.segmentController.selectedSegmentIndex == 0){
        double centimetersValue = convertInchesToCentimeters(userInput);
        [textOutput appendString:[@(centimetersValue) stringValue]];
    }
    else if(self.segmentController.selectedSegmentIndex == 1){
        double feetValue = convertInchesToFeet(userInput);
        [textOutput appendString:[@(feetValue) stringValue]];
    }
    else {
        double yardsValue = convertInchesToYards(userInput);
        [textOutput appendString:[@(yardsValue) stringValue]];
    }
    
    self.convertedValue.text = textOutput;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
