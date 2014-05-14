//
//  ViewController.m
//  MySafari
//
//  Created by Abdullah AlMubarak on 5/14/14.
//  Copyright (c) 2014 Abdullah AlMubarak. All rights reserved.
//

#import "WebViewController.h"



@interface WebViewController () <UIWebViewDelegate, UITextFieldDelegate, UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
@property (weak, nonatomic) IBOutlet UITextField *myURLTextField;
@property (weak, nonatomic) IBOutlet UIButton *goBack;
@property (weak, nonatomic) IBOutlet UIButton *goForward;



@end

@implementation WebViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField

{
    NSURL *url = [NSURL URLWithString:textField.text];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.myWebView loadRequest:request];
    [textField resignFirstResponder];

    //NSLog(@"%@", textField.text);
    return YES;
}

- (IBAction)onBackButtonPressed:(id)sender

{
    [self.myWebView goBack];

}

- (IBAction)onForwardButtonPressed:(id)sender

{
    [self.myWebView goForward];
}

- (IBAction)onStopLoadingButtonPressed:(id)sender

{
    [self.myWebView stopLoading];
}
- (IBAction)onReloadButtonPressed:(id)sender

{
    [self.myWebView reload];

}

-(void)viewDidLoad

{
    [super viewDidLoad];
    self.goBack.enabled = [self.myWebView canGoBack];
    self.goForward.enabled = [self.myWebView canGoForward];
}

- (void)webViewDidStartLoad:(UIWebView *)webView

{
    self.goBack.enabled = [self.myWebView canGoBack];
    self.goForward.enabled = [self.myWebView canGoForward];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField

{
    NSString *url = [NSString stringWithString:<#(NSString *)#>
}

sringbyappendingstring

//-(BOOL)textFieldShouldReturn:(UITextField *)textField
//
//{
//    NSString *string = [NSString stringWithCharacters:https: length:<#(NSUInteger)#>
//}


@end
