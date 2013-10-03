//
//  countDays.h
//  firstHomework
//
//  Created by Charlotte on 13年10月3日.
//  Copyright (c) 2013年 Charlotte. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface countDays : NSObject
@property int year,month;

-(int) getMDay:(int) y andmonth:(int) m;
-(int) getDate:(int) y andmonth:(int) m;
-(void) showCal;
@end
