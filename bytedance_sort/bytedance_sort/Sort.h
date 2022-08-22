//  Sort.h
//  bytedance_sort
//
//  Created by faker on 2022/7/27.
//

#ifndef Sort_h
#define Sort_h
#import <Foundation/Foundation.h>

@interface Sort : NSObject

// 快速排序
- (void)quickSort:(NSMutableArray *)array low:(int)low high:(int)high;

// 选择排序
- (void)selectSort:(NSMutableArray *)array;

// 堆排序
- (void)heapAdjust:(NSMutableArray *)marr start:(int)start end:(int)end;

- (void)buildHeap:(NSMutableArray *)marr;

- (void)heapSort:(NSMutableArray *)marr;

//打印数组
- (void)printArray:(NSArray *)array;
@end
#endif /* Sort_h */
