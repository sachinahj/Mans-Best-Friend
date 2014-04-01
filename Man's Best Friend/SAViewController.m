//
//  SAViewController.m
//  Man's Best Friend
//
//  Created by Sachin Ahuja on 3/3/14.
//  Copyright (c) 2014 Sachin Ahuja. All rights reserved.
//

#import "SAViewController.h"
#import "SAdog.h"
#import "SApuppy.h"

@interface SAViewController ()

@end

@implementation SAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    SAdog *myDog = [[SAdog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 3;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    SAdog *secondDog = [[SAdog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    SAdog *thirdDog = [[SAdog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    SAdog *fourthDog = [[SAdog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    self.currentDog = [self.myDogs objectAtIndex:0];
    
    SApuppy *littlePuppy = [[SApuppy alloc] init];
    [littlePuppy bark];

    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"Portugese Water Dog";
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    
    [self.myDogs addObject:littlePuppy];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printHelloWorld
{
    NSLog(@"Hello World");
}

- (IBAction)dogButton:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    SAdog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    while (randomDog == self.currentDog)
    {
        randomIndex = arc4random() % numberOfDogs;
        randomDog = [self.myDogs objectAtIndex:randomIndex];
    }
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
    }];
    self.currentDog = randomDog;
    sender.title = @"And Another";
}
@end
