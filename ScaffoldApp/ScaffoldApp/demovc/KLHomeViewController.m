//
//  KLHomeViewController.m
//  ScaffoldApp
//
//  Created by xinxiang on 2022/7/14.
//

#import "KLHomeViewController.h"
#import <Lottie/Lottie.h>

@interface KLHomeViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation KLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell_id" forIndexPath:indexPath];
    cell.textLabel.text = @"1111111";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UITableView *)tableView {
    if (!_tableView) {
        NSLog(@"%f", kScreenHeight);
        NSLog(@"%f", kTopSafeHeight);
        NSLog(@"%f", kBottomSafeHeight);
//        CGFloat height = (kScreenHeight - kTopSafeHeight - kBottomSafeHeight);
//        CGFloat height2 = (kScreenHeight + kTopSafeHeight + kBottomSafeHeight);
//        CGFloat screenHeight = kScreenHeight;
//        CGFloat naviagtionHeight = kNavigationBarHeight;
//        CGFloat topSafeHeight = kTopSafeHeight;
//        CGFloat bottomSafeHeight = kBottomSafeHeight;
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, kTopSafeHeight, kScreenWidth, kScreenHeight - kNavigationBarHeight - kBottomSafeHeight) style:UITableViewStyleGrouped];
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell_id"];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
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
