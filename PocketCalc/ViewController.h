//
//  ViewController.h
//  PocketCalc
//
//  Created by Dan Esrey on 2016/28/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    Addition,
    Subtraction,
    Multiplication,
    Division
} Operation;

@interface ViewController : UIViewController {
    NSString *storage;
    Operation operation;
    
}
@end

