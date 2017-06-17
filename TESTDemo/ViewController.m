//
//  ViewController.m
//  TESTDemo
//
//  Created by HotFire on 2017/6/17.
//  Copyright © 2017年 HotFire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
//     git 出错及解决
//     刚创建的github版本库，在push代码时出错：
//     
//     $ git push -u origin master
//     To git@github.com:******/Demo.git
//    ! [rejected] master -> master (non-fast-forward)
//error: failed to push some refs to 'git@github.com:******/Demo.git'
//hint: Updates were rejected because the tip of your current branch is behind
//hint: its remote counterpart. Merge the remote changes (e.g. 'git pull')
//hint: before pushing again.
//hint: See the 'Note about fast-forwards' in 'git push --help' for details.
//    
//    网上搜索了下，是因为远程repository和我本地的repository冲突导致的，而我在创建版本库后，在github的版本库页面点击了创建README.md文件的按钮创建了说明文档，但是却没有pull到本地。这样就产生了版本冲突的问题。
//    
//    有如下几种解决方法：
//    
//    1.使用强制push的方法：
//    
//    $ git push -u origin master -f
//    
//    这样会使远程修改丢失，一般是不可取的，尤其是多人协作开发的时候。
//    
//    2.push前先将远程repository修改pull下来
//    
//    $ git pull origin master
//    
//    $ git push -u origin master
//    
//    3.若不想merge远程和本地修改，可以先创建新的分支：
//    
//    $ git branch [name]
//    
//    然后push
//    
//    $ git push -u origin [name]
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
