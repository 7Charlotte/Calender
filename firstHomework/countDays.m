//
//  countDays.m
//  firstHomework
//
//  Created by Charlotte on 13年10月3日.
//  Copyright (c) 2013年 Charlotte. All rights reserved.
//

#import "countDays.h"

@implementation countDays
@synthesize year,month;

-(int) getMDay:(int)y andmonth:(int)m
{
    int mday[12]={31,28,31,30,31,30,31,31,30,31,30,31};
    
    if ((y%4==0 && y%100!=0)||y%400) {
        mday[1]=29;
    }
    
    return mday[m-1];
}

-(int) getDate:(int)y andmonth:(int)m
{
    int days,offset = 0,i=1;
    
    if (m<=12&&m>=1) {
        for (i=1; i<m; ++i) {
            offset+=[self getMDay:y andmonth: m];
        }
    }
    
    days=(y-1 + (y-1)/4 - (y-1)/100  + (y-1)/400  + offset)%7;
   
    return days;
    
}

-(void)showCal
{
    countDays *cal=[[countDays alloc]init];
    int week=[cal getDate:year andmonth:month];
    NSLog(@"");
    NSLog(@"Sun Mon Tue Wed Tur Fri Sat");
    NSLog(@"---------------------------");
    NSLog(@"%d",week);
    for (int i=1; i<=(4*week+1); ++i) {
        NSLog(@" ");
    }
}

@end
