//
//  main.m
//  bytedance_sort
//
//  Created by faker on 2022/7/27.
//

#import <Foundation/Foundation.h>
#import "Sort.h"

int main(int argc, const char * argv[]) {
    Sort *sort = [[Sort alloc] init];
    NSMutableArray *array_heap = [NSMutableArray arrayWithObjects:@1,@3,@101,@50,@24,@2,@0,nil];
    [sort heapSort:array_heap];
    NSLog(@"heapsort result =%@", array_heap);
    
    NSMutableArray *array_quick = [NSMutableArray arrayWithObjects:@1,@3,@101,@50,@24,@2,@0,nil];
    [sort quickSort:array_quick low:0 high:6];
    NSLog(@"quicksort result =%@", array_quick);
    
    NSMutableArray *array_select = [NSMutableArray arrayWithObjects:@1,@3,@101,@50,@24,@2,@0,nil];
    [sort selectSort:array_select];
    NSLog(@"selectsort result =%@", array_select);
    
    
}
