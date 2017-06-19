.class Lcom/android/contacts/common/model/AccountTypeManagerImpl;
.super Lcom/android/contacts/common/model/AccountTypeManager;
.source "AccountTypeManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;,
        Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    }
.end annotation


# static fields
.field private static final ACCOUNT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_LOAD_DATA:I = 0x0

.field private static final MESSAGE_PROCESS_BROADCAST_INTENT:I = 0x1

.field private static final SAMPLE_CONTACT_URI:Landroid/net/Uri;

.field private static final SIM_STATE_CHANGE_LOAD_DELAY:J = 0x3e8L


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountTypesWithDataSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCheckFilterValidityRunnable:Ljava/lang/Runnable;

.field private mContactWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

.field private mGroupWritableAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

.field private mInvitableAccountTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenerHandler:Landroid/os/Handler;

.field private mListenerThread:Landroid/os/HandlerThread;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mSimAccountObserver:Landroid/database/ContentObserver;

.field private mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mValidSimAccount:I


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 217
    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 227
    const-wide/16 v0, 0x1

    const-string/jumbo v2, "xxx"

    .line 226
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    .line 288
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;

    invoke-direct {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;-><init>()V

    .line 287
    sput-object v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 321
    invoke-direct {p0}, Lcom/android/contacts/common/model/AccountTypeManager;-><init>()V

    .line 234
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 235
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 236
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 237
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 239
    sget-object v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    .line 238
    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    .line 251
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 257
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 266
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 267
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mCheckFilterValidityRunnable:Ljava/lang/Runnable;

    .line 274
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$2;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1041
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$4;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mSimAccountObserver:Landroid/database/ContentObserver;

    .line 322
    iput-object p1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 323
    new-instance v2, Lcom/android/contacts/common/model/account/FallbackAccountType;

    invoke-direct {v2, p1}, Lcom/android/contacts/common/model/account/FallbackAccountType;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    .line 325
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 327
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "AccountChangeListener"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    .line 328
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 329
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$5;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$5;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 344
    new-instance v2, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;)V

    iput-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    .line 347
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->registerSimAccountObserver(Landroid/content/Context;)V

    .line 364
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 366
    invoke-static {v5, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 368
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    return-void
.end method

.method private addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    .local p3, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;>;"
    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 614
    .local v0, "accountsForType":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    if-nez v0, :cond_0

    .line 615
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 617
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    return-void
.end method

.method private addLocalAccount(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 945
    .local p1, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p2, "contactWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p3, "groupWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 946
    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "com.android.localphone"

    const/4 v3, 0x0

    .line 945
    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    .local v0, "ourAccountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    return-void
.end method

.method private addSimAccount(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p2, "contactWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p3, "groupWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 954
    const-string/jumbo v4, "AccountTypeManager"

    const-string/jumbo v5, "addSimAccount"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iput v6, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    .line 956
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 957
    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 958
    const-string/jumbo v4, "SIM1"

    const-string/jumbo v5, "com.android.sim"

    .line 957
    invoke-direct {v1, v4, v5, v8}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    .local v1, "sim1":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-direct {p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getSimState(Lcom/android/contacts/common/model/account/AccountWithDataSet;)I

    move-result v3

    .line 960
    .local v3, "state":I
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isSimReady(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 961
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    sput-boolean v7, Lcom/android/contacts/common/model/account/SimAccountType;->mSim1Wriable:Z

    .line 965
    iget v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    .line 966
    const-string/jumbo v4, "AccountTypeManager"

    const-string/jumbo v5, "sim1 is ready"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :goto_0
    new-instance v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 979
    const-string/jumbo v4, "SIM2"

    const-string/jumbo v5, "com.android.sim"

    .line 978
    invoke-direct {v2, v4, v5, v8}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    .local v2, "sim2":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-direct {p0, v2}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getSimState(Lcom/android/contacts/common/model/account/AccountWithDataSet;)I

    move-result v3

    .line 981
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isSimReady(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 982
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    sput-boolean v7, Lcom/android/contacts/common/model/account/SimAccountType;->mSim2Wriable:Z

    .line 986
    iget v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    .line 987
    const-string/jumbo v4, "AccountTypeManager"

    const-string/jumbo v5, "sim2 is ready"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    .end local v1    # "sim1":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v2    # "sim2":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :goto_1
    return-void

    .line 967
    .restart local v1    # "sim1":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isSimValid(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 968
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    sput-boolean v6, Lcom/android/contacts/common/model/account/SimAccountType;->mSim1Wriable:Z

    .line 972
    iget v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    .line 973
    const-string/jumbo v4, "AccountTypeManager"

    const-string/jumbo v5, "sim1 is valid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 975
    :cond_1
    sput-boolean v6, Lcom/android/contacts/common/model/account/SimAccountType;->mSim1Wriable:Z

    .line 976
    const-string/jumbo v4, "AccountTypeManager"

    const-string/jumbo v5, "sim1 is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 988
    .restart local v2    # "sim2":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isSimValid(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 989
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    sput-boolean v6, Lcom/android/contacts/common/model/account/SimAccountType;->mSim2Wriable:Z

    .line 993
    iget v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    .line 994
    const-string/jumbo v4, "AccountTypeManager"

    const-string/jumbo v5, "sim2 is valid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 996
    :cond_3
    sput-boolean v6, Lcom/android/contacts/common/model/account/SimAccountType;->mSim2Wriable:Z

    .line 997
    const-string/jumbo v4, "AccountTypeManager"

    const-string/jumbo v5, "sim2 is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1000
    .end local v1    # "sim1":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v2    # "sim2":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v3    # "state":I
    :cond_4
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 1001
    const-string/jumbo v4, "SIM"

    const-string/jumbo v5, "com.android.sim"

    .line 1000
    invoke-direct {v0, v4, v5, v8}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    .local v0, "sim":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getSimState(Lcom/android/contacts/common/model/account/AccountWithDataSet;)I

    move-result v3

    .line 1003
    .restart local v3    # "state":I
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isSimReady(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1004
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    sput-boolean v7, Lcom/android/contacts/common/model/account/SimAccountType;->mSimWritable:Z

    .line 1008
    iget v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    .line 1009
    const-string/jumbo v4, "AccountTypeManager"

    const-string/jumbo v5, "sim is ready"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1010
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isSimValid(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1011
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    sput-boolean v6, Lcom/android/contacts/common/model/account/SimAccountType;->mSimWritable:Z

    .line 1015
    iget v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    .line 1016
    const-string/jumbo v4, "AccountTypeManager"

    const-string/jumbo v5, "sim is valid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1018
    :cond_6
    sput-boolean v6, Lcom/android/contacts/common/model/account/SimAccountType;->mSimWritable:Z

    .line 1019
    const-string/jumbo v4, "AccountTypeManager"

    const-string/jumbo v5, "sim is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method static findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    .local p1, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .local p2, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 801
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "account$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 802
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v2

    .line 803
    .local v2, "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountType;

    .line 804
    .local v4, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v4, :cond_0

    .line 805
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 807
    const-string/jumbo v5, "AccountTypeManager"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 808
    const-string/jumbo v5, "AccountTypeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 809
    const-string/jumbo v7, " inviteClass="

    .line 808
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 809
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v7

    .line 808
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 812
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 815
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v2    # "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .end local v4    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 4
    .param p0, "auths"    # [Landroid/accounts/AuthenticatorDescription;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 627
    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 628
    .local v0, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v3, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    return-object v0

    .line 627
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getAllInvitableAccountTypes()Ljava/util/Map;

    move-result-object v3

    .line 830
    .local v3, "allInvitables":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 831
    sget-object v8, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->EMPTY_UNMODIFIABLE_ACCOUNT_TYPE_MAP:Ljava/util/Map;

    return-object v8

    .line 834
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 835
    .local v7, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 837
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 838
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "accountTypeWithDataSet$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .line 839
    .local v1, "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;

    .line 843
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    sget-object v8, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->SAMPLE_CONTACT_URI:Landroid/net/Uri;

    .line 842
    invoke-static {v0, v8}, Lcom/android/contacts/common/MoreContactUtils;->getInvitableIntent(Lcom/android/contacts/common/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 844
    .local v4, "invitableIntent":Landroid/content/Intent;
    if-nez v4, :cond_2

    .line 845
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 849
    :cond_2
    const/high16 v8, 0x10000

    .line 848
    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 850
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_3

    .line 853
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 859
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 860
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 864
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "accountTypeWithDataSet":Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .end local v4    # "invitableIntent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    return-object v8
.end method

.method private getAllInvitableAccountTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 757
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;

    return-object v0
.end method

.method private getSimState(Lcom/android/contacts/common/model/account/AccountWithDataSet;)I
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/contacts/common/utils/OneplusSimHelper;->getSimAccountValidState(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;)I

    move-result v0

    return v0
.end method

.method private isSimAccountInvalid(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v3, 0x1

    .line 666
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 667
    const-string/jumbo v2, "phone"

    .line 666
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 668
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const-string/jumbo v1, "com.android.sim"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 670
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const-string/jumbo v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    return v3

    .line 673
    :cond_0
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const-string/jumbo v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 674
    return v3

    .line 678
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isSimReady(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1029
    invoke-static {p1}, Lcom/oneplus/contacts/common/utils/OneplusSimHelper;->isSimAccountReady(I)Z

    move-result v0

    return v0
.end method

.method private isSimValid(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1033
    invoke-static {p1}, Lcom/oneplus/contacts/common/utils/OneplusSimHelper;->isSimAccountValid(I)Z

    move-result v0

    return v0
.end method

.method private notifyContactAccountsUpdate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1075
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mUpdateListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1076
    :cond_0
    return-void

    .line 1078
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;

    .line 1079
    .local v0, "listener":Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;
    invoke-interface {v0, p1}, Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;->onContactAccountsUpdated(Ljava/util/List;)V

    goto :goto_0

    .line 1074
    .end local v0    # "listener":Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;
    :cond_2
    return-void
.end method

.method private registerSimAccountObserver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1037
    sget-object v0, Lcom/oneplus/contacts/common/utils/OneplusSimHelper;->VALID_SIM_URI:Landroid/net/Uri;

    .line 1038
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mSimAccountObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1036
    return-void
.end method

.method private varargs trimAccountByType(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p2, "trimAccountTypes"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const/4 v5, 0x0

    .line 683
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 684
    .local v2, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accountWithDataSet$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 685
    .local v0, "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    if-eqz p2, :cond_2

    array-length v4, p2

    if-lez v4, :cond_2

    .line 686
    array-length v6, p2

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v3, p2, v4

    .line 687
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_1

    iget-object v7, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 686
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 693
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->isSimAccountInvalid(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 696
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 698
    .end local v0    # "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public addOnContactAccountsUpdateListener(Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mUpdateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1057
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mUpdateListeners:Ljava/util/List;

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    return-void
.end method

.method ensureAccountsLoaded()V
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 392
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_0

    .line 393
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 397
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    return-void
.end method

.method public getAccountType(Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 2
    .param p1, "accountTypeWithDataSet"    # Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 744
    monitor-enter p0

    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    .local v0, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v0, :cond_0

    .end local v0    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 744
    .end local v0    # "type":Lcom/android/contacts/common/model/account/AccountType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAccountTypes(Z)Ljava/util/List;
    .locals 4
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 870
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 871
    .local v0, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    monitor-enter p0

    .line 872
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "type$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountType;

    .line 873
    .local v1, "type":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 874
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 871
    .end local v1    # "type":Lcom/android/contacts/common/model/account/AccountType;
    .end local v2    # "type$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v2    # "type$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    .line 878
    return-object v0
.end method

.method public getAccounts(Z)Ljava/util/List;
    .locals 1
    .param p1, "contactWritableOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->getAccounts(ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts(ZI)Ljava/util/List;
    .locals 5
    .param p1, "contactWritableOnly"    # Z
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 646
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 648
    packed-switch p2, :pswitch_data_0

    .line 662
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    :goto_0
    return-object v0

    .line 651
    :pswitch_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 652
    :goto_1
    const/4 v1, 0x0

    .line 650
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->trimAccountByType(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_1

    .line 655
    :pswitch_1
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 654
    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 656
    const-string/jumbo v2, "com.android.sim"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.android.localphone"

    aput-object v2, v1, v4

    .line 654
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->trimAccountByType(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_2

    .line 659
    :pswitch_2
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 658
    :goto_3
    new-array v1, v4, [Ljava/lang/String;

    .line 660
    const-string/jumbo v2, "com.android.sim"

    aput-object v2, v1, v3

    .line 658
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->trimAccountByType(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_3

    .line 662
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getGroupWritableAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 706
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    return-object v0
.end method

.method public getKindOrFallback(Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;
    .locals 4
    .param p1, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 717
    const/4 v0, 0x0

    .line 720
    .local v0, "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 724
    .end local v0    # "kind":Lcom/android/contacts/common/model/dataitem/DataKind;
    :cond_0
    if-nez v0, :cond_1

    .line 726
    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {v1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    .line 729
    :cond_1
    if-nez v0, :cond_2

    .line 730
    const-string/jumbo v1, "AccountTypeManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 731
    const-string/jumbo v1, "AccountTypeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_2
    return-object v0
.end method

.method public getUsableInvitableAccountTypes()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 762
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 776
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    iget-object v1, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->setCachedValue(Ljava/util/Map;)V

    .line 778
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesCacheIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 789
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->getCachedValue()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 783
    if-eqz v0, :cond_0

    .line 785
    new-instance v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/contacts/common/model/AccountTypeManagerImpl;Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$FindInvitablesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getValidSimAccountCount()I
    .locals 1

    .prologue
    .line 1071
    iget v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mValidSimAccount:I

    return v0
.end method

.method protected loadAccountsInBackground()V
    .locals 43

    .prologue
    .line 410
    const-string/jumbo v38, "ContactsPerf"

    const/16 v39, 0x3

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 411
    const-string/jumbo v38, "ContactsPerf"

    const-string/jumbo v39, "AccountTypeManager.loadAccountsInBackground start"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    new-instance v36, Landroid/util/TimingLogger;

    const-string/jumbo v38, "AccountTypeManager"

    const-string/jumbo v39, "loadAccountsInBackground"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v36, "timings":Landroid/util/TimingLogger;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v30

    .line 415
    .local v30, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    .line 419
    .local v32, "startTimeWall":J
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 424
    .local v10, "accountTypesByTypeAndDataSet":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;Lcom/android/contacts/common/model/account/AccountType;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 426
    .local v9, "accountTypesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    .line 427
    .local v13, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 428
    .local v17, "contactWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v25

    .line 429
    .local v25, "groupWritableAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v24

    .line 431
    .local v24, "extensionPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 433
    .local v14, "am":Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v35

    .line 434
    .local v35, "syncs":[Landroid/content/SyncAdapterType;
    invoke-virtual {v14}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v16

    .line 437
    .local v16, "auths":[Landroid/accounts/AuthenticatorDescription;
    const/16 v38, 0x0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v39, v0

    :goto_0
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_a

    aget-object v29, v35, v38

    .line 438
    .local v29, "sync":Landroid/content/SyncAdapterType;
    const-string/jumbo v40, "com.android.contacts"

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_2

    .line 437
    :cond_1
    :goto_1
    add-int/lit8 v38, v38, 0x1

    goto :goto_0

    .line 445
    :cond_2
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 446
    .local v37, "type":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v15

    .line 447
    .local v15, "auth":Landroid/accounts/AuthenticatorDescription;
    if-nez v15, :cond_3

    .line 448
    const-string/jumbo v40, "AccountTypeManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "No authenticator found for type="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ", ignoring it."

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 453
    :cond_3
    const-string/jumbo v40, "com.google"

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 454
    new-instance v5, Lcom/android/contacts/common/model/account/GoogleAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/common/model/account/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 469
    .local v5, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :goto_2
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->isInitialized()Z

    move-result v40

    if-nez v40, :cond_9

    .line 470
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->isEmbedded()Z

    move-result v40

    if-eqz v40, :cond_1

    .line 471
    new-instance v38, Ljava/lang/IllegalStateException;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Problem initializing embedded type "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 472
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->getClass()Ljava/lang/Class;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v40

    .line 471
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 455
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_4
    invoke-static/range {v37 .. v37}, Lcom/android/contacts/common/model/account/ExchangeAccountType;->isExchangeType(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 456
    new-instance v5, Lcom/android/contacts/common/model/account/ExchangeAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v37

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto :goto_2

    .line 457
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    .line 458
    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 457
    move-object/from16 v0, v40

    move-object/from16 v1, v37

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;->isSamsungAccountType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 459
    new-instance v5, Lcom/android/contacts/common/model/account/SamsungAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v37

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/common/model/account/SamsungAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto :goto_2

    .line 460
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_6
    const-string/jumbo v40, "com.android.sim"

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 461
    new-instance v5, Lcom/android/contacts/common/model/account/SimAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/common/model/account/SimAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_2

    .line 462
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_7
    const-string/jumbo v40, "com.android.localphone"

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 463
    new-instance v5, Lcom/android/contacts/common/model/account/PhoneAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-direct {v5, v0, v1}, Lcom/android/contacts/common/model/account/PhoneAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_2

    .line 465
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    :cond_8
    const-string/jumbo v40, "AccountTypeManager"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Registering external account type="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 466
    const-string/jumbo v42, ", packageName="

    .line 465
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 466
    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 465
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v5, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-direct {v5, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    goto/16 :goto_2

    .line 479
    :cond_9
    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iput-object v0, v5, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 480
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->labelId:I

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v5, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    .line 481
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v5, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 483
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v9}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 487
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->getExtensionPackageNames()Ljava/util/List;

    move-result-object v40

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 491
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v15    # "auth":Landroid/accounts/AuthenticatorDescription;
    .end local v29    # "sync":Landroid/content/SyncAdapterType;
    .end local v37    # "type":Ljava/lang/String;
    :cond_a
    new-instance v28, Lcom/android/contacts/common/model/account/SimAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/model/account/SimAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    .local v28, "simAccountType":Lcom/android/contacts/common/model/account/AccountType;
    const v38, 0x7f0d00b7

    move/from16 v0, v38

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    .line 493
    const v38, 0x7f020188

    move/from16 v0, v38

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 494
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v10, v9}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 496
    new-instance v26, Lcom/android/contacts/common/model/account/PhoneAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/model/account/PhoneAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 497
    .local v26, "phoneAccountType":Lcom/android/contacts/common/model/account/AccountType;
    const v38, 0x7f0d00b6

    move/from16 v0, v38

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/contacts/common/model/account/AccountType;->titleRes:I

    .line 498
    const v38, 0x7f020182

    move/from16 v0, v38

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 499
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v10, v9}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 503
    new-instance v27, Lcom/android/contacts/common/model/account/ProfileAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/ProfileAccountType;-><init>(Landroid/content/Context;)V

    .line 504
    .local v27, "profileAccountType":Lcom/android/contacts/common/model/account/AccountType;
    const v38, 0x7f020183

    move/from16 v0, v38

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/contacts/common/model/account/AccountType;->iconRes:I

    .line 505
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v10, v9}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    .line 509
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_e

    .line 510
    const-string/jumbo v38, "AccountTypeManager"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Registering "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " extension packages"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "extensionPackage$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 513
    .local v22, "extensionPackage":Ljava/lang/String;
    new-instance v6, Lcom/android/contacts/common/model/account/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    move/from16 v2, v39

    invoke-direct {v6, v0, v1, v2}, Lcom/android/contacts/common/model/account/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 514
    .local v6, "accountType":Lcom/android/contacts/common/model/account/ExternalAccountType;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->isInitialized()Z

    move-result v38

    if-eqz v38, :cond_b

    .line 518
    invoke-virtual {v6}, Lcom/android/contacts/common/model/account/ExternalAccountType;->hasContactsMetadata()Z

    move-result v38

    if-nez v38, :cond_c

    .line 519
    const-string/jumbo v38, "AccountTypeManager"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Skipping extension package "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " because"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 520
    const-string/jumbo v40, " it doesn\'t have the CONTACTS_STRUCTURE metadata"

    .line 519
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 523
    :cond_c
    iget-object v0, v6, Lcom/android/contacts/common/model/account/ExternalAccountType;->accountType:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_d

    .line 524
    const-string/jumbo v38, "AccountTypeManager"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Skipping extension package "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " because"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 525
    const-string/jumbo v40, " the CONTACTS_STRUCTURE metadata doesn\'t have the accountType"

    .line 524
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 526
    const-string/jumbo v40, " attribute"

    .line 524
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 529
    :cond_d
    const-string/jumbo v38, "AccountTypeManager"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Registering extension package account type="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 530
    iget-object v0, v6, Lcom/android/contacts/common/model/account/ExternalAccountType;->accountType:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 529
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 530
    const-string/jumbo v40, ", dataSet="

    .line 529
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 530
    iget-object v0, v6, Lcom/android/contacts/common/model/account/ExternalAccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 529
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 531
    const-string/jumbo v40, ", packageName="

    .line 529
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10, v9}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addAccountType(Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 536
    .end local v6    # "accountType":Lcom/android/contacts/common/model/account/ExternalAccountType;
    .end local v22    # "extensionPackage":Ljava/lang/String;
    .end local v23    # "extensionPackage$iterator":Ljava/util/Iterator;
    :cond_e
    const-string/jumbo v38, "Loaded account types"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-direct {v0, v13, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addLocalAccount(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-direct {v0, v13, v1, v2}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->addSimAccount(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v12

    .line 546
    .local v12, "accounts":[Landroid/accounts/Account;
    const/16 v38, 0x0

    array-length v0, v12

    move/from16 v39, v0

    :goto_4
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_13

    aget-object v4, v12, v38

    .line 548
    .local v4, "account":Landroid/accounts/Account;
    const-string/jumbo v40, "com.android.contacts"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v40

    if-lez v40, :cond_11

    const/16 v34, 0x1

    .line 550
    .local v34, "syncable":Z
    :goto_5
    if-eqz v34, :cond_12

    .line 551
    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 552
    .local v8, "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    if-eqz v8, :cond_12

    .line 555
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "accountType$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountType;

    .line 556
    .restart local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    new-instance v11, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 557
    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v40, v0

    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v41, v0

    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 556
    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v11, v0, v1, v2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .local v11, "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v40

    if-eqz v40, :cond_10

    .line 560
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_10
    invoke-virtual {v5}, Lcom/android/contacts/common/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v40

    if-eqz v40, :cond_f

    .line 563
    move-object/from16 v0, v25

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 548
    .end local v5    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v7    # "accountType$iterator":Ljava/util/Iterator;
    .end local v8    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountType;>;"
    .end local v11    # "accountWithDataSet":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v34    # "syncable":Z
    :cond_11
    const/16 v34, 0x0

    goto :goto_5

    .line 546
    .restart local v34    # "syncable":Z
    :cond_12
    add-int/lit8 v38, v38, 0x1

    goto :goto_4

    .line 570
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v34    # "syncable":Z
    :cond_13
    sget-object v38, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v38

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 571
    sget-object v38, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 572
    sget-object v38, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 574
    const-string/jumbo v38, "Loaded accounts"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 576
    monitor-enter p0

    .line 577
    :try_start_0
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    .line 578
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    .line 579
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContactWritableAccounts:Ljava/util/List;

    .line 580
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mGroupWritableAccounts:Ljava/util/List;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    .line 581
    move-object/from16 v0, v38

    invoke-static {v0, v13, v10}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->findAllInvitableAccountTypes(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInvitableAccountTypes:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 585
    invoke-virtual/range {v36 .. v36}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 587
    .local v20, "endTimeWall":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v18

    .line 589
    .local v18, "endTime":J
    const-string/jumbo v38, "AccountTypeManager"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Loaded meta-data for "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccountTypesWithDataSets:Ljava/util/Map;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/Map;->size()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " account types, "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    .line 589
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 590
    const-string/jumbo v40, " accounts in "

    .line 589
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 590
    sub-long v40, v20, v32

    .line 589
    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 590
    const-string/jumbo v40, "ms(wall) "

    .line 589
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 591
    sub-long v40, v18, v30

    .line 589
    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    .line 591
    const-string/jumbo v40, "ms(cpu)"

    .line 589
    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v38, v0

    if-eqz v38, :cond_14

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 595
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 597
    :cond_14
    const-string/jumbo v38, "ContactsPerf"

    const/16 v39, 0x3

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v38

    if-eqz v38, :cond_15

    .line 598
    const-string/jumbo v38, "ContactsPerf"

    const-string/jumbo v39, "AccountTypeManager.loadAccountsInBackground finish"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_15
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->notifyContactAccountsUpdate(Ljava/util/List;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mCheckFilterValidityRunnable:Ljava/lang/Runnable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 409
    return-void

    .line 576
    .end local v18    # "endTime":J
    .end local v20    # "endTimeWall":J
    :catchall_0
    move-exception v38

    monitor-exit p0

    throw v38
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    .line 381
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    return-void
.end method

.method public processBroadcastIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 376
    return-void
.end method

.method public removeOnContactAccountsUpdateListener(Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mUpdateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/contacts/common/model/AccountTypeManagerImpl;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1063
    :cond_0
    return-void
.end method
