//
//  TextSource.h
//  test1
//
//  Created by raycad on 10/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractSource.h"
#import "Student.h"

@interface TextSource : NSObject <AbstractSource> {
    @private
    Student *student;
}

@property (nonatomic, retain) Student *student;

- (void) test;

@end
