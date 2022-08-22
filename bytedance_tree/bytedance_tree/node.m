//
//  tree.m
//  bytedance_tree
//
//  Created by faker on 2022/7/28.
//

#import "node.h"


@implementation Node
- (instancetype)initWithItem:(NSInteger)item {
    self = [super init];
    if (self) {
        self.element = item;
    }
    
    return self;
}
- (Node*)rebuild:(NSArray *) preorder inorder:(NSArray *) inorder{
    if(preorder == NULL){
        return NULL;
    }
    Node *node = [[Node alloc] init];
    node.element = [preorder[0] integerValue];
    NSInteger len = inorder.count;
    for (int i = 0;i < len;++i){
        if((NSInteger)preorder[0] == (NSInteger)inorder[i]){
            if(i != 0){
                node.leftChild = [self rebuild:[preorder subarrayWithRange:NSMakeRange(1,i)] inorder:[inorder subarrayWithRange:NSMakeRange(0,i)]];
            }else{
                node.leftChild = NULL;
            }
            if(i != len-1){
                node.rightChild = [self rebuild:[preorder subarrayWithRange:NSMakeRange(i+1,len-1-i)] inorder:[inorder subarrayWithRange:NSMakeRange(i+1,len-1-i)]];
            }else{
                node.rightChild = NULL;
            }
        }
    }
    return node;
}

- (void)postorderTraversal:(Node *)node {
    if (node == nil) return;
    [self postorderTraversal: node.leftChild];
    [self postorderTraversal: node.rightChild];
    NSLog(@"%ld", node.element);
}

@end


