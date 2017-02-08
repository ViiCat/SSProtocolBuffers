//
//  ViewController.m
//  SSProtocolBuffer
//
//  Created by Jason.Liu on 17/2/8.
//  Copyright © 2017年 ViiCat.com. All rights reserved.
//

#import "ViewController.h"
#import "Person.pb.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    PersonBuilder *builder = [[PersonBuilder alloc] init];
    //属性赋值
    [builder setName:@"Jaosn.Liu"];
    [builder setAge:18];
    [builder setAddress:@"HangZhou"];
    
    Person *person = [builder build];
    NSLog(@"Name:%@", person.name);
    NSLog(@"Age:%@", @(person.age));
    NSLog(@"Address:%@", person.address);
    
    //person对象转成二进制
    NSData *personData = [person data];
    NSLog(@"%@", personData);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
