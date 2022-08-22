//
//  main.m
//  bytedance_tree
//
//  Created by faker on 2022/7/28.
//

#import <Foundation/Foundation.h>
#import "node.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *preorder = @[@1,@2,@4,@7,@3,@5,@6,@8];
        NSArray *inorder = @[@4,@7,@2,@1,@5,@3,@8,@6];
        Node *node = [[Node alloc] init];
        node = [node rebuild:preorder inorder:inorder];
        [node postorderTraversal:node];
    }
    return 0;
}


