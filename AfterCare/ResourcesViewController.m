//
//  ResourcesViewController.m
//  AfterCare
//
//  Created by Grant Warman on 7/20/13.
//  Copyright (c) 2013 TabSprint. All rights reserved.
//

#import "ResourcesViewController.h"
#import "Website.h"
#import "CellFactory.h"
#import "PhoneNumber.h"
#import "NewResourceViewController.h"
#import "UIImageCreator.h"

#import <QuartzCore/QuartzCore.h>
#import "StyleManager.h"

#import "AddYourOwnResourcesTableViewCell.h"

@interface ResourcesViewController (){
    IBOutlet UIView* navBarFooterContentView;
    IBOutlet UIImageView* navBarFooterImageView;
    
    IBOutlet UILabel* emotionLabel;
    
    IBOutlet UIButton* backButton;
    
    IBOutlet AddYourOwnResourcesTableViewCell* addNewResourceCell;
}

-(IBAction)popSelf:(id)sender;

@end

@implementation ResourcesViewController

- (id) initWithEmotion: (Emotion *) emotion{
    if(self = [super initWithNibName: NSStringFromClass([ResourcesViewController class]) bundle: nil]){        
        self.emotion = emotion;
        self.title = [NSString stringWithFormat:@"I'm Feeling %@", emotion.name.capitalizedString];
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    UIColor* color = self.emotion.color;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImageCreator onePixelImageForColor:color] forBarMetrics:UIBarMetricsDefault];

    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
    
    navBarFooterImageView.image = [UIImageCreator arrowImageWithSize:navBarFooterImageView.frame.size andArrowSize:CGSizeMake(20.0, 8.0) andArrowWidthRatio:.5 andColor:color];
    
    navBarFooterImageView.layer.shadowOffset = CGSizeMake(0.0, 3.0);
    navBarFooterImageView.layer.shadowColor = [UIColor blackColor].CGColor;
    navBarFooterImageView.layer.shadowRadius = 2.0;
    navBarFooterImageView.layer.shadowOpacity = .5;
    
    emotionLabel.textColor = [UIColor changeBrightness:self.emotion.color amount:.6];
    
    [[StyleManager sharedStyleManager] setBoldFontForLabel:backButton.titleLabel];
    
    //Move out of the way of safety plan nav controller whose navigation bar is the same height as this one.
    self.tableView.frame = CGRectMake(0.0,
                                      self.tableView.frame.origin.y,
                                      self.tableView.frame.size.width,
                                      self.tableView.frame.size.height - self.navigationController.navigationBar.frame.size.height);
    
//    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addResource:)];
// 
//    self.navigationItem.rightBarButtonItem = button;
    
//    PhoneNumber* number = (PhoneNumber*)[NSEntityDescription
//                              insertNewObjectForEntityForName:@"PhoneNumber"
//                              inManagedObjectContext:self.managedObjectContext];
//    number.name = @"SUICIDE ANONYMOUS";
//    number.number = @"2486223655";
//    number.descript = @"Suicideanonymous.net is a website that provides resources that provide worldwide Skype meetings and other support systems.";
//    number.color = [UIColor depressedColor];

    
        
    [self fetchResources];

}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
     emotionLabel.text = self.emotion.emotionDescription;
}

-(void) fetchResources{
    self.dataSources = [self.emotion.resources allObjects];
    NSArray* colorChoices = [UIColor complementingColors:self.emotion.color];

    for(int i = 0; i < self.dataSources.count; i++){
        [[self.dataSources objectAtIndex:i] setValue:[colorChoices objectAtIndex:(i % colorChoices.count)]forKey:@"color"];
        
        [[self.dataSources objectAtIndex:i] setValue:self forKey:@"delegate"];
    }

}
- (id<CellDataProvider>) cellDataSourceForRowAtIndexPath:(NSIndexPath*) indexPath{
    return [self.dataSources objectAtIndex:indexPath.row];
}

#pragma mark - Table view data source

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row < self.dataSources.count){
        return [[self cellDataSourceForRowAtIndexPath:indexPath] cellHeight];
    }
    else return addNewResourceCell.frame.size.height;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSources.count + 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row < self.dataSources.count){
        return [CellFactory UITableViewCellFromDataSource:[self cellDataSourceForRowAtIndexPath:indexPath] tableView:tableView];
    }
    else return addNewResourceCell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row < self.dataSources.count){
        [[self cellDataSourceForRowAtIndexPath:indexPath] onDidSelectCell];
    }
    else{
        NewResourceViewController *controller = [[NewResourceViewController alloc] init];
        
        [self presentViewController:controller animated:YES completion:^{
            [self fetchResources];
            [self.tableView reloadData];
        }];
    }
}

- (void) pushUIViewController: (UIViewController *)controller{
    [self.navigationController pushViewController:controller animated:YES];
    controller.navigationItem.leftBarButtonItem.tintColor = self.emotion.color;
}

#pragma mark Actions

-(IBAction) addResource:(id)sender{
    NewResourceViewController *controller = [[NewResourceViewController alloc] init];
    
    [self presentViewController:controller animated:YES completion:^{
        [self fetchResources];
        [self.tableView reloadData];
    }];
}

-(IBAction)popSelf:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
