//
//  ViewController.m
//  3 exercise
//
//  Created by AcerHack on 21.03.18.
//  Copyright © 2018 AcerHack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *testViews;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.textField.keyboardAppearance = UIKeyboardAppearanceDark;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (CGFloat) randoFromZeroToOne {
    return (float)(arc4random()%256)/255;
}

-(UIColor *) randomColor {
    
    CGFloat r = [self randoFromZeroToOne];
    CGFloat g = [self randoFromZeroToOne];
    CGFloat b = [self randoFromZeroToOne];
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}

#pragma Actions
-(IBAction)actionClick:(id)sender {
    
    //self.label.text = self.textField.text;
    
    NSLog(@"New TEXT -> %@", self.label.text);
    if ([self.textField isFirstResponder]) {
        [self.textField resignFirstResponder];
    }
    
}

-(void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    
    for (UIView* view in self.testViews) {
        view.backgroundColor = [self randomColor];
    }
}
- (IBAction)actionTextChanged:(UITextField *)sender {
    NSLog(@"%@", sender.text);
}
@end
