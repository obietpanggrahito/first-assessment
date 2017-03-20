//
//  Web2ViewController.m
//  Week1Assessment - Yohan
//
//  Created by Obiet Panggrahito on 20/03/2017.
//  Copyright © 2017 Obiet Panggrahito. All rights reserved.
//

#import "Web2ViewController.h"

@interface Web2ViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation Web2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.webView.delegate = self;
   
    [self loadView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) loadView {
    
    NSString *google = @"https://www.google.com";
    NSURL * URL = [NSURL URLWithString:google];
    NSURLRequest *request = [ NSURLRequest requestWithURL:URL];
    [self.webView loadRequest:request];
    
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    NSLog(@"Start");
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
