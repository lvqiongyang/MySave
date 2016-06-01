//
//  TableViewCell.m
//  TI05真的会使用SDWebimage
//
//  Created by Box on 16/5/18.
//  Copyright © 2016年 Box. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(Model *)newModel {
//    _model = newModel;
    if(_modle != newModel){
        UIImage *placeHolder = [UIImage imageNamed:@"placHolder.jpg"];
        //判断网络状态
        //这种做法不好的地方
        //如果这次请求的时候是 wifi 会下载 如果转眼间变成3g状态 则会都下载，这样做的问题是在于本次请求的图片已经在沙河中SDWebImage的CacheImage文件夹中，so 浪费空间也浪费流量，so 要增加一个逻辑，先判断当前沙盒中有没有没有就去下载有就加载
        if (wifi) {
            //加载原图 下载原图
            imageURL = [UIURL URLWithString:_model.imageOriginalURLString];
            [self.imageView sd_setImageURL:imageURL placeholder:placeHolder];
        }else{
            //3g 下载小图
            [self.imageView sd_setImageURL:thumbnailImageURL placeholder:placeHolder];
        }
        
        
        /**
         *
         *  修改版
         *
         */
        
        
        
        
        
        if (缓存中有原图) {
            self.imageView.image = 原图;
        }else{
            if (wifi) {
                //下载原图并显示
            }else if(手机自带网络){
                if(3G/4G/5G){
                    下载显示原图
                }else{
                    下载显示小图
                }
            }else{
                if (有小图) {
                    self.imageView.image = 小图;
                }else{//离线转态
                    self.imageView.image = ploacholder;
                }
            }
        }
        
        /**
         *  如何获取原图
         *
         *
         */
        
        UIImage *orginalImage = [[SDImageCache sharedImageCache] imageFromDiskCacheForKey:_model.orginalImageURLString];
        if (orginalImage) {
            
        }
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
