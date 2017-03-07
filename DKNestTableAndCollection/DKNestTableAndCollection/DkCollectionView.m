//
//  DkCollectionView.m
//  DKNestTableAndCollection
//
//  Created by duke on 16/7/19.
//  Copyright © 2016年 duke. All rights reserved.
//

#import "DkCollectionView.h"

@interface DkCollectionView ()<UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic, strong) UICollectionViewFlowLayout *layout;
@property (nonatomic, assign) CGSize *itemSize;
@property (nonatomic, strong) NSArray *shortAttay;

@end


@implementation DkCollectionView

static NSString * const reuseIdentifier = @"Cell";

- (UICollectionViewFlowLayout *)layout{
    
    if (!_layout) {
        _layout = [[UICollectionViewFlowLayout alloc] init];
        _layout.itemSize = *(self.itemSize);
        _layout.minimumInteritemSpacing = 0;
        _layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        _layout.sectionInset = UIEdgeInsetsMake(0, 9, 0, 9);
    }
    
    return _layout;
}

- (instancetype)initWithFrame:(CGRect)frame collectionWithItemSize:(CGSize)size{
    self.itemSize = &size;
    if (self = [super initWithFrame:frame collectionViewLayout:self.layout]) {
        self.bounces = NO;
        self.pagingEnabled = NO;
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.delegate = self;
        self.dataSource = self;
        [self registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    }
    return self;
}

#pragma mark --- UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 10;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.contentView.backgroundColor = [UIColor lightGrayColor];
    
    return cell;
}

//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
//    
//    CGFloat x = (self.frame.size.width - 28)/2;
//    CGFloat y = 90;
//    
//    return CGSizeMake(x, y);
//}
//
//- (UIEdgeInsets) collectionView:(UICollectionView *)collectionView
//                         layout:(UICollectionViewLayout *)collectionViewLayout
//         insetForSectionAtIndex:(NSInteger)section{
//    
//    return UIEdgeInsetsMake(25, 9, 2, 9);
//}



@end
