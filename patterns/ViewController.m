//
//  ViewController.m
//  patterns
//
//  Created by Eduard Mitasov on 12.12.2017.
//  Copyright © 2017 Eduard Mitasov. All rights reserved.
//

#import "ViewController.h"
#import "ProductGenerator.h"

#import "IPhoneFactory.h"
#import "ChinaFactory.h"
#import "AppleFactory.h"

#import "Person.h"

#import "LowPricePhoneBuilder.h"
#import "HighPricePhoneBuilder.h"
#import "FactorySalesMan.h"

#import "SingletonObject.h"

#import "RavenAdapter.h"
#import "Bird.h"

#import "EuropeanNotebookCharger.h"
#import "USANotebookCharger.h"
#import "USANotebookEuropeanAdapter.h"

#import "MusicPlayer.h"
#import "CheapHeadphones.h"
#import "ExpensiveHeadphones.h"

#import "TravellSystemFacade.h"

#import "CentrallProcessor.h"

#import "StandardSubjectImplementation.h"
#import "SomeSubscriber.h"
#import "OtherSubscriber.h"

#import "KVOSubject.h"
#import "KVOObserver.h"

#import "Container.h"
#import "LeafObject.h"

#import "ShopWarehouse.h"
#import "BadItemsEnumerator.h"
#import "GoodItemsEnumerator.h"

#import "PriceCheckerVisitor.h"
#import "QualityCheckerVisitor.h"
#import "Warehouse.h"

#import "NSDate+StringDate.h"

#import "BasicHandler.h"
#import "ElectronicsHandler.h"
#import "OtherItemsHandler.h"
#import "Electronics.h"
#import "Trash.h"

#import "AndroidMaker.h"
#import "iPhoneMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
/* Prototype
     Person *firstPerson = [[Person alloc] init];
     firstPerson.name = @"Dima";
     firstPerson.surname = @"Surname";
     Person *secondPerson = firstPerson.copy;
     NSLog(@"First Person name = %@ and surname = %@", firstPerson.name, firstPerson.surname);
     secondPerson.name = @"Roma";
     secondPerson.surname = @"Romanov";
     NSLog(@"Second Person name = %@ and surname = %@", secondPerson.name, secondPerson.surname);
     NSLog(@"First Person name = %@ and surname = %@", firstPerson.name, firstPerson.surname);
    */
    
/* Factory Method
    [self saveExpenses:50];
    [self saveExpenses:56];
    [self saveExpenses:79];
    [self saveExpenses:100];
    [self saveExpenses:123];
    [self saveExpenses:51];
    */
    
/* Abstract Factory
    IPhoneFactory *factory = [self getFactoryInThirdWorld:YES];
    GenericIPhone *iphone = [factory getIPhone];
    NSLog(@"IPhone named = %@, osname = %@", iphone.productName, iphone.osName);
    */
    
/* Builder
    LowPricePhoneBuilder *_cheapPhoneBuilder = [[LowPricePhoneBuilder alloc] init];
    HighPricePhoneBuilder *_expensivePhoneBuilder = [[HighPricePhoneBuilder alloc] init];
    
    FactorySalesMan *_salesMan = [[FactorySalesMan alloc] init];
    [_salesMan setBulider:_cheapPhoneBuilder];
    [_salesMan constructPhone];
    AndroidPhone *_phone = [_salesMan getPhone];
    NSLog(@"Phone Name = %@, osVersion = %@, cpu code name = %@, ram size = %@, os version code = %@, launcher = %@",
          _phone.name, _phone.osVersion, _phone.cpuCodeName, _phone.RAMsize, _phone.osVersionCode, _phone.launcher);
    
    [_salesMan setBulider:_expensivePhoneBuilder];
    [_salesMan constructPhone];
    _phone = [_salesMan getPhone];
    NSLog(@"Phone Name = %@, osVersion = %@, cpu code name = %@, ram size = %@, os version code = %@, launcher = %@",
          _phone.name, _phone.osVersion, _phone.cpuCodeName, _phone.RAMsize, _phone.osVersionCode, _phone.launcher);
    */
    
/* Singleton
    [[SingletonObject singleton] setTempProperty:@"Hello 2 You!"];
    NSLog(@"%@", [[SingletonObject singleton] tempProperty]);
     */
    
/* Simple Adapter
    Bird *simpleBird = [[Bird alloc] init];
    Raven *simpleRaven = [[Raven alloc] init];
    RavenAdapter *ravenAdapter = [[RavenAdapter alloc] initWithRaven:simpleRaven];
    [self makeTheBirdTest:simpleBird];
    [self makeTheBirdTest:ravenAdapter];
     */
    
/* Hard Adapter
    EuropeanNotebookCharger *euroCharger = [[EuropeanNotebookCharger alloc] init];
    [self makeTheNotebookCharge:euroCharger];
    
    USANotebookCharger *charger = [[USANotebookCharger alloc] init]; 
    USANotebookEuropeanAdapter *adapter = [[USANotebookEuropeanAdapter alloc] initWithUSANotebookCharger:charger];
    [self makeTheNotebookCharge:adapter];
     */
    
/* Bridge
    MusicPlayer *player = [[MusicPlayer alloc] init];
    CheapHeadphones *ch = [[CheapHeadphones alloc] init];
    ExpensiveHeadphones *ep = [[ExpensiveHeadphones alloc] init];
    
    player.headPhones = ch;
    [player playMusic];
    
    player.headPhones = ep;
    [player playMusic];
     */
    
/* Facade
    TravellSystemFacade *facade = [[TravellSystemFacade alloc] init];
    [facade travellTo:@"Lviv"];
     */
    
/* Mediator
    CentrallProcessor *proccessor = [[CentrallProcessor alloc] init];
    Thermometer *therm = [[Thermometer alloc] initWithCore:proccessor];
    ConditioningSystem *condSystem = [[ConditioningSystem alloc] initWithCore:proccessor];
    proccessor._condSystem = condSystem;
    proccessor._thermometer = therm;
    [therm temperatureChanged:45];
    */
    
/* Observer
    StandardSubjectImplementation *subj = [[StandardSubjectImplementation alloc] init];
    SomeSubscriber *someSubscriber = [[SomeSubscriber alloc] init];
    OtherSubscriber *otherSubscriber = [[OtherSubscriber alloc] init];
    [subj addObserver:someSubscriber];
    [subj addObserver: otherSubscriber];
    [subj changeValue:@"strange value" andValue:@"newValue"];
    */
    
/* KVO
    KVOSubject *kvoSubj = [[KVOSubject alloc] init];
    KVOObserver *kvoObserver = [[KVOObserver alloc] init];
    [kvoSubj addObserver:kvoObserver forKeyPath:@"changeableProperty" options:NSKeyValueObservingOptionNew context:nil];
    [kvoSubj setValue:@"new value" forKey:@"changeableProperty"];
    [kvoSubj removeObserver:kvoObserver forKeyPath:@"changeableProperty"];
     */
    
/* Composite
    Container *rootContainer = [[Container alloc] init];
    LeafObject *object = [[LeafObject alloc] init];
    object.leafValue = @"level1 value";
    [rootContainer addComponent:object];
    
    Container *firstLevelContainer1 = [[Container alloc] init];
    LeafObject *object2 = [[LeafObject alloc] init];
    object2.leafValue = @"level2 value";
    [firstLevelContainer1 addComponent:object2];
    [rootContainer addComponent:firstLevelContainer1];
    
    Container *firstLevelContainer2 = [[Container alloc] init];
    LeafObject *object3 = [[LeafObject alloc] init];
    object3.leafValue = @"level2 value 2";
    [firstLevelContainer2 addComponent:object3];
    [rootContainer addComponent:firstLevelContainer2];
    
    NSLog(@"%@", rootContainer.getData);
    */
    
/* Iterator
    ShopWarehouse *shopWarehouse = [[ShopWarehouse alloc] init];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item1" andQaulity:NO]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item2" andQaulity:NO]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item3" andQaulity:YES]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item4" andQaulity:YES]];
    [shopWarehouse addItem:[[ItemInShop alloc]initWithArgs:@"Item5" andQaulity:NO]];
    
    GoodItemsEnumerator *goodIterator = (GoodItemsEnumerator *)[shopWarehouse getGoodItemsEnumerator];
    BadItemsEnumerator *badIterator = (BadItemsEnumerator *)[shopWarehouse getBrokenItemsEnumerator];
    ItemInShop *element;
    while (element = [goodIterator nextObject])
    {
        NSLog(@"Good Item = %@", element.name);
    }
    while (element = [badIterator nextObject])
    {
        NSLog(@"Bad Item = %@", element.name);
    }
    */
    
/* Visitor
    Warehouse *_localWarehouse = [[Warehouse alloc] init];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item1" andQuality:NO andPrice:25]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item2" andQuality:NO andPrice:32]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item3" andQuality:YES andPrice:45]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item4" andQuality:NO andPrice:33]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item5" andQuality:NO andPrice:12]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item6" andQuality:YES andPrice:78]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item7" andQuality:YES andPrice:34]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item8" andQuality:NO andPrice:51]];
    [_localWarehouse addItem:[[WarehouseItem alloc] initWithArgs:@"Item9" andQuality:NO andPrice:25]];
    
    PriceCheckerVisitor *visitor = [[PriceCheckerVisitor alloc] init];
    QualityCheckerVisitor *qualityVisitor = [[QualityCheckerVisitor alloc] init];
    [_localWarehouse accept:visitor];
    [_localWarehouse accept:qualityVisitor];
    */
    
/* Decorator
    NSDate *dateNow = [NSDate date];
    NSLog(@"Date is %@", [dateNow convertDateToString]);
    */
    
/* Chain of responsibility
    BasicHandler *electronicsHandler = [[ElectronicsHandler alloc] init];
    BasicHandler *otherItemHandler = [[OtherItemsHandler alloc]init];
    electronicsHandler.nextHandler = otherItemHandler;
    BasicItem *electronic = [[Electronics alloc] init];
    BasicItem *trash = [[Trash alloc] init];
    [electronicsHandler handleItem:electronic];
    [electronicsHandler handleItem:trash];
    */
    
    // Template Method
    AndroidMaker *android = [[AndroidMaker alloc] init];
    iPhoneMaker *iphone = [[iPhoneMaker alloc] init];
    [android makePhone];
    [iphone makePhone];
}

- (void)saveExpenses:(int)aPrice
{
    ProductGenerator *pd = [[ProductGenerator alloc] init];
    Product *expense = [pd getProduct:aPrice];
    [expense saveObject];
}

- (IPhoneFactory *)getFactoryInThirdWorld:(BOOL)isThirdWorld
{
    if (isThirdWorld)
    {
        return [[ChinaFactory alloc] init];
    }
    return [[AppleFactory alloc] init];
}

- (void) makeTheBirdTest:(id <BirdProtocol>)aBird
{
    [aBird fly];
    [aBird sing];
}

- (void)makeTheNotebookCharge:(Charger *)aCharger
{
    [aCharger charge];
}

@end
