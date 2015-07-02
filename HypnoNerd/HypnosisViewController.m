//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by zhengna on 15/7/2.
//  Copyright (c) 2015年 zhengna. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)viewDidLoad{

    [super viewDidLoad];
    NSLog(@"HypnosisViewController loaded its view.");
}

- (void)loadView{

    //create a view
    HypnosisView *backgroundView = [[HypnosisView alloc] init];
    
    //set it as *the* view of this view controller
    self.view = backgroundView;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{

    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        //set the tab bar item's title
        self.tabBarItem.title = @"Hypnotize";
        
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        self.tabBarItem.image = i;
    }
    return self;
}

@end
