//
//  webViewController.m
//  Week1Assessment - Yohan
//
//  Created by Obiet Panggrahito on 20/03/2017.
//  Copyright © 2017 Obiet Panggrahito. All rights reserved.
//

#import "webViewController.h"

@interface webViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation webViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webView.delegate = self;

    [self loadView];
    // Do any additional setup after loading the view.
    
    
}


-(void) loadView {
    
    NSString *google = @"https://www.google.com";
    NSURL * URL = [NSURL URLWithString:google];
    NSURLRequest *request = [ NSURLRequest requestWithURL:URL];
    [self.webView loadRequest:request];

    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"finish load");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"%@", error.description);
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
