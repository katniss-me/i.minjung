//
//  AddView.m
//  0303 DataCenter
//
//  Created by katniss on 2017. 3. 3..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "AddView.h"

@interface AddView ()
@property (nonatomic) NSArray *arraylist;

@end

@implementation AddView

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //documents directory base
    NSString *basePath = [paths objectAtIndex:0];
    //file path
    NSString *docuPath = [basePath stringByAppendingPathComponent:@"Property List"];
    
    NSFileManager *filemanage = [NSFileManager defaultManager];
    if (![filemanage fileExistsAtPath:docuPath]) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"파일타입"];
        [filemanage copyItemAtPath:bundlePath toPath:docuPath error:nil];
        
    }
    
    NSArray *array = [NSArray arrayWithContentsOfFile:docuPath];
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
