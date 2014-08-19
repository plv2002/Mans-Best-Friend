//
//  ViewController.h
//  Mans Best Friend
//
//  Created by Paul Vana on 6/9/14.
//  Copyright (c) 2014 Paul Vana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UILabel *lblBreed;
@property (strong,nonatomic) NSMutableArray *myPets;
@property (nonatomic) int currentIndex;

- (IBAction)btnNewDog:(id)sender;
@end

