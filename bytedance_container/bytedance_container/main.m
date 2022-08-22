//
//  main.m
//  bytedance_container
//
//  Created by faker on 2022/7/28.
//

#import <Foundation/Foundation.h>
@interface Calculator : NSObject
 
@property (nonatomic, assign) int result;
 
- (void)calculator:(void(^)(int num))calculator;
 
- (void(^)(void))test;
@end


@implementation Calculator
 
- (void)calculator:(void(^)(int) )calculator {
    
    calculator(10);
    
}
 
- (void (^)(void))test {
 
    return ^{
        NSLog(@"return block");
    };
}
@end


@interface Person : NSObject

@property (nonatomic,strong)NSString * name;
@property (nonatomic,assign)int age;

- (id)initWithName:(NSString *)name andAge:(int)age;

@end

@implementation Person

- (id)initWithName:(NSString *)name andAge:(int)age
{
    if (self = [super init])
    {
        _name = name;
        _age = age;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"age = %d name = %@",_age,_name];
}

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSarray
        
//        NSArray * array = [[NSArray alloc] init];
//
//        NSLog(@"%@",array);
//
//        NSArray * array1 = [NSArray arrayWithObjects:@"one",@"two",@"three", nil];
//        NSLog(@"%@",array1);
//
//        NSNumber * number = [NSNumber numberWithInt:10];
//        NSArray * array2 = [[NSArray alloc] initWithObjects:@"one",@"two",number, nil];
//        NSLog(@"array2  %@",array2);
//
//        NSArray * a1 = [[NSArray alloc] initWithObjects:@"one",@"two",@"three", nil];
//        NSArray * a2 = [[NSArray alloc] initWithObjects:@"1",@"2",@"3", nil];
//        NSArray * a3 = [[NSArray alloc] initWithObjects:a1,a2, nil];
//
//        NSLog(@"a3 %@",a3);
//
//        Person * p1 = [[Person alloc] initWithName:@"xiaozhe" andAge:20];
//        Person * p2 = [[Person alloc] initWithName:@"hell" andAge:18];
//        Person * p3 = [[Person alloc] initWithName:@"marray" andAge:38];
//
//        NSArray * array3 = [[NSArray alloc] initWithObjects:p1,p2,p3, nil];
//        NSLog(@"array3  %@",array3);
//
//        NSString * str = nil;
//        NSArray * array4 = [[NSArray alloc] initWithObjects:@"2",str,[NSNumber numberWithInt:23], nil];
//        NSLog(@"array4 %@",array4);
//
//        NSArray * karray = @[@"a",@"b",@"c"];
//        NSLog(@"karray %@",karray);
//
//        NSString * kstr = karray[0];
//        NSLog(@"kstr %@",kstr);
        
        
//        NSArray * array = [[NSArray alloc] initWithObjects:@"one",@"two",@"three", nil];
//        NSString * str = [array objectAtIndex:0];
//        NSLog(@"str %@",str);
//        NSUInteger arrayCount = [array count];
//        NSLog(@"arrayCount %d",arrayCount);

//        NSArray * array = [[NSArray alloc] initWithObjects:@"one",@"two",@"three", nil];
//        NSString * str = [array objectAtIndex:0];
//        NSLog(@"str %@",str);
//        NSUInteger arrayCount = [array count];
//        NSLog(@"arrayCount %d",arrayCount);
        
//        Person * p1 = [[Person alloc] initWithName:@"yofer" andAge:20];
//        Person * p2 = [[Person alloc] initWithName:@"luke" andAge:30];
//
//        NSArray * array = @[p1,p2];
//
//        BOOL isContain = [array containsObject:p1];
//        if (isContain)
//        {
//            NSLog(@"存在");
//        }else
//        {
//            NSLog(@"不存在");
//        }
        
//        NSArray * array = @[@"one",@"two",@"three"];
//        for (int i = 0; i < array.count; i++)
//        {
//            NSString * str = array[i];
//            NSLog(@"array[%d] = %@",i,str);
//        }
//        for (NSString * str in array)
//        {
//            NSLog(@"str = %@",str);
//        }
//        NSArray * array3 = @[@"one",@"two",@"three"];
//
//        NSEnumerator * enumerateor =  [array3 objectEnumerator];
//
//        NSString * value;
//
//        while (value = [enumerateor nextObject]) {
//            NSLog(@"enum str %@",value);
//        }
        
//        NSArray * array = @[@"b",@"d",@"a",@"z"];
//        NSLog(@"排序前 array %@",array);
//
//        array = [array sortedArrayUsingSelector:@selector(compare:)];
//        // NSArray * array1 = [array sortedArrayUsingSelector:@selector(compare:)];
//        NSLog(@"排序后 array %@",array);
//
//        NSArray * array2 = @[@"z",@"4",@"b",@"3",@"x"];
//
//        NSLog(@"array2 排序前 %@",array2);
//        array2 = [array2 sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//
//            /*
//            NSComparisonResult retuslt = [obj1 compare:obj2];
//
//            return retuslt;
//             */
//            //obj1 compare obj2 就是正序排序
//            //  return [obj1 compare:obj2];
//            //obj2 compare obj1 就是倒序排序
//            return [obj2 compare:obj1];
//
//        }];
//        NSLog(@"array2 排序后 %@",array2);
        
//        NSMutableArray
//        NSMutableArray * array = [[NSMutableArray alloc] initWithCapacity:0];
//        [array addObject:@"one"];
//        [array addObject:@"two"];
//        [array addObject:@"three"];
//        [array addObject:@"one"];
//
//        NSString * str1 = @"one";
//        NSString * str2 = @"two";
//        NSString * str3 = @"three";
//        [array addObject:str1];
//        [array addObject:str2];
//        [array addObject:str3];
//        [array addObject:str1];
//        [array insertObject:str1 atIndex:2];
//        [array removeObject:str1];
//        [array removeObjectAtIndex:0];
//
//        [array addObject:str2];
//        [array addObject:str3];
//        [array addObject:str1];
//        [array removeAllObjects];
//
//        NSLog(@"array %@",array);
//
//        [array addObject:str2];
//        [array addObject:str3];
//        [array addObject:str1];
//        for (int i = 0; i < array.count; i++)
//        {
//            NSString * str = [array objectAtIndex:i];
//
//            //在遍历数组的时候,千万不要给数组中,增加,或者删除元素
//            // [array removeObject:str1];
//
//            NSLog(@"str %@",str);
//
//        }
//        NSMutableArray * array2 = [[NSMutableArray alloc] init];
//        [array2 addObject:@"1"];
//        [array2 addObject:@"2"];
//        [array2 addObject:@"3"];
//        [array2 addObject:@"4"];
//        [array2 addObject:@"5"];
//
//        NSMutableArray * tmp = [[NSMutableArray alloc] init];
//
//        for (NSString * str in array2)
//        {
//            if ([str isEqualToString:@"3"])
//            {
//                [tmp addObject:str];
//            }
//        }
//
//        NSLog(@"array2 %@",array2);
//        NSLog(@"tmp %@",tmp);
//        for (int i = 0; i < tmp.count; i++)
//        {
//            NSString * str = [tmp objectAtIndex:i];
//
//            //从原数组中删除,临时数组中存储的对象
//            [array2 removeObject:str];
//        }
//
//        NSLog(@"array2 %@",array2);
        
//        NSDictionary * dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"阿康", @"213",@"蔡伦",@"name",@"郑和",@"name1",@"魏忠贤",@"name2",nil];
//        NSDictionary *dic2 = [NSDictionary dictionaryWithObjectsAndKeys:@"阿康",@"key",@"华佗",@"key2",@"华雄",@"key3",nil];
//        NSDictionary *dic1 = @{@"key1":@"阿康",@"key2":@"华佗"};
//        //获得所有key
//        NSArray *keyarray = [dic allKeys];
//        NSLog(@"%@",keyarray);
//        //获得所有value
//        NSArray *valuearray = [dic1 allValues];
//        NSLog(@"%@",[dic objectForKey:@"name"]);
//        NSDictionary *testDic = [NSDictionary dictionaryWithObjectsAndKeys:
//                                 @"盖伦",@"德玛西亚之力",
//                                 @"嘉文",@"德玛西亚皇子",
//                                 @"赵信",@"德邦总管",
//                                 @"拉克丝",@"光辉女郎",
//                                 @"薇恩",@"暗夜猎手",
//                                 @"奎因",@"德玛西亚之翼",
//                                 @"泰隆",@"刀锋之影",
//                                 @"德莱文",@"荣耀行刑官",
//                                 @"德莱厄斯",@"诺克萨斯之手",
//                                 @"卡特琳娜",@"不祥之刃",
//                                 @"凯南",@"狂暴之心",
//                                 @"提莫",@"迅捷斥候",
//                                 @"兰博",@"机械公敌",
//                                 @"塔姆",@"河流之王",
//                                 @"乐芙兰",@"诡术妖姬",
//                                 @"莫甘娜",@"堕落天使",
//                                 @"亚索",@"疾风之刃", nil];
//        NSArray *lolkey = [testDic allKeys];
//        for (int i = 0; i < [testDic count]; i++) {
//             NSLog(@"[%@]:[%@]", lolkey[i],[testDic objectForKey:[lolkey objectAtIndex:i]]);
//        }
//        //NSMutableDictionary
//        NSMutableDictionary *test = [NSMutableDictionary dictionary];
//        //可添加或修改
//        [test setObject:@"加内特" forKey:@"KG"];
//        //移除指定的键对应的键值对
//        [test removeObjectForKey:@"KG"];
//        //移除所有键值对
//        [test removeAllObjects];
//
//        NSSet *set = [[NSSet alloc]initWithObjects:@"加内特",@"诺维斯基",@"邓肯", nil];
//        //便利构造器(区分带s)
//        NSSet *sett = [NSSet setWithObjects:@"加内特",@"诺维斯基",@"邓肯",@"阿尔德里奇",@"加索尔",nil];
//        //从集合中取出一个对象(随机且并没有什么卵用)
//        [sett anyObject];
//        //判断集合中是否包含指定对象
//        [set containsObject:@"加内特"];
//        //NSMutableSet初始化
//        NSMutableSet *muset = [[NSMutableSet alloc]initWithCapacity:0];
//        //便利构造器
//        NSMutableSet *mutset = [NSMutableSet setWithObjects:0];
//
//        //添加对象
//        [muset addObject:@"KG"];
//        //移除一个对象
//        [muset removeObject:@"KG"];
//        //移除所有对象
//        [mutset removeAllObjects];
        
        // 变量声明和赋值分开--------------------------------
        void(^afterSetValue)(void);
        afterSetValue = ^{
            NSLog(@"变量声明和赋值分开");
        };
        afterSetValue();
        
        // 有参数，有返回值---------------------------------
        int a = 10;
        int (^myBlock)(int) = ^(int num){
            return num * a;
        };
        
        int result = myBlock(2);
        NSLog(@"result: %d", result);                   // 20
        
        // 有参数，有返回值--------------------------------
        void (^noReturnBlock2)(int) = ^(int a){
            NSLog(@"a:%d", a);
        };
        noReturnBlock2(2);
        
        // 无参数，有返回值--------------------------------
        int (^noReturnBlock)(void) = ^int{
            return 10;
        };
        
        NSLog(@"noReturnBlock: %d", noReturnBlock());  // 10
        
        // 无参数无返回值---------------------------------
        void (^noReturnAndNoPrameterBlock)(void) = ^ {
            NSLog(@"noReturnAndNoPrameterBlock------");
        };
        noReturnAndNoPrameterBlock();
        
        // 修改代码块之外的全局变量--------------------------------
        __block int b = 1;
        void (^modifyValue)(void) = ^{
            b = 2;
        };
        modifyValue();
        NSLog(@"b: %d", b);
        
        Calculator * calc = [[Calculator alloc] init];
                
         // 方法参数是代码块
         [calc calculator:^(int num) {
                num += 2;
                NSLog(@"num is : %d", num);
         }];
                
        // 方法返回值是代码块--------------------------------
        [calc test]();
    }
    return 0;
}
