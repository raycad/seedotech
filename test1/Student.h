//
//  Student.h
//  test1
//
//  Created by raycad on 10/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Student : NSObject {
    NSString *name;
    int m_age;
}

@property (nonatomic, retain) NSString* name;

- (int) age;

@end
