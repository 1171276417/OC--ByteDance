//
//  Sort.m
//  bytedance_sort
//
//  Created by faker on 2022/7/27.
//

#import "Sort.h"

@implementation Sort

- (void)quickSort:(NSMutableArray *)array low:(int)low high:(int)high
{
    if(array == nil || array.count == 0){
        return;
    }
    if (low >= high) {
        return;
    }
    
    //取中值
    int middle = low + (high - low)/2;
    NSNumber *prmt = array[middle];
    int i = low;
    int j = high;
    
    //开始排序，使得left<prmt 同时right>prmt
    while (i <= j) {
        //        while ([array[i] compare:prmt] == NSOrderedAscending) {  该行与下一行作用相同
        while ([array[i] intValue] < [prmt intValue]) {
            i++;
        }
        //        while ([array[j] compare:prmt] == NSOrderedDescending) { 该行与下一行作用相同
        while ([array[j] intValue] > [prmt intValue]) {
            j--;
        }
        
        if(i <= j){
            [array exchangeObjectAtIndex:i withObjectAtIndex:j];
            i++;
            j--;
        }
    }
    
    if (low < j) {
        [self quickSort:array low:low high:j];
    }
    if (high > i) {
        [self quickSort:array low:i high:high];
    }
}

#pragma - mark 选择排序
- (void)selectSort:(NSMutableArray *)array
{
    if(array == nil || array.count == 0){
        return;
    }
    
    int min_index;
    for (int i = 0; i < array.count; i++) {
        min_index = i;
        for (int j = i + 1; j<array.count; j++) {
            if ([array[j] compare:array[min_index]] == NSOrderedAscending) {
                [array exchangeObjectAtIndex:j withObjectAtIndex:min_index];
            }
        }
    }
}

- (void)heapAdjust:(NSMutableArray *)marr start:(int)start end:(int)end{
    int lchild = 2*start; //i的左孩子节点序号
    int rchild = 2*start+1; //i的右孩子节点序号
    int max = start;  //临时变量
    
    if (start <= end/2) {  //如果i是叶节点就不用进行调整
        
        if (lchild <= end && [marr[lchild] integerValue] > [marr[max] integerValue]) {
            max = lchild;
        }
        
        if (rchild <= end && [marr[rchild] integerValue] > [marr[max] integerValue] ) {
            max = rchild;
        }
        
        if (max != start) {
            [marr exchangeObjectAtIndex:start withObjectAtIndex:max];
            // 避免调整之后以max为父节点的子树不是堆
            [self heapAdjust:marr start:max end:end];
        }
    }
}

- (void)buildHeap:(NSMutableArray *)marr  {
    int size = (int)marr.count;
    // 最后一个叶子节点的索引值是n-1，它的父节点索引值是[(n-1)-1]/2 = n/2 -1
    for (int i = size/2-1; i >= 0; --i) {
        [self heapAdjust:marr start:i end:size-1];
    }
}

- (void)heapSort:(NSMutableArray *)marr {
    [self buildHeap:marr];
    
    NSLog(@"build Heap after: %@", marr);
    
    int len = (int)marr.count-1;
    for (int i = len; i >= 0; i--) {
        // 交换堆顶和最后一个元素，即每次将剩余元素中的最大者放到最后面
        [marr exchangeObjectAtIndex:0 withObjectAtIndex:i];
        // 重新调整堆顶节点成为大顶堆
        [self heapAdjust:marr start:0 end:i-1];
    }
}


- (void)printArray:(NSArray *)array
{
    for(NSNumber *number in array) {
        printf("%d ",[number intValue]);
    }
    
    printf("\n");
}

@end
