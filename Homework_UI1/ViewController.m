//
//  ViewController.m
//  Homework_UI1
//
//  Created by Administrator on 3/15/15.
//  Copyright (c) 2015 Natali-QA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *onBlueButton;
@property (weak, nonatomic) IBOutlet UIButton *onGreenButton;
@property (weak, nonatomic) IBOutlet UIButton *onRedButton;
@property (weak, nonatomic) IBOutlet UISwitch *switcher;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UILabel *labelForSlider;

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
- (IBAction)onClickRedButton:(UIButton*)sender {
    [self.view setBackgroundColor:[UIColor redColor]];
  }

- (IBAction)onClickGreenButton:(UIButton*)sender {
    [self.view setBackgroundColor:[UIColor greenColor]];
}

- (IBAction)onClickBlueButton:(UIButton*)sender {
    [self.view setBackgroundColor:[UIColor blueColor]];
}
- (IBAction)onSwitch:(UISwitch*)sender {
        BOOL switchState = [sender isOn];
    if  (switchState ==0){
        [_onBlueButton setEnabled:NO];
         [_onGreenButton setEnabled:NO];
         [_onRedButton setEnabled:NO];
        [_onBlueButton setBackgroundColor:[UIColor blackColor]];
         [_onGreenButton setBackgroundColor:[UIColor blackColor]];
        [_onRedButton setBackgroundColor:[UIColor blackColor]];
    }
    else {
        [_onBlueButton setEnabled:YES];
        [_onGreenButton setEnabled:YES];
        [_onRedButton setEnabled:YES];
    }
    
}
- (IBAction)redSlider:(id)sender {
    
     _labelForSlider.textColor = [UIColor colorWithRed: _redSlider.value green:_greenSlider.value  blue:_blueSlider.value alpha:1];
    
}
- (IBAction)greenSlider:(id)sender {
      _labelForSlider.textColor = [UIColor colorWithRed: _redSlider.value green:_greenSlider.value  blue:_blueSlider.value alpha:1];
}

- (IBAction)blueSlider:(id)sender {
      _labelForSlider.textColor = [UIColor colorWithRed: _redSlider.value green:_greenSlider.value  blue:_blueSlider.value alpha:1];
}




@end
