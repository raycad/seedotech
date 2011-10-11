//
//  AbstractSource.h
//  test1
//
//  Created by raycad on 10/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol AbstractSource <NSObject>
- (void) parse;
- (int) parseObject:(id)object withCondition:(id)cond;
@end
