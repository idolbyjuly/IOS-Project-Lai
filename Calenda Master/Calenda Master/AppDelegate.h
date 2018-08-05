//
//  AppDelegate.h
//  Calenda Master
//
//  Created by 姜来 on 2018/8/5.
//  Copyright © 2018年 姜来. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

