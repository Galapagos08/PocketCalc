//
//  ViewController.m
//  PocketCalc
//
//  Created by Dan Esrey on 2016/28/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *display;
@property(nonatomic, copy) NSString *text;
- (IBAction)numberButton:(UIButton *)sender;
- (IBAction)divisionButton:(UIButton *)sender;
- (IBAction)multiplyButton:(UIButton *)sender;
- (IBAction)addButton:(UIButton *)sender;
- (IBAction)subtractButton:(UIButton *)sender;
- (IBAction)equalsButton:(UIButton *)sender;
- (IBAction)allClearButton:(UIButton *)sender;


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


- (IBAction)numberButton:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}
 

   /*
    
    NSInteger displayText = sender.currentTitle.integerValue;
    NSString *display = [NSString stringWithFormat:@"%@", @(displayText)];
    */



- (IBAction)divisionButton:(UIButton *)sender {
}

- (IBAction)multiplyButton:(UIButton *)sender {
}

- (IBAction)addButton:(id)sender {
}

- (IBAction)subtractButton:(id)sender {
}

- (IBAction)equalsButton:(id)sender {
}

- (IBAction)allClearButton:(id)sender {
}
@end
