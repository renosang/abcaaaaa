.class public abstract Lcom/oneplus/contacts/common/list/ContactAccountIconManager;
.super Ljava/lang/Object;
.source "ContactAccountIconManager.java"


# static fields
.field private static sInstance:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;


# instance fields
.field protected final SIM_1_ACCOUNT:Landroid/accounts/Account;

.field protected final SIM_2_ACCOUNT:Landroid/accounts/Account;

.field protected final SIM_ACCOUNT:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "SIM"

    .line 58
    const-string/jumbo v2, "com.android.sim"

    .line 57
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->SIM_ACCOUNT:Landroid/accounts/Account;

    .line 59
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "SIM1"

    .line 60
    const-string/jumbo v2, "com.android.sim"

    .line 59
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->SIM_1_ACCOUNT:Landroid/accounts/Account;

    .line 61
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v1, "SIM2"

    .line 62
    const-string/jumbo v2, "com.android.sim"

    .line 61
    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->SIM_2_ACCOUNT:Landroid/accounts/Account;

    .line 52
    return-void
.end method

.method private static declared-synchronized createContactAccountIconManager(Landroid/content/Context;)Lcom/oneplus/contacts/common/list/ContactAccountIconManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    monitor-enter v1

    .line 78
    :try_start_0
    new-instance v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;

    invoke-direct {v0, p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/contacts/common/list/ContactAccountIconManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sget-object v1, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->sInstance:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->createContactAccountIconManager(Landroid/content/Context;)Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    move-result-object v1

    sput-object v1, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->sInstance:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    .line 73
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    sget-object v1, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->sInstance:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    return-object v1
.end method


# virtual methods
.method public abstract cancelPendingRequests(Landroid/view/View;)V
.end method

.method public abstract cleanCache()V
.end method

.method public abstract loadContactAccount(Landroid/widget/ImageView;J)V
.end method

.method public abstract loadContactAccount(Landroid/widget/ImageView;Ljava/lang/String;)V
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    return-void
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
