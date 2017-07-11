//
//  画面の制御.m
//  できるだけプログラムっぽくないプログラミング
//
//  ロータース123によって2017年7月某日に作られました。
//  著作権: 2017年 ロータース123
//

// 冒頭のここだけは訳せない。
#import "画面の制御.h"

インターフェイスここから 画面の制御 ()
特性 (同時に高速に動く, 強い参照) 文字用の部品の雛形 ポインタを使って 文字用の部品;
ここまで

実装ここから 画面の制御

- (何も戻さない関数)画面が読み込まれた後に {
    
    // [親クラスの 画面が読み込まれた後に];
    [super viewDidLoad];

    NSLog(@"start viewDidLoad");
    
    [自クラスの 文字用の部品を作る];
    [自クラスの 文字を書く];

    NSLog(@"end viewDidLoad");

}

- (何も戻さない関数)文字用の部品を作る {
    
    // なぜかIBOutletでの紐付けができない状態となったので
    // コードでパーツ生成し、AutoLayoutを設定する。
    
    UITextView *textView = [[UITextView alloc] initWithFrame: self.view.bounds];
    textView.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview: textView];
    
    [textView setTranslatesAutoresizingMaskIntoConstraints: NO];
    
    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(textView);

    [NSLayoutConstraint activateConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat: @"H:|[textView]|"
                                             options: 0
                                             metrics: nil
                                               views: viewsDictionary]];
    [NSLayoutConstraint activateConstraints:
     [NSLayoutConstraint constraintsWithVisualFormat: @"V:|-100-[textView]-100-|"
                                             options: 0
                                             metrics: nil
                                               views: viewsDictionary]];
    
    textView.編集可能 = いいえ;
    textView.選択可能 = いいえ;

    自クラスの.文字用の部品 = textView;
    
/*
    [NSLayoutConstraint activateConstraints: @[
                                              [textView.centerXAnchor constraintEqualToAnchor:view.centerXAnchor],
                                              ...
                                              ]];
*/
    
    NSLog(@"textView = %@", textView);

}

- (何も戻さない関数)文字を書く {
    
    // 今回は簡素に。
    自クラスの.文字用の部品.テキスト = @"テスト。テスト。テスト。";
    
}

ここまで
