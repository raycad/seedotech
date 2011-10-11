//
//  TextSource.m
//  test1
//
//  Created by raycad on 10/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TextSource.h"

@implementation TextSource

@synthesize student;

- (id)init {
    self = [super init];
    if (self) {
        student = nil;
    }
    return self;
}

- (void) parse {
    printf("parse\n");
}

- (int) parseObject:(id)object withCondition:(id)cond {
    printf("parseObject\n");
    return -1;
}

- (void) test {
    if (self.student) {
        printf("test\n");
        [student setName:@"1111111"];
    }
}
@end
