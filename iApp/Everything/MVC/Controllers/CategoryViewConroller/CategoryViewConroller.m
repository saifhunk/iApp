//
//  CategoryViewConroller.m
//  iApp
//
//  Created by Saif Chaudhary on 9/6/15.
//  Copyright (c) 2015 Saif Chaudhary. All rights reserved.
//

#import "CategoryViewConroller.h"
#define Width6 375

@interface CategoryViewConroller ()
{
    BOOL IsAllLoads;
    NSIndexPath * indexpath1;
    CGRect screenSize;
}

@end

@implementation CategoryViewConroller

AWCollectionViewDialLayout *dialLayout;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUi];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

-(void)viewDidLayoutSubviews
{
    if(IsAllLoads == YES)
    {
        IsAllLoads = NO;
        [_CollectionViewCategory setContentOffset:CGPointMake(0, 100)];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupUi
{
        _arrayFavourite = [[NSMutableArray alloc]init];
    _arrayCategories = [[NSMutableArray alloc]initWithObjects:@"Tech",@"Science",@"Food",@"Movies",@"Comedy",@"Music",@"Politics", nil];
    [_CollectionViewCategory registerNib:[UINib nibWithNibName:@"dialCellCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"dialCellCollectionViewCell"];
    [_collectionViewFavorite registerNib:[UINib nibWithNibName:@"CategoryCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"CollectionViewCategory"];
    _CollectionViewCategory.transform = CGAffineTransformMakeRotation(-M_PI_2);
    CGFloat radius = 0.389999986 * 1000;
    CGFloat angularSpacing = 0.1 * 160;
    CGFloat xOffset;
    screenSize = [[UIScreen mainScreen]bounds];
    if (screenSize.size.width == 320)
    {
        xOffset  = 0.07 * screenSize.size.width ;

    }
    else
    {
    xOffset = 0.1 * screenSize.size.width ;
    }
    
    CGFloat cell_width = 100;
    CGFloat cell_height = 100;
    dialLayout = [[AWCollectionViewDialLayout alloc] initWithRadius:radius andAngularSpacing:angularSpacing andCellSize:CGSizeMake(cell_width, cell_height) andAlignment:WHEELALIGNMENTCENTER andItemHeight:cell_height andXOffset:xOffset];
    [_CollectionViewCategory setCollectionViewLayout:dialLayout];
}


#pragma mark - collectionView Delegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (_collectionViewFavorite == collectionView)
    {
        
        return _arrayFavourite.count;
    }
    else{
    return 7;
    }
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
{
    if (_CollectionViewCategory == collectionView) {
        
    dialCellCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"dialCellCollectionViewCell" forIndexPath:indexPath];
    if (cell == nil) {
        
        cell = [[[NSBundle mainBundle]loadNibNamed:@"dialCellCollectionViewCell" owner:self options:nil]objectAtIndex:0];
    }
    
        cell.labelCategoryName.text = [_arrayCategories objectAtIndex:indexPath.row];
        cell.labelCategoryName.transform = CGAffineTransformMakeRotation(M_PI_2);
        cell.imageViewcategory.transform = CGAffineTransformMakeRotation(M_PI_2);
        if (indexPath.row == 2) {
            indexpath1 = indexPath;
            IsAllLoads = YES;

        }
    
    return cell;
    }
    else
    {
        CategoryCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCategory" forIndexPath:indexPath];
        if (cell == nil) {
            
            cell = [[[NSBundle mainBundle]loadNibNamed:@"CategoryCollectionViewCell" owner:self options:nil]objectAtIndex:0];
        }
        cell.labelCategoryName.font = [UIFont fontWithName:@"Halvetica" size:16.0f];
        cell.labelCategoryName.text = [_arrayFavourite objectAtIndex:indexPath.row];
        return cell;
    }
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (_CollectionViewCategory == collectionView) {
        
        if (![_arrayFavourite containsObject:[_arrayCategories objectAtIndex:indexPath.row]]) {
            [_arrayFavourite addObject:[_arrayCategories objectAtIndex:indexPath.row]];
            if ((screenSize.size.width = 320))
            {
                [_collectionViewFavorite reloadData];
                if (_arrayFavourite.count == _arrayCategories.count) {
                    [_collectionViewFavorite scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionBottom animated:YES];
                    
                }
            }
            else
            {
                [_collectionViewFavorite reloadData];

            }
        }
    }
    else
    {
        [_arrayFavourite removeObjectAtIndex:indexPath.row];
        [_collectionViewFavorite reloadData];
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    if (_CollectionViewCategory == collectionView) {

    return 0;
    }
    else
    {
        return 0;
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    if (_CollectionViewCategory == collectionView) {
        
        return 0;
    }
    else
    {
        return 0;
    }

}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    CGRect screen = [[UIScreen mainScreen]bounds];
    if (Width6 != screen.size.width) {
        return UIEdgeInsetsMake(0, 10, 0, 0);

    }
    else
    {
        return UIEdgeInsetsMake(0, 0, 0, 0);
    }
    }

#pragma mark - IBAction

- (IBAction)ActionBtnFeed:(id)sender {
    
}
@end
