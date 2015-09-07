//
//  WATagViewController.m
//  百思不得姐
//
//  Created by peanut on 15/9/1.
//  Copyright (c) 2015年 peanut. All rights reserved.
//

#import "WATagViewController.h"
#import <MJExtension/MJExtension.h>
#import <AFNetworking.h>
#import "WATag.h"
#import <SVProgressHUD.h>
#import "WATagCell.h"

@interface WATagViewController ()
//  所有的标签数据  (里面存放的是WATag模型)
@property (nonatomic, strong)NSArray *tags;
//  创建管理者

@property (nonatomic, weak)AFHTTPSessionManager *manager;

@end

@implementation WATagViewController

//  懒加载创建管理者
- (AFHTTPSessionManager *)manager
{
    if (!_manager) {
        _manager = [AFHTTPSessionManager manager];
    }
    return _manager;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = WACommonBgColor;
    
    self.title = @"推荐标签";
//    self.view.backgroundColor = [UIColor yellowColor];
    
    [self setupTable];
    [self loadTags];
   
}
/**
 *  设置Table的方法
 */
- (void)setupTable

{
    //   设置行高
    self.tableView.rowHeight = 70;
    
    //  去掉系统分割线
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    //  注册cell
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([WATagCell class]) bundle:nil] forCellReuseIdentifier:@"tag"];
}

/**
 *  加载数据 的方法
 */

- (void)loadTags

{
    //  加载标签数据
    //  请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params [@"a"] = @"tag_recommend";
    params[@"action"] = @"sub";
    params[@"c"] = @"topic";
    
    //  弹框
    [SVProgressHUD show];
    
    //  发送请求 _weak 弱引用 第三方框架的方法最好使用弱引用
    __weak typeof (self)weakSelf = self;
    [self.manager GET:@"http://api.budejie.com/api/api_open.php" parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        if (responseObject == nil) {//  如果没有加载到数据
            // 加载的弹框
            [SVProgressHUD showErrorWithStatus:@"加载数据失败"];
            return;
        }
        
        weakSelf.tags = [WATag objectArrayWithKeyValuesArray:responseObject];
        
        //  刷新表格
        [weakSelf.tableView reloadData];
        
        //  关闭弹窗
        [SVProgressHUD dismiss];
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        //  如果取消了任务,不算任务失败,就直接返回
        if(error.code == NSURLErrorCancelled)return;
        if(error.code == NSURLErrorTimedOut){
            //  关闭弹窗
            [SVProgressHUD showErrorWithStatus:@"加载标签失败,请稍后再试!"];
        }else{
            //  关闭弹窗
            [SVProgressHUD showErrorWithStatus:@"加载标签数据失败"];
        }
        }];
        }

- (void)dealloc
{
    //  停止请求
    [self.manager invalidateSessionCancelingTasks:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tags.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    WATagCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tag"];
    cell.tagModel = self.tags[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    [tableView deselectRowAtIndexPath:tableView animated:YES];
}



@end
