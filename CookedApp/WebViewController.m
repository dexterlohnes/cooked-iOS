//
//  WebViewController.m
//  CookedApp
//
//  Created by Dexter Lohnes on 5/7/15.
//  Copyright (c) 2015 The Wise City. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController (){
    IBOutlet UIWebView* webView;
}

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 1.0f, 1.0f)];
    
    [webView setDelegate:self];
    webView.scalesPageToFit = YES;
    
    NSURLRequest* req = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.thewisecity.org/declare-home-preview"] cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:60];
    [webView loadRequest:req];
    
    NSLog(@"got to end of view did load");
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"Failed load");
}

-(void) webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"Finished load");
}


-(void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"Started load");
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
