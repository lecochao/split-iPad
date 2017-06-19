//
//  ShpLeftBarViewController.m
//  RootController
//
//  Created by lecochao on 2017/6/17.
//  Copyright © 2017年 lecochao. All rights reserved.
//

#import "ShpLeftBarViewController.h"
#import "ShpLeftBarItem.h"
@interface ShpLeftBarViewController ()

@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIImageView *shopImg;
@property (weak, nonatomic) IBOutlet UILabel *shopName;
@property (weak, nonatomic) IBOutlet UIButton *moreBtn;
@property (strong,nonatomic) NSArray *titles;
@property (strong,nonatomic) NSArray *images;
@end

@implementation ShpLeftBarViewController

- (void)updateWith:(NSArray*)imgNames Title:(NSArray*)titles
{
    if (imgNames.count != titles.count) {
        NSAssert(NO, @"bug");
    }
    _images = imgNames;
    _titles = titles;
    [_tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _bgView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"selectedTab"]];
    _images = @[@"Imagebtn",@"Imagebtn",@"Imagebtn",@"Imagebtn",@"Imagebtn",@"Imagebtn",@"Imagebtn",@"Imagebtn",@"Imagebtn"];
    _titles = @[@"首页",@"患者",@"销售",@"采购",@"扫码",@"个人",@"个人",@"个人",@"个人"];
    if (_titles.count>6) {
        _moreBtn.hidden = NO;
    }else
        _moreBtn.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slidingBottomWithScrollView:(id)sender {

    CGFloat y = self.tableView.contentSize.height - self.tableView.bounds.size.height;
    [self.tableView setContentOffset:CGPointMake(0, y) animated:YES];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"mainTabBar"]];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.contentOffset.y>(_titles.count-6)*75 -20) {
        _moreBtn.hidden = YES;
    }else
        _moreBtn.hidden = NO;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _titles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ShpLeftBarItem *item = [tableView dequeueReusableCellWithIdentifier:@"ShpLeftBarItem"];
    item.title.text = _titles[indexPath.row];
    item.icon.image = [UIImage imageNamed:_images[indexPath.row]];
    item.mark.hidden = YES;
    return item;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"___%ld",(long)indexPath.row);
    if (_disSelected) {
        _disSelected(indexPath.row);
    }
}

- (void)willTabBarSelected:(NSInteger)index
{
    [_tableView selectRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:index] animated:YES scrollPosition:UITableViewScrollPositionBottom];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
