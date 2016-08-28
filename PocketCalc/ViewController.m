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
- (IBAction)number9Button:(UIButton *)sender;
- (IBAction)number8Button:(UIButton *)sender;
- (IBAction)number7Button:(UIButton *)sender;
- (IBAction)number6Button:(UIButton *)sender;
- (IBAction)number5Button:(UIButton *)sender;
- (IBAction)number4Button:(UIButton *)sender;
- (IBAction)number3Button:(UIButton *)sender;
- (IBAction)number2Button:(UIButton *)sender;
- (IBAction)number1Button:(UIButton *)sender;
- (IBAction)number0Button:(UIButton *)sender;
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

- (IBAction)number9Button:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}

- (IBAction)number8Button:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}

- (IBAction)number7Button:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}

- (IBAction)number6Button:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}

- (IBAction)number5Button:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}

- (IBAction)number4Button:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}

- (IBAction)number3Button:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}

- (IBAction)number2Button:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}

- (IBAction)number1Button:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}

- (IBAction)number0Button:(UIButton *)sender {
    [self.display setText:sender.currentTitle];
}

- (IBAction)divisionButton:(UIButton *)sender {
    operation = Division;
    storage = _display.text.integerValue;
}

- (IBAction)multiplyButton:(UIButton *)sender {
    operation = Multiplication;
    storage = _display.text.integerValue;
}

- (IBAction)addButton:(id)sender {
    operation = Addition;
    storage = _display.text.integerValue;
}

- (IBAction)subtractButton:(id)sender {
    operation = Subtraction;
    storage = _display.text.integerValue;
}

- (IBAction)equalsButton:(id)sender {
    NSInteger secondNumber = _display.text.integerValue;
    switch (operation) {
        case Addition: {
            _display.text = [NSString stringWithFormat:@"%@", @(storage + secondNumber)];
            break;
        }
        case Subtraction: {
            _display.text = [NSString stringWithFormat:@"%@", @(storage - secondNumber)];
            break;
        }
        case Multiplication: {
            _display.text = [NSString stringWithFormat:@"%@", @(storage * secondNumber)];
            break;
        }
        case Division: {
            if (secondNumber != 0) {
                _display.text = [NSString stringWithFormat:@"%@", @(storage / secondNumber)];
                
            } else {
                _display.text = [NSString stringWithFormat:@"Error"];
            }
            break;
        }
    }
}
- (IBAction)allClearButton:(id)sender {
    [self.display setText:@"0"];
}

@end
