//
//  ViewController.m
//  TicTacToe
//
//  Created by Vi on 10/2/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>
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
@property BOOL *gameStarted;
@property NSArray* row1;
@property NSArray* row2;
@property NSArray* row3;
@property NSArray* column1;
@property NSArray* column2;
@property NSArray* column3;
@property NSArray* across1;
@property NSArray* across2;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.currentPlayer = [[NSNumber numberWithInt:1] integerValue];
    self.whichPlayerLabel.text = @"Player X";
    self.currentPlayer = 1;
    self.whichPlayerLabel.textColor = [UIColor blueColor];
    self.row1 = [NSArray arrayWithObjects: self.label1, self.label2, self.label3, nil];
    self.row2 = [NSArray arrayWithObjects: self.label4, self.label5, self.label6, nil];
    self.row3 = [NSArray arrayWithObjects: self.label7, self.label8, self.label9, nil];
    self.column1 = [NSArray arrayWithObjects: self.label1, self.label4, self.label7, nil];
    self.column2 = [NSArray arrayWithObjects: self.label2, self.label5, self.label8, nil];
    self.column3 = [NSArray arrayWithObjects: self.label3, self.label6, self.label9, nil];
    self.across1 = [NSArray arrayWithObjects: self.label1, self.label5, self.label9, nil];
    self.across2 = [NSArray arrayWithObjects: self.label3, self.label5, self.label7, nil];
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
- (IBAction)screenTap:(UITapGestureRecognizer *)tapGesture
{
    CGPoint point = [tapGesture locationInView:(self.view)];
    for (UILabel *label in self.labelFields)
    {
        if (CGRectContainsPoint(label.frame, point))
        {
            while ([label.text isEqualToString: @" "])
            {
                if ([self.whichPlayerLabel.text isEqualToString: @"Player X" ]) {
                    [self.whichPlayerLabel.text isEqualToString:@"Player O"];
                    NSLog(@"yay");
                    label.text = @"X";
                    label.textColor = [UIColor blueColor];
                    self.whichPlayerLabel.text = @"Player O";
                    self.whichPlayerLabel.textColor = [UIColor redColor];

                } else if ([self.whichPlayerLabel.text isEqualToString: @"Player O" ]) {
                    [self.whichPlayerLabel.text isEqualToString:@"Player X"];
                    NSLog(@"ohh");
                    label.text = @"O";
                    label.textColor = [UIColor redColor];
                    self.whichPlayerLabel.text = @"Player X";
                    self.whichPlayerLabel.textColor = [UIColor blueColor];



                }
                    [self whoWon];

            }
        }
    }

}

//determines who wins


- (NSString *)whoWon {

    if (self.label1.text == self.label2.text && self.label2.text == self.label3.text) {
        for (UILabel *label in self.row1){
            if( ![label.text isEqualToString:@" "]){

                {UIAlertView *alertView = [[UIAlertView alloc] init];
                    alertView.delegate = self;
                    alertView.title = [self.label1.text stringByAppendingString:@" WON!"];
                    [alertView addButtonWithTitle:@"Play Again!"];
                    [alertView show];
                }
            }
        }


    } else if (self.label4.text == self.label5.text && self.label5.text == self.label6.text) {
        for (UILabel *label in self.row2){
            if( ![label.text isEqualToString:@" "]){

                {UIAlertView *alertView = [[UIAlertView alloc] init];
                    alertView.delegate = self;
                    alertView.title = [self.label1.text stringByAppendingString:@" WON!"];
                    [alertView addButtonWithTitle:@"Play Again!"];
                    [alertView show];
                }
            }
        }


    } else if (self.label7.text == self.label8.text && self.label8.text == self.label9.text) {
        for (UILabel *label in self.row3){
            if( ![label.text isEqualToString:@" "]){

                {UIAlertView *alertView = [[UIAlertView alloc] init];
                    alertView.delegate = self;
                    alertView.title = [self.label1.text stringByAppendingString:@" WON!"];
                    [alertView addButtonWithTitle:@"Play Again!"];
                    [alertView show];
                }
            }
        }


    } else if (self.label1.text == self.label4.text && self.label4.text == self.label7.text) {
        for (UILabel *label in self.column1){
            if( ![label.text isEqualToString:@" "]){

                {UIAlertView *alertView = [[UIAlertView alloc] init];
                    alertView.delegate = self;
                    alertView.title = [self.label1.text stringByAppendingString:@" WON!"];
                    [alertView addButtonWithTitle:@"Play Again!"];
                    [alertView show];
                }
            }
        }


    } else if (self.label2.text == self.label5.text && self.label5.text == self.label8.text) {
        for (UILabel *label in self.column2){
            if( ![label.text isEqualToString:@" "]){

                {UIAlertView *alertView = [[UIAlertView alloc] init];
                    alertView.delegate = self;
                    alertView.title = [self.label1.text stringByAppendingString:@" WON!"];
                    [alertView addButtonWithTitle:@"Play Again!"];
                    [alertView show];
                }
            }
        }

    } else if (self.label3.text == self.label6.text && self.label6.text == self.label8.text) {
        for (UILabel *label in self.column3){
            if( ![label.text isEqualToString:@" "]){

                {UIAlertView *alertView = [[UIAlertView alloc] init];
                    alertView.delegate = self;
                    alertView.title = [self.label1.text stringByAppendingString:@" WON!"];
                    [alertView addButtonWithTitle:@"Play Again!"];
                    [alertView show];

                }
            }
        }

    } else if (self.label1.text == self.label5.text && self.label5.text == self.label9.text) {
        for (UILabel *label in self.across1){
                if( ![label.text isEqualToString:@" "]){

                {UIAlertView *alertView = [[UIAlertView alloc] init];
                    alertView.delegate = self;
                    alertView.title = [self.label1.text stringByAppendingString:@" WON!"];
                    [alertView addButtonWithTitle:@"Play Again!"];
                    [alertView show];
                }
            }
        }

    } else if (self.label3.text == self.label5.text && self.label5.text == self.label7.text) {
        for (UILabel *label in self.across2){
                if(![label.text isEqualToString:@" "]){
                UIAlertView *alertView = [[UIAlertView alloc] init];
                    alertView.delegate = self;
                    alertView.title = [self.label1.text stringByAppendingString:@" WON!"];
                    [alertView addButtonWithTitle:@"Play Again!"];
                    [alertView show];
                }
            }

}

return nil;}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    [self restart];
}

    - (void) restart{

                     self.label1.text = @" ";
                     self.label2.text = @" ";
                     self.label3.text = @" ";
                     self.label4.text = @" ";
                     self.label5.text = @" ";
                     self.label6.text = @" ";
                     self.label7.text = @" ";
                     self.label8.text = @" ";
                     self.label9.text = @" ";
                    self.whichPlayerLabel.text = @"Player X";
    }



//        }else (CGRectContainsPoint(label.frame, point)) {
 //           label.text = @"O";
 //       label.textColor = [UIColor redColor];









//New Game Started







@end
