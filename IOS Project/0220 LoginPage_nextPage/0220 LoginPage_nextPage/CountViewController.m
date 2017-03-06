//
//  CountViewController.m
//  0220 LoginPage_nextPage
//
//  Created by katniss on 2017. 3. 2..
//  Copyright © 2017년 katniss. All rights reserved.
//

#import "CountViewController.h"

@interface CountViewController ()
<UIGestureRecognizerDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property UIImagePickerController *cameracontroller;


@end

@implementation CountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //    UITapGestureRecognizer *tapGesture;
    //    tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
    //    tapGesture.delegate = self;
    //    tapGesture.numberOfTapsRequired =1;
    //
    //    [self.view addGestureRecognizer:tapGesture];
    
    
    //카메라 컨트롤러
//    _cameracontroller = [[UIImagePickerController alloc]init];
//    _cameracontroller.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//    _cameracontroller.allowsEditing = NO;
//    _cameracontroller.delegate = self;
//    
//    
//}
////텝 제스쳐 등록
//    UITapGestureRecognizer *tapGesture;
//    tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
//    tapGesture.delegate = self;
//    tapGesture.numberOfTapsRequired =1;
//
//    [self.view addGestureRecognizer:tapGesture];
//
//
//}
//



//좌표를 받아오려면 , delegate의 gesturerecogniger가 필요
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
//{
//    CGPoint temp = [touch locationInView:self.view];
//    self.Count.text= [NSString stringWithFormat:@"%lf, %lf",temp.x,temp.y];
//    self.text1.text= [NSString stringWithFormat:@"%ld", touch.tapCount];
//    return YES;

//shouldreceivetouch
//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
//{
//    CGPoint temp = [touch locationInView:self.view];
//    self.countNum.text = [NSString stringWithFormat:@"%ld",touch.tapCount];
//
//    return YES;
//}
//
//
//- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
//{
//    NSLog(@"info %@",info);
//    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
//    self.imgView.image = image;
//    
//}
//
//
//- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
//{
//    [picker dismissViewControllerAnimated:YES completion:nil];
//}
//
//
//
//
//
//- (IBAction)tapHandle:(UITapGestureRecognizer *)sender {
//    
//    [self presentViewController:_cameracontroller animated:YES completion:nil];
//    
//    
//}

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
}
  
@end

