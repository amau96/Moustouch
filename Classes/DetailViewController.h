//
//  DetailViewController.h
//  tview
//
//  Created by amaury blanc on 10-12-19.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface DetailViewController : UIViewController<UIScrollViewDelegate> {
	
    //Declarer un "monMenu" de type string
    //Afficher le type de nom menu
    NSString *monMenu;
    //Afficher cela dans un label
    //IBOulet permet de le rendre visible depuis Interface Blinder
    //UILabel permet de declarer la variable "monLabel" comme un Label cad un texte
    IBOutlet UILabel *monLabel;
	IBOutlet UIScrollView *scrollView;
	IBOutlet UIView *maVue;
	//IBOutlet UIButton *button1;
	//IBOutlet UIButton *button1;
	//IBOutlet UIButton *button1;
	//IBOutlet UIButton *button1;
	
}
- (IBAction) buttonClick : (id) sender;


//A mettre tout le temps
@property(nonatomic,retain) UILabel *monLabel;
@property(nonatomic,retain) NSString *monMenu;
@property (nonatomic, retain) UIScrollView *scrollView;
@property(nonatomic,retain) UIView *maVue;
@end
