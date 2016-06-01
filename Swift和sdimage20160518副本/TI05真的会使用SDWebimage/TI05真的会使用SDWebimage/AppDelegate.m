//
//  AppDelegate.m
//  TI05真的会使用SDWebimage
//
//  Created by Box on 16/5/18.
//  Copyright © 2016年 Box. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/**
 *  App的 UI入口，也是进行数据初始化的地方
 *
 *  @param application   <#application description#>
 *  @param launchOptions <#launchOptions description#>
 *
 *  @return <#return value description#>
 */
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //判断网络状态
    //可以用ASI的网络判断或者AFN的网络判断
    
    //标记网络状态
    //如果是wifi
    if(wifi){
        //标记一下纪录
        //友情提示 要么存 plist 要么单例
        //提醒用户当前网络状态
    }else if(3G){
        
    }else{//无网络
        
    }
    
    //每一次请求都要去 判断网络状态通不通
    //是否加载什么图片 根据 是wifi还是3G
    
    
    
    
    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
