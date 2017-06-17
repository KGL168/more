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
    /////
    
    ///
    /*
github 上传版本终端命令
     Last login: Sat Jun 17 09:34:54 on console
     kaka:~ HotFire$ cd ~/.ssh
     kaka:.ssh HotFire$ echo "# more" >> README.md
     kaka:.ssh HotFire$   git init
     Initialized empty Git repository in /Users/mac/.ssh/.git/
     kaka:.ssh HotFire$   git add README.md
     kaka:.ssh HotFire$   git commit -m "first commit"
     [master (root-commit) b016947] first commit
     1 file changed, 1 insertion(+)
     create mode 100644 README.md
     kaka:.ssh HotFire$   git remote add origin https://github.com/KGL168/more.git
     kaka:.ssh HotFire$   git push -u origin master
     Username for 'https://github.com': echo "# more" >> README.md
     git init
     git add README.md
     git commit -m "first commit"
     git remote add origin https://github.com/KGL168/more.git
     git push -u origin masterPassword for 'https://echo "# more" >> README.md@github.com':
     
     remote: Invalid username or password.
     fatal: Authentication failed for 'https://github.com/KGL168/more.git/'
     kaka:.ssh HotFire$
     kaka:.ssh HotFire$   git push -u origin master
     Username for 'https://github.com': KGL168
     Password for 'https://KGL168@github.com':
     Counting objects: 3, done.
     Writing objects: 100% (3/3), 214 bytes | 0 bytes/s, done.
     Total 3 (delta 0), reused 0 (delta 0)
     To https://github.com/KGL168/more.git
     * [new branch]      master -> master
     Branch master set up to track remote branch master from origin.
     kaka:.ssh HotFire$   git push -u origin master
     Username for 'https://github.com': KGL168
     Password for 'https://KGL168@github.com':
     remote: Invalid username or password.
     fatal: Authentication failed for 'https://github.com/KGL168/more.git/'
     kaka:.ssh HotFire$   git push -u origin master
     Username for 'https://github.com': KGL168
     Password for 'https://KGL168@github.com':
     Branch master set up to track remote branch master from origin.
     Everything up-to-date
     kaka:.ssh HotFire$ git config –global user.name
     error: key does not contain a section: –global
     kaka:.ssh HotFire$ clear
     
     kaka:.ssh HotFire$ cd /Users/mac/Desktop/测试Demo/TESTDemo
     kaka:TESTDemo HotFire$ touch README.md
     kaka:TESTDemo HotFire$ git init
     Reinitialized existing Git repository in /Users/mac/Desktop/测试Demo/TESTDemo/.git/
     kaka:TESTDemo HotFire$ git add  README.md
     kaka:TESTDemo HotFire$ git commit -m "first commit"
     [master 9860d16] first commit
     1 file changed, 0 insertions(+), 0 deletions(-)
     create mode 100644 README.md
     kaka:TESTDemo HotFire$ git remote add origin https://github.com/KGL168/more
     kaka:TESTDemo HotFire$ git push origin master
     Username for 'https://github.com': 779351046@qq.com
     Password for 'https://779351046@qq.com@github.com':
     To https://github.com/KGL168/more
     ! [rejected]        master -> master (fetch first)
     error: failed to push some refs to 'https://github.com/KGL168/more'
     hint: Updates were rejected because the remote contains work that you do
     hint: not have locally. This is usually caused by another repository pushing
     hint: to the same ref. You may want to first integrate the remote changes
     hint: (e.g., 'git pull ...') before pushing again.
     hint: See the 'Note about fast-forwards' in 'git push --help' for details.
     kaka:TESTDemo HotFire$ git push origin master /Users/mac/Desktop/测试Demo/TESTDemo
     fatal: remote part of refspec is not a valid name in /Users/mac/Desktop/测试Demo/TESTDemo
     kaka:TESTDemo HotFire$ git push origin master /Users/mac/Desktop/测试Demo/TESTDemo/README.md
     fatal: remote part of refspec is not a valid name in /Users/mac/Desktop/测试Demo/TESTDemo/README.md
     kaka:TESTDemo HotFire$ git remote add origin https://github.com/KGL168/more/Users/mac/Desktop/测试Demo/TESTDemo/.git
     fatal: remote origin already exists.
     kaka:TESTDemo HotFire$ git push origin master
     Username for 'https://github.com': KGL168
     Password for 'https://KGL168@github.com':
     To https://github.com/KGL168/more
     ! [rejected]        master -> master (fetch first)
     error: failed to push some refs to 'https://github.com/KGL168/more'
     hint: Updates were rejected because the remote contains work that you do
     hint: not have locally. This is usually caused by another repository pushing
     hint: to the same ref. You may want to first integrate the remote changes
     hint: (e.g., 'git pull ...') before pushing again.
     hint: See the 'Note about fast-forwards' in 'git push --help' for details.
     kaka:TESTDemo HotFire$ clear
     
     kaka:TESTDemo HotFire$ $ git push -u origin master
     -bash: $: command not found
     kaka:TESTDemo HotFire$ git push -u origin master
     Username for 'https://github.com': 779351046@qq.com
     Password for 'https://779351046@qq.com	@github.com':
     remote: Invalid username or password.
     fatal: Authentication failed for 'https://github.com/KGL168/more/'
     kaka:TESTDemo HotFire$ git push -u origin master
     Username for 'https://github.com': KGL168
     Password for 'https://KGL168@github.com':
     To https://github.com/KGL168/more
     ! [rejected]        master -> master (fetch first)
     error: failed to push some refs to 'https://github.com/KGL168/more'
     hint: Updates were rejected because the remote contains work that you do
     hint: not have locally. This is usually caused by another repository pushing
     hint: to the same ref. You may want to first integrate the remote changes
     hint: (e.g., 'git pull ...') before pushing again.
     hint: See the 'Note about fast-forwards' in 'git push --help' for details.
     kaka:TESTDemo HotFire$ kill
     kill: usage: kill [-s sigspec | -n signum | -sigspec] pid | jobspec ... or kill -l [sigspec]
     kaka:TESTDemo HotFire$ kill all
     -bash: kill: all: arguments must be process or job IDs
     kaka:TESTDemo HotFire$ clear
     
     kaka:TESTDemo HotFire$  git pull origin master
     warning: no common commits
     remote: Counting objects: 3, done.
     remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
     Unpacking objects: 100% (3/3), done.
     From https://github.com/KGL168/more
     * branch            master     -> FETCH_HEAD
     * [new branch]      master     -> origin/master
     Auto-merging README.md
     Merge made by the 'recursive' strategy.
     README.md | 1 +
     1 file changed, 1 insertion(+)
     kaka:TESTDemo HotFire$ git push -u origin master
     Username for 'https://github.com': 779351046@qq.com
     Password for 'https://779351046@qq.com@github.com':
     Counting objects: 33, done.
     Delta compression using up to 4 threads.
     Compressing objects: 100% (28/28), done.
     Writing objects: 100% (33/33), 8.66 KiB | 0 bytes/s, done.
     Total 33 (delta 5), reused 0 (delta 0)
     remote: Resolving deltas: 100% (5/5), done.
     To https://github.com/KGL168/more
     b016947..6cc0e5a  master -> master
     Branch master set up to track remote branch master from origin.
     kaka:TESTDemo HotFire$  git pull origin master
     From https://github.com/KGL168/more
     * branch            master     -> FETCH_HEAD
     Already up-to-date.
     kaka:TESTDemo HotFire$ git push -u origin master
     Username for 'https://github.com': 779351046@qq.com
     Password for 'https://779351046@qq.com@github.com': 
     Branch master set up to track remote branch master from origin.
     Everything up-to-date
     kaka:TESTDemo HotFire$ 

     
     */
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
