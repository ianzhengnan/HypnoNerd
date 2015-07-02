//
//  HypnosisView.m
//  Hypn1
//
//  Created by zhengna on 15/6/30.
//  Copyright (c) 2015年 zhengna. All rights reserved.
//

#import "HypnosisView.h"

@interface HypnosisView ()

@property (nonatomic, strong) UIColor *circleColor;

@end


@implementation HypnosisView



- (void)drawRect:(CGRect)rect{

    CGRect bounds = self.bounds;
    
    CGPoint center;
    
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    //获取最大半径
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    //设置画圆的路径
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center radius:currentRadius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    
    path.lineWidth = 10;
    //设置画笔
    [self.circleColor setStroke];
    //画圆
    [path stroke];
    
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    NSLog(@"%@ was touched", self);
    
    // get 2 random numbers between 0 and 1
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    
    self.circleColor = randomColor;
}

- (instancetype)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)setCircleColor:(UIColor *)circleColor{

    _circleColor = circleColor;
    [self setNeedsDisplay];
}


@end
