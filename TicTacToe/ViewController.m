//
//  ViewController.m
//  TicTacToe
//
//  Created by Vi on 10/2/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;
@property (weak, nonatomic) IBOutlet UILabel *label6;
@property (weak, nonatomic) IBOutlet UILabel *label7;
@property (weak, nonatomic) IBOutlet UILabel *label8;
@property (weak, nonatomic) IBOutlet UILabel *label9;
@property (weak, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property CGPoint originalCenter;
@property NSInteger currentPlayer;
@property NSArray *labelFields;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.currentPlayer = [[NSNumber numberWithInt:1] integerValue];
    self.whichPlayerLabel.text = @"Player X";
    self.whichPlayerLabel.textColor = [UIColor blueColor];
    self.labelFields = [NSArray arrayWithObjects:
                        self.label1,
                        self.label2,
                        self.label3,
                        self.label4,
                        self.label5,
                        self.label6,
                        self.label7,
                        self.label8,
                        self.label9,nil];

    self.label1.text = @" ";
    self.label2.text = @" ";
    self.label3.text = @" ";
    self.label4.text = @" ";
    self.label5.text = @" ";
    self.label6.text = @" ";
    self.label7.text = @" ";
    self.label8.text = @" ";
    self.label9.text = @" ";

}



//when screen is tapped switch players
- (IBAction)screenTap:(UITapGestureRecognizer *)tapGesture {
    CGPoint point = [tapGesture locationInView:(self.view)];
    for (UILabel *label in self.labelFields) {
        if (CGRectContainsPoint(label.frame, point)) {
            if ([label.text isEqualToString: @" "])  {
                NSLog(@"yay");
                label.text = @"X";
                label.textColor = [UIColor blueColor];
                [self.whichPlayerLabel.text isEqualToString:@"O"];


                }}
        else {
            NSLog(@"ohh");
            label.text = @"O";
            label.textColor = [UIColor redColor];
                }


//        }else (CGRectContainsPoint(label.frame, point)) {
 //           label.text = @"O";
 //       label.textColor = [UIColor redColor];
        }

    }




/*- (UILabel*)findLabelUsingPoint:(CGPoint)point{


    for(UILabel *label in self.labelFields) {
        if (CGRectContainsPoint(label.frame, point)) {

        }
    }

    return nil;
}
*/



//New Game Started







@end
