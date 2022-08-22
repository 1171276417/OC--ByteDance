//
//  tree.h
//  bytedance_tree
//
//  Created by faker on 2022/7/28.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
@property (nonatomic, assign) NSInteger element;
@property (nonatomic, strong) Node *leftChild;
@property (nonatomic, strong) Node *rightChild;
- (Node*)rebuild:(NSArray *) preorder inorder:(NSArray *) inorder;
- (void)postorderTraversal:(Node *)node;

@end

