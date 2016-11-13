//
//  DataModel.h
//  cellCountDown
//
//  Created by Mac on 2016/11/11.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject

///剩余秒数
@property (nonatomic,assign)NSInteger countTime;

///是否是倒计时中
@property (nonatomic,assign)BOOL isCountDown;


-(id)dict;

+(id)modelWithDict:(NSDictionary *)dict;
@end
