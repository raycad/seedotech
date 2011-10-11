//
//  main.m
//  test1
//
//  Created by raycad on 10/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"
#import "AdvStudent.h"
#import "TextSource.h"
int main(int argc, char *argv[])
{
    AdvStudent *advSt = [[AdvStudent alloc] init];
    int age = [advSt age];
    Student *st = nil;
    int a = [st retainCount];
    st = [[Student alloc] init];
    [st setName:@"raycad"];
    NSString *str = [st name];
        
    a = [st retainCount];
    Student *st2 = st;
    a = [st retainCount];
    int b = [st2 retainCount];
    
    TextSource *ts = [[TextSource alloc] init];
    [ts parse];

    id<AbstractSource> abstractSource = ts;
    [abstractSource parse];
    
    if ([st conformsToProtocol:@protocol(AbstractSource)])
        printf("student conforms to the AbstractSource protocol\n");
    else 
        printf("student does not conform to the AbstractSource protocol\n");
    
    if ([ts conformsToProtocol:@protocol(AbstractSource)])
        printf("TextSource conforms to the AbstractSource protocol\n");
    else 
        printf("TextSource does not conform to the AbstractSource protocol\n");
    
    printf("Student retain count = %d\n", [st retainCount]);
    [ts test];
    
    [ts setStudent:st];
    
    printf("Student retain count = %d\n", [st retainCount]);
    
    [ts test];
    str = [st name];
    printf("Student name = %@\n", str);
    printf("Student name = %s\n", [st name]);
    
    str = @"3333";
    str = [st valueForKey:@"name22"];
        
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    
    return retVal;
}
