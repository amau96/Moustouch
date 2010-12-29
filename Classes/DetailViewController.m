//
//  DetailViewController.m
//  tview
//
//  Created by amaury blanc on 10-12-19.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"


@implementation DetailViewController

@synthesize monMenu, monLabel;
@synthesize scrollView,maVue;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

- (IBAction) buttonClick : (id) sender
{
	NSString *title = [(UIButton *)sender currentTitle];

    NSLog(@"Clicked:%@",title);
	if ([title isEqualToString:@"rouge"] ) {
		NSLog(@"C'est du rouge");
	}
	
	[monLabel setText:title];
	
}






// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	//mon label peut prendre la valeur de mon menu
    [monLabel setText:monMenu];
	CGRect frame = CGRectMake(1, 1, 320, 480); // Replacing with your dimensions
	//maVue = [[UIView alloc] initWithFrame:frame];
	maVue.userInteractionEnabled = YES;
	scrollView.contentSize = CGSizeMake(320, 480);
	scrollView.bounces = YES;
	//scrollView.bouncesZoom = YES;
	scrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
	scrollView.scrollEnabled = FALSE;
	scrollView.minimumZoomScale = 1.0;
	scrollView.maximumZoomScale = 1.5;
	scrollView.delegate = self;
    [scrollView addSubview:maVue];
	
}


- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)maVue atScale:(float)scale{
		NSLog(@"fff");
}



- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
	return maVue;
}



- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"scroll detected");
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_3_2){
    NSLog(@"zoom detected");
}





// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return(YES);
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
