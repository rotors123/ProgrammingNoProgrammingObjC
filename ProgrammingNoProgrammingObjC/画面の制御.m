//
//  画面の制御.m
//  できるだけプログラムっぽくないプログラミング
//
//  Created by rotors123 on 2017/07/11.
//  Copyright © 2017年 rotors123. All rights reserved.
//

#import "画面の制御.h"

@interface 画面の制御 ()

@property (nonatomic, weak) IBOutlet UITextView *文字用の部品;

@end

@implementation 画面の制御

- (void)viewDidLoad {

    [super viewDidLoad];
    
    _文字用の部品.editable = NO;
    _文字用の部品.selectable = NO;

    [self 文字を書く];
    
}

- (void)文字を書く {
    
    _文字用の部品.text = @"test.\ntext.";
    
}

@end
