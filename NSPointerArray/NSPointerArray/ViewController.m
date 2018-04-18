//
//  ViewController.m
//  NSPointerArray
//
//  Created by Slava on 4/18/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   // Create pointer array and add 10 objects inside.
    
    NSArray *arrayString = @[@"a",@"s",@"f",@"hello",@"123",@"e",@"g",@"123",@"world",@"c"];
    
    NSPointerArray *pointerArray = [NSPointerArray weakObjectsPointerArray];
    
    
    for (NSString* str in arrayString) {
        
        [pointerArray addPointer:( void *) str];
        
    }
    
   // Check arrays count.
    
    NSLog(@"%lu",(unsigned long)[pointerArray count]);
    NSLog(@" pointer -- %@", pointerArray);
   
   // Nil several objects, added to the array and check count once again
    
    NSString* nil1 = nil;
    NSString* nil2 = nil;
    
    [pointerArray addPointer:( void *) nil1];
    [pointerArray addPointer:( void *) nil2];
    [pointerArray addPointer:( void *) nil];
    
    NSLog(@"%lu",(unsigned long)[pointerArray count]);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
