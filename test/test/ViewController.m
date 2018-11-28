//
//  ViewController.m
//  test
//
//  Created by Evan on 2017/8/30.
//  Copyright © 2017年 Evan. All rights reserved.
//

#import "ViewController.h"
#import <Flutter/Flutter.h>

@interface ViewController ()
@property (nonatomic, strong) NSString *target;
@property (nonatomic, strong) dispatch_queue_t concurrentQueue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(handleButtonAction)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Press me" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    button.frame = CGRectMake(0, 0, 160.0, 40.0);
    button.center = self.view.center;
    [self.view addSubview:button];
//    [self.view addSubview:view];
    
//    UIGraphicsBeginImageContextWithOptions(view.frame.size, YES, 3);

//    self.concurrentQueue = dispatch_queue_create("concurrentQueue.ys.com", DISPATCH_QUEUE_CONCURRENT);
//    [self GCDbarrier];
    
//    __weak typeof(&*self) weakSelf = self;
//    dispatch_queue_t queue = dispatch_queue_create("test", DISPATCH_QUEUE_CONCURRENT);
//    for (int i = 0; i < 100; i++) {
//        dispatch_async(queue, ^{
//            weakSelf.target = [[NSString alloc] initWithFormat:@"%d",i];
//        });
//    }
//    
//    NSLog(@"%@",self.target);
    
//    NSLog(@"1========%@",[NSThread currentThread]);
//    dispatch_async(dispatch_get_main_queue(), ^{
//        NSLog(@"2========%@",[NSThread currentThread]);
//    });
//    NSLog(@"3========%@",[NSThread currentThread]);
    
    
//    [self test2];
//    NSArray *array1 = @[@(-1),@(0),@(2)];
//    NSArray *array2 = @[@(1),@(1),@(1)];
//    NSArray *array3 = @[@(0),@(6),@(1)];

//    [self asyncCalculationAverageValue:array1 array2:array2 array3:array3];
    // Do any additional setup after loading the view.
    
//    NSLog(@"***************** 20 *********************/n");
//    [self calculationRemainder2:20 maxCount:4600 maxCount1:4575 maxCount2:4500];
//    NSLog(@"***************** 30 *********************/n");
//    [self calculationRemainder2:30 maxCount:3124 maxCount1:3108 maxCount2:3063];
//    NSLog(@"***************** 40 *********************/n");
//    [self calculationRemainder2:40 maxCount:2300 maxCount1:2290 maxCount2:2285];
//    NSLog(@"***************** 50 *********************/n");
//    [self calculationRemainder2:50 maxCount:1855 maxCount1:1835 maxCount2:1795];
//    NSLog(@"***************** 60 *********************/n");
//    [self calculationRemainder2:60 maxCount:1562 maxCount1:1546 maxCount2:1517];
//    NSLog(@"***************** 70 *********************/n");
//    [self calculationRemainder2:70 maxCount:1311 maxCount1:1310 maxCount2:1297];
//    NSLog(@"***************** 80 *********************/n");
//    [self calculationRemainder2:80 maxCount:1151 maxCount1:1149 maxCount2:1146];
//    NSLog(@"***************** 90 *********************/n");
//    [self calculationRemainder2:90 maxCount:1110 maxCount1:1107 maxCount2:1101];
//    NSLog(@"***************** 100 *********************/n");
//    [self calculationRemainder2:100 maxCount:960 maxCount1:955 maxCount2:940];
//    NSLog(@"***************** 130 *********************/n");
//    [self calculationRemainder2:130 maxCount:707 maxCount1:706 maxCount2:705];
//    NSLog(@"***************** 180 *********************/n");
//    [self calculationRemainder2:180 maxCount:555 maxCount1:552 maxCount2:549];
//    NSLog(@"***************** 220 *********************/n");
//    [self calculationRemainder2:220 maxCount:422 maxCount1:421 maxCount2:419];
//    [self testContainsObject];
//    [self recordingAnimation];
}

- (void)handleButtonAction
{
    FlutterViewController* flutterViewController = [[FlutterViewController alloc] init];
    [flutterViewController setInitialRoute:@"Native"];
    [self presentViewController:flutterViewController animated:false completion:nil];
}


- (void)recordingAnimation
{
    self.view.backgroundColor = [UIColor blackColor];
    UIView *view = [[UIView alloc] init];
    view.layer.masksToBounds = YES;
    view.layer.cornerRadius = 50;
    view.backgroundColor = [UIColor whiteColor];
    view.frame = CGRectMake(0, 0, 100, 100);
    view.center = self.view.center;
    [self.view addSubview:view];
    
    CAKeyframeAnimation *opacityAnimation = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    opacityAnimation.values = @[@0.3, @0.8, @0.3];
    opacityAnimation.duration = 2.0;
    opacityAnimation.repeatCount = MAXFLOAT;
    
    CAKeyframeAnimation *scaleAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    scaleAnimation.values = @[@1.0, @0.85, @1.0];
    scaleAnimation.duration = 2.0;
    scaleAnimation.repeatCount = MAXFLOAT;
    
    CAAnimationGroup *animGroup = [CAAnimationGroup animation];
    animGroup.animations = [NSArray arrayWithObjects:opacityAnimation, scaleAnimation, nil];
    animGroup.duration = 2.0;
    animGroup.repeatCount = MAXFLOAT;
    animGroup.timingFunction = [CAMediaTimingFunction functionWithControlPoints:.27 :.71 :.78 :1];
    [view.layer addAnimation:animGroup forKey:@"animation"];

    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 150) radius:50.0 startAngle:0 endAngle:2*M_PI clockwise:YES];
    CAShapeLayer *pathLayer = [CAShapeLayer layer];
    pathLayer.lineWidth = 5;
    pathLayer.strokeColor = [UIColor whiteColor].CGColor;
    pathLayer.fillColor = nil; // 默认为blackColor
    pathLayer.path = path.CGPath;
    [pathLayer addAnimation:animGroup forKey:@"layerAni"];
    [self.view.layer addSublayer:pathLayer];
}

//- (void)setTarget:(NSString *)target
//{
//    [target retain];
//    [_target release];
//    _target = target;
//}

- (void)testContainsObject
{
    NSMutableArray *sources = [NSMutableArray array];
    for (int i = 0; i <= 1000; i++) {
        [sources addObject:@(i)];
    }
    
    NSMutableArray *containsArray = [NSMutableArray array];
    for (int i = 0; i < 100; i++) {
        int x = arc4random() % 1000;
        [containsArray addObject:@(x)];
    }
    
    NSMutableDictionary *containsDic = [NSMutableDictionary dictionary];
    for (int i = 0; i < 100; i++) {
        [containsDic setObject:@(i) forKey:@(i)];
    }
    
    NSTimeInterval sTimeStart0 = CACurrentMediaTime();
    NSMutableArray *find0 = [NSMutableArray array];
    for (NSNumber *number in sources) {
        for (NSNumber *number1 in containsArray) {
            if (number == number1) {
                [find0 addObject:number];
            }
        }
    }
    NSTimeInterval sTimeEnd0 = CACurrentMediaTime();
    NSLog(@"array for.....%f",(sTimeEnd0 - sTimeStart0)*1000);
    
    NSTimeInterval sTimeStart = CACurrentMediaTime();
    NSMutableArray *find = [NSMutableArray array];
    for (NSNumber *number in sources) {
        if ([containsArray containsObject:number]) {
            [find addObject:number];
        }
    }
    NSTimeInterval sTimeEnd = CACurrentMediaTime();
    NSLog(@"array containsObject.....%f",(sTimeEnd - sTimeStart)*1000);
    
    NSTimeInterval sTimeStart1 = CACurrentMediaTime();
    NSMutableArray *find2 = [NSMutableArray array];
    for (NSNumber *number in sources) {
        NSNumber *obj = [containsDic objectForKey:number];
        if (obj) {
            [find2 addObject:obj];
        }
    }
    NSTimeInterval sTimeEnd1 = CACurrentMediaTime();
    NSLog(@"containsDic objectForKey.....%f",(sTimeEnd1 - sTimeStart1)*1000);
    
    NSLog(@"......");
}

- (void)test1 {
    NSLog(@"1========");
    dispatch_sync(dispatch_get_main_queue(), ^{
        NSLog(@"2========");
    });
    NSLog(@"3========");
}

- (void)test2 {
    NSLog(@"1========");
    dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"2========");
    });
    NSLog(@"3========");
}

- (void)test3 {
    NSLog(@"1========");
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"2========");
    });
    NSLog(@"3========");
}

-(void)GCDbarrier{
    dispatch_async(self.concurrentQueue, ^{
        NSLog(@"1=====");
    });
    dispatch_async(self.concurrentQueue, ^{
        NSLog(@"2=====");
    });
    
    dispatch_barrier_async(self.concurrentQueue, ^{
        NSLog(@"3=====");
    });
    
    NSLog(@"4======");
    dispatch_async(self.concurrentQueue, ^{
        NSLog(@"5=====");
    });
    NSLog(@"6=====");
    dispatch_async(self.concurrentQueue, ^{
        NSLog(@"7=====");
    });
}

- (void)asyncCalculationAverageValue:(NSArray *)array1 array2:(NSArray *)array2 array3:(NSArray *)array3
{
    dispatch_group_t g =  dispatch_group_create();
 
    __block CGFloat array1AverageValue = 0;
    __block CGFloat array2AverageValue = 0;
    __block CGFloat array3AverageValue = 0;
    
    __weak typeof (&*self)weakSelf = self;
    dispatch_group_async(g, dispatch_get_global_queue(0, 0), ^{
        array1AverageValue = [weakSelf averageValue:array1];
    });
    
    dispatch_group_async(g, dispatch_get_global_queue(0, 0), ^{
        array2AverageValue = [weakSelf averageValue:array2];
    });
    
    dispatch_group_async(g, dispatch_get_global_queue(0, 0), ^{
        array3AverageValue = [weakSelf averageValue:array3];
    });
    
    dispatch_group_notify(g, dispatch_get_main_queue(), ^{
        NSLog(@"Sum of averages is %f",array1AverageValue+array2AverageValue+array3AverageValue);
    });
}

- (CGFloat)averageValue:(NSArray *)array
{
    NSInteger count = array.count;
    if (!count)
        return 0;
    CGFloat total = 0;
    for (NSNumber *num in array) {
        total += num.integerValue;
    }
    
    return total/count;
}

- (void)calculationRemainder
{
    NSMutableDictionary *remainderDic = [NSMutableDictionary dictionary];
    
    for (int i = 0; i <= 99999; i++) {
        NSInteger remainder = i%50;
        NSString *key = @(remainder).stringValue;
        NSNumber *count = remainderDic[key];
        if (count) {
            count = @(count.integerValue + 1);
            remainderDic[key] = count;
        }
        else
        {
            remainderDic[key] = @(1);
        }
    }
    
    for (int i = 0; i < 50; i++) {
        NSNumber *count = remainderDic[@(i).stringValue];
        NSLog(@"remainder %d count = %d\n",i, count.intValue);
    }
}

- (void)calculationRemainder2:(NSInteger)count maxCount:(NSInteger)maxCount maxCount1:(NSInteger)maxCount1 maxCount2:(NSInteger)maxCount2
{
    NSMutableDictionary *remainderDic = [NSMutableDictionary dictionary];
    
    for (int i = 0; i <= 99999; i++) {
        if ([self calculationCount:i]) {
            NSInteger remainder = i%count;
            NSString *key = @(remainder).stringValue;
            NSNumber *count = remainderDic[key];
            if (count) {
                count = @(count.integerValue + 1);
                remainderDic[key] = count;
            }
            else
            {
                remainderDic[key] = @(1);
            }
        }
    }
    
//    NSArray *list = [remainderDic.allValues sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
//        NSInteger val1 = ((NSNumber*)obj1).intValue;
//        NSInteger val2 = ((NSNumber*)obj2).intValue;
//        if (val1 > val2) return NSOrderedDescending;
//        return NSOrderedAscending;
//    }];
//
//    NSLog(@"result = %@",list);
    for (int i = 0; i < count; i++) {
        NSNumber *count = remainderDic[@(i).stringValue];
        if (count.intValue == maxCount || count.intValue == maxCount1 || count.intValue == maxCount2)
            NSLog(@"%d",10000001+i);
    }
}

- (BOOL)calculationCount:(NSInteger)num
{
    int wan = (int)(num/10000);
    int qian = (int)(num/1000)%10;
    int bai = (int)(num/100)%10;
    int shi = (int)(num/10)%10;
    int ge = num%10;
    
    int pingjun = roundf((wan + qian + bai + shi + ge)/5.0);
    if (pingjun >= 3 && pingjun <= 6) return YES;
    return NO;
}

@end
