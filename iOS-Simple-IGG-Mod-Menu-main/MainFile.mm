
#import <UIKit/UIKit.h>
#import "X2N/JRMemory.framework/Headers/MemScan.h"


#import "SupportFile/PubgLoad.h"
#import "SupportFile/JHPP.h"
#import "SupportFile/JHDragView.h"
#import "SCLAlertView/SCLAlertView.h"

@interface PubgLoad()
@property (nonatomic, strong) dispatch_source_t timer;
@end

@implementation PubgLoad

static PubgLoad *extraInfo;
static BOOL MenDeal;

+ (void)load
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10* NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        extraInfo =  [PubgLoad new];
        [extraInfo initTapGes];
        [extraInfo tapIconView];
    });
}

-(void)initTapGes
{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.numberOfTapsRequired = 2;//点击次数
    tap.numberOfTouchesRequired = 3;//手指数
    [[JHPP currentViewController].view addGestureRecognizer:tap];
    [tap addTarget:self action:@selector(tapIconView)];
}

-(void)tapIconView
{
    JHDragView *view = [[JHPP currentViewController].view viewWithTag:100];
    if (!view) {
        view = [[JHDragView alloc] init];
        view.tag = 100;
        [[JHPP currentViewController].view addSubview:view];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onConsoleButtonTapped:)];
        tap.numberOfTapsRequired = 1;
        [view addGestureRecognizer:tap];
    }
    
    if (!MenDeal) {
        view.hidden = NO;
    } else {
        view.hidden = YES;
    }
    
    MenDeal = !MenDeal;
}
// JR_Search_Type_ULong   //I64     uint64_t
// JR_Search_Type_Double  //Double  Double
// JR_Search_Type_SLong   //U64     SInt64
// JR_Search_Type_Float   //Float   Float
// JR_Search_Type_UInt    //I32     uint32_t
// JR_Search_Type_SInt    //U32     SInt32
// JR_Search_Type_UShort  //I16     uint16_t
// JR_Search_Type_SShort  //U16     SInt16
// JR_Search_Type_UByte   //I8      uint8_t
// JR_Search_Type_SByte   //U8      SInt8

-(void)onConsoleButtonTapped:(id)sender
{

  SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindow];


        
        
    
    [alert addButton:@"كشف الاغراض   " actionBlock:^{ %hook CircleHintTrigger

-(void)Update {
    %orig;
    
    if (self.itemIndicator != nil) {
        [self ForceShowHint];
    }
}

%end

        
    }];
  

  [alert addButton:@"احياء اصدقاء" actionBlock:^{

        static void *HealerInstance = NULL;

%hook HealerPerk
-(void)OnEnable {
    %orig; 
    HealerInstance = self; 
}
%end

[alert addButton:@"Activate Healer" actionBlock:^{
    if (HealerInstance != NULL) {
        typedef void (*orig_Activate)(void*);
        orig_Activate activateFunc = (orig_Activate)getRealOffset(0x3A49A0);
        
        activateFunc(HealerInstance);
        
        NSLog(@"Healer activated using instance!");
    } else {
        NSLog(@"Healer not initialized yet!");
    }
}];
    }];



   [alert addButton:@"الدمية اللعينة باوشن" actionBlock:^{
%hook StealthPotionPerk

-(void)Activate {
    typedef void (*orig_Activate_Doll)(void*);
    orig_Activate_Doll activateDoll = (orig_Activate_Doll)getRealOffset(0x395888);
    
    activateDoll((__bridge void*)self);
    
    NSLog(@"Hooked StealthPotionPerk to CursedDollPerk");
}

%end
        
    }];
    [alert addButton:@"قبض اشياء" actionBlock:^{
static void *GraspInstance = NULL;

%hook GraspMasterPerk
-(void)OnEnable {
    %orig; 
    GraspInstance = self; 
}
%end

[alert addButton:@"Activate Grasp Master" actionBlock:^{
    if (GraspInstance != NULL) {
        typedef void (*orig_Activate)(void*);
        orig_Activate activateFunc = (orig_Activate)getRealOffset(0x3A2C98);
        
        activateFunc((__bridge void*)GraspInstance);
        
        NSLog(@"Grasp Master Activated!");
    } else {
        NSLog(@"Grasp Master Instance not found!");
    }
}];
        
    }];
 [alert addButton:@"تجاوز الجدران " actionBlock:^{

        %hook KinematicCharacterMotor

-(void)UpdatePhase1 {
    %orig;
}

-(bool)IsCharacterCollidable {
    return false;
}

%end
    }];



    [alert showSuccess:@"X2NIOS Test Menu" subTitle:nil closeButtonTitle:@"Hide" duration:0];
    

    
}



@end
