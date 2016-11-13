//
//  DataModel.m
//  cellCountDown
//
//  Created by Mac on 2016/11/11.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

+(id)modelWithDict:(NSDictionary *)dict
{
    DataModel *dataModel = [DataModel new];
    [dataModel setValuesForKeysWithDictionary:dict];
    return dataModel;

}



-(id)dict
{

    return @{
             @"countTime" : @(self.countTime),
             @"isCountDown" : @(self.isCountDown)

             };
}
@end
