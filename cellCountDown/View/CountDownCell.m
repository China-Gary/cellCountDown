//
//  CountDownCell.m
//  cellCountDown
//
//  Created by Mac on 2016/11/11.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "CountDownCell.h"
#import "DataModel.h"

@interface CountDownCell ()
@property (weak, nonatomic) IBOutlet UIButton *countDownBtn;


@end




@implementation CountDownCell

- (void)awakeFromNib {
    [super awakeFromNib];
}


-(void)setModel:(DataModel *)model
{
    _model = model;
    self.countDownBtn.hidden = !model.isCountDown;
    if (model.countTime == 0)
    {
        [self.countDownBtn setTitle:@"倒计时结束" forState:UIControlStateNormal];
        return;
    }
    [self.countDownBtn setTitle:[self timeFormatted:model.countTime] forState:UIControlStateNormal];
}

- (NSString *)timeFormatted:(NSInteger )totalSeconds
{
    NSInteger seconds = totalSeconds % 60;
    NSInteger minutes = (totalSeconds / 60) % 60;
    NSInteger hours = (totalSeconds / 3600) % 24;
    NSInteger days = totalSeconds / 86400;
    return [NSString stringWithFormat:@"%ld天 %02ld : %02ld : %02ld", days, hours, minutes, seconds];
}



















@end
