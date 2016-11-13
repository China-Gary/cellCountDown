//
//  CountDownCell.h
//  cellCountDown
//
//  Created by Mac on 2016/11/11.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DataModel;
@interface CountDownCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@property (nonatomic,strong)DataModel *model;

@end
