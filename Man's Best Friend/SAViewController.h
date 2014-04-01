//
//  SAViewController.h
//  Man's Best Friend
//
//  Created by Sachin Ahuja on 3/3/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SAViewController : UIViewController

-(void)printHelloWorld;
- (IBAction)dogButton:(UIBarButtonItem *)sender;

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (strong, nonatomic) NSObject *currentDog;



@end
