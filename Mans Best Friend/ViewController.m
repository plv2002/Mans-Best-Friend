//
//  ViewController.m
//  Mans Best Friend
//
//  Created by Paul Vana on 6/9/14.
//  Copyright (c) 2014 Paul Vana. All rights reserved.
//

#import "ViewController.h"
#import "MBFDog.h"
#import "MBFPuppy.h"

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    self.currentIndex = 0;
    
    // Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Bandit";
    myDog.breed = @"Pit";
    myDog.age = 6;
    myDog.image = [UIImage imageNamed:@"bandit.jpg"];
    
    MBFDog *myDog2 = [[MBFDog alloc] init];
    myDog2.name = @"Allie";
    myDog2.breed = @"Curd";
    myDog2.age = 8;
    myDog2.image = [UIImage imageNamed:@"allie.jpg"];
    
    MBFDog *myDog3 = [[MBFDog alloc] init];
    myDog2.name = @"Bandit 2";
    myDog2.breed = @"Pit";
    myDog2.age = 6;
    myDog2.image = [UIImage imageNamed:@"bandit2.jpg"];
    
    MBFDog *myCat = [[MBFDog alloc] init];
    myCat.name = @"Precious";
    myCat.breed = @"Mix";
    myCat.age = 11;
    myCat.image = [UIImage imageNamed:@"precious.jpg"];
    
    self.myImageView.image= myDog.image;
    self.lblName.text = myDog.name;
    self.lblBreed.text = myDog.breed;
    
    
    self.myPets  = [[NSMutableArray alloc] init];
    [self.myPets addObject:myDog];
    [self.myPets addObject:myDog2];
    [self.myPets addObject:myDog3];
    [self.myPets addObject:myCat];
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
    [littlePuppy bark];
    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    
    [self.myPets addObject:littlePuppy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnNewDog:(UIBarButtonItem *) sender
{
    int numberOfDogs = [self.myPets count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if (self.currentIndex == randomIndex && self.currentIndex ==0)
    {
        randomIndex++;
    }
    else if (self.currentIndex == randomIndex)
    {
        randomIndex--;
    }
    
    self.currentIndex = randomIndex;
    
    MBFDog *randomDog = [self.myPets objectAtIndex:randomIndex];
    
    [UIView transitionWithView:self.myImageView duration:2.5 options: UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image  = randomDog.image;
        self.lblBreed.text = randomDog.breed;
        self.lblName.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
//    self.myImageView.image  = randomDog.image;
//    self.lblBreed.text = randomDog.breed;
//    self.lblName.text = randomDog.name;

    sender.title = @"And Another";
}
@end
