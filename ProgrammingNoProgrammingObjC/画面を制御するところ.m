//
//  ViewController.m
//  ProgrammingNoProgrammingObjC
//
//  Created by rotors123 on 2017/07/11.
//  Copyright © 2017年 rotors123. All rights reserved.
//

#import "画面を制御するところ.h"

@interface 画面を制御するところ ()

@property (nonatomic, weak) IBOutlet UITextView *textView;

@end

@implementation 画面を制御するところ

- (void)viewDidLoad {

    [super viewDidLoad];
    
    _textView.editable = NO;

    [self drawText];
    
}

- (void)drawText {
    
    _textView.text = @"text\ntext.";
    
}


@end
