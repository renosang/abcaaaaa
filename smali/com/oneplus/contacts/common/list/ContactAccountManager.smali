.class public Lcom/oneplus/contacts/common/list/ContactAccountManager;
.super Ljava/lang/Object;
.source "ContactAccountManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;,
        Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;
    }
.end annotation


# static fields
.field private static final LOCK:[B

.field private static sInstance:Lcom/oneplus/contacts/common/list/ContactAccountManager;


# instance fields
.field private allAccountIdsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private contactAccountCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/contacts/common/list/ContactAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountIsLoaded:Z

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLoadSponsor:Ljava/lang/String;

.field private mIsLoading:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPhoneAccountId:J

.field private mSim1AccountId:J

.field private mSim2AccountId:J

.field private mSimAccountId:J


# direct methods
.method static synthetic -get0()[B
    .locals 1

    sget-object v0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->LOCK:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/contacts/common/list/ContactAccountManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/oneplus/contacts/common/list/ContactAccountManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->allAccountIdsCache:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/contacts/common/list/ContactAccountManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->contactAccountCache:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/contacts/common/list/ContactAccountManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mPhoneAccountId:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/oneplus/contacts/common/list/ContactAccountManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mSim1AccountId:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/oneplus/contacts/common/list/ContactAccountManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mSim2AccountId:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/oneplus/contacts/common/list/ContactAccountManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mSimAccountId:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/contacts/common/list/ContactAccountManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->LOCK:[B

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mPhoneAccountId:J

    .line 56
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mSimAccountId:J

    .line 57
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mSim1AccountId:J

    .line 58
    const-wide/16 v0, -0x4

    iput-wide v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mSim2AccountId:J

    .line 97
    return-void
.end method

.method public static getInstance()Lcom/oneplus/contacts/common/list/ContactAccountManager;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->sInstance:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-direct {v0}, Lcom/oneplus/contacts/common/list/ContactAccountManager;-><init>()V

    sput-object v0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->sInstance:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    .line 94
    :cond_0
    sget-object v0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->sInstance:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    return-object v0
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method private notifySponsorUser()V
    .locals 4

    .prologue
    .line 199
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;

    .line 201
    .local v0, "callback":Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mCurrentLoadSponsor:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mCurrentLoadSponsor:Ljava/lang/String;

    .line 202
    invoke-interface {v0}, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;->getSponsorIdentify()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;->onAccountLoadFinished()V

    .line 198
    .end local v0    # "callback":Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public addAccountLoadCallback(Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mCallbacks:Ljava/util/ArrayList;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 195
    return v1

    .line 190
    :pswitch_0
    iput-boolean v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mIsLoading:Z

    .line 191
    iput-boolean v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mAccountIsLoaded:Z

    .line 192
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->notifySponsorUser()V

    .line 193
    return v2

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isAccountIdLoaded(J)Z
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    const/4 v2, 0x0

    .line 128
    sget-object v1, Lcom/oneplus/contacts/common/list/ContactAccountManager;->LOCK:[B

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->allAccountIdsCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->allAccountIdsCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 130
    return v2

    .line 132
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->allAccountIdsCache:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSim1Account(J)Z
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mSim1AccountId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSim2Account(J)Z
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mSim2AccountId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimAccount(J)Z
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mSimAccountId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startLoadAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sponsorIdentify"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mIsLoading:Z

    .line 105
    iput-object p2, p0, Lcom/oneplus/contacts/common/list/ContactAccountManager;->mCurrentLoadSponsor:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;-><init>(Lcom/oneplus/contacts/common/list/ContactAccountManager;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoader;->start()V

    .line 100
    return-void
.end method
