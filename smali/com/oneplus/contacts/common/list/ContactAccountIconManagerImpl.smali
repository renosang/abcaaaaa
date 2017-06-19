.class Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;
.super Lcom/oneplus/contacts/common/list/ContactAccountIconManager;
.source "ContactAccountIconManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;
.implements Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;,
        Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private mAccountManager:Lcom/oneplus/contacts/common/list/ContactAccountManager;

.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mCachedContactInfo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInfoDecoder:Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;

.field private mLinkedIcon:Landroid/graphics/drawable/Drawable;

.field private mLoaderThread:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPause:Z

.field private mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCard1Icon:Landroid/graphics/drawable/Drawable;

.field private mSimCard2Icon:Landroid/graphics/drawable/Drawable;

.field private mSimCardIcon:Landroid/graphics/drawable/Drawable;

.field private mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidSimCount:I


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mCachedContactInfo:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCard1Icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCard2Icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCardIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mValidSimCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mValidSimCount:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;-><init>()V

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 161
    iput-object p1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mContext:Landroid/content/Context;

    .line 162
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 163
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 164
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mCachedContactInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    invoke-static {}, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->getInstance()Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mInfoDecoder:Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;

    .line 167
    const v0, 0x7f020187

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCardIcon:Landroid/graphics/drawable/Drawable;

    .line 168
    const v0, 0x7f020185

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCard1Icon:Landroid/graphics/drawable/Drawable;

    .line 169
    const v0, 0x7f020186

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCard2Icon:Landroid/graphics/drawable/Drawable;

    .line 170
    const v0, 0x7f020181

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mLinkedIcon:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-static {}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->getInstance()Lcom/oneplus/contacts/common/list/ContactAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountManager:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    .line 172
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountManager:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->addAccountLoadCallback(Lcom/oneplus/contacts/common/list/ContactAccountManager$AccountLoadCallback;)V

    .line 173
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    .line 174
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getValidSimAccountCount()I

    move-result v0

    iput v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mValidSimCount:I

    .line 175
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/AccountTypeManager;->addOnContactAccountsUpdateListener(Lcom/oneplus/contacts/common/model/OnContactAccountsUpdateListener;)V

    .line 158
    return-void
.end method

.method private static isChildView(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "potentialChild"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 333
    invoke-static {p0, v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->isChildView(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    .line 332
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadCachedAccount(Landroid/widget/ImageView;Ljava/lang/Long;)Z
    .locals 3
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "contactId"    # Ljava/lang/Long;

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mCachedContactInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mCachedContactInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;

    invoke-virtual {v1}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$SimpleRawContactInfo;->getAccountIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 341
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 344
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 348
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    const/4 v1, 0x0

    return v1
.end method

.method private processLoadedRawContacts()V
    .locals 5

    .prologue
    .line 406
    iget-object v4, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 407
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 409
    .local v3, "view":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 410
    .local v0, "contactId":Ljava/lang/Long;
    invoke-direct {p0, v3, v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->loadCachedAccount(Landroid/widget/ImageView;Ljava/lang/Long;)Z

    move-result v2

    .line 411
    .local v2, "loaded":Z
    if-eqz v2, :cond_0

    .line 412
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 415
    .end local v0    # "contactId":Ljava/lang/Long;
    .end local v2    # "loaded":Z
    .end local v3    # "view":Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->requestLoading()V

    .line 405
    :cond_2
    return-void
.end method

.method private processReloadedAccounts()V
    .locals 5

    .prologue
    .line 265
    iget-object v4, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 266
    .local v3, "viewIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 268
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    .local v1, "info":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->setAccountIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v2

    .line 270
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 271
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 264
    .end local v0    # "iconView":Landroid/widget/ImageView;
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "success":Z
    :cond_1
    return-void
.end method

.method private refreshSimAccountIcon()V
    .locals 4

    .prologue
    .line 421
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 422
    :cond_0
    return-void

    .line 424
    :cond_1
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 425
    .local v2, "viewIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 427
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 428
    .local v1, "info":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->setAccountIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 429
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 420
    .end local v0    # "iconView":Landroid/widget/ImageView;
    .end local v1    # "info":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mLoadingRequested:Z

    .line 356
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 353
    :cond_0
    return-void
.end method

.method private requestReloadContactAccount()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountManager:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ContactAccountIconManager"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->startLoadAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method private setAccountIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "rawContactInfo"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 214
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mInfoDecoder:Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;

    invoke-virtual {v3, p2}, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->getAllAccountId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 215
    .local v0, "accountIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 216
    :cond_0
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    return v6

    .line 219
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "id$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 220
    .local v1, "id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountManager:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->isAccountIdLoaded(J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 221
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string/jumbo v3, "ContactAccountIconManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "This account id=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "is not loaded!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v8

    .line 226
    :cond_3
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountManager:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->isSimAccount(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCardIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return v6

    .line 230
    :cond_4
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountManager:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->isSim1Account(J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 231
    iget v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mValidSimCount:I

    if-ge v3, v9, :cond_5

    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCardIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return v6

    .line 231
    :cond_5
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCard1Icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 234
    :cond_6
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountManager:Lcom/oneplus/contacts/common/list/ContactAccountManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/contacts/common/list/ContactAccountManager;->isSim2Account(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    iget v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mValidSimCount:I

    if-ge v3, v9, :cond_7

    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCardIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return v6

    .line 235
    :cond_7
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimCard2Icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 240
    .end local v1    # "id":Ljava/lang/Long;
    :cond_8
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mSimPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    return v6
.end method


# virtual methods
.method public cancelPendingRequests(Landroid/view/View;)V
    .locals 7
    .param p1, "fragmentRootView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 305
    if-nez p1, :cond_0

    .line 306
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 307
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 308
    return-void

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 311
    iget-object v5, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    .line 310
    new-array v5, v5, [Landroid/widget/ImageView;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/widget/ImageView;

    .line 312
    .local v1, "requestSetCopyIds":[Landroid/widget/ImageView;
    array-length v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    .line 315
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {p1, v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->isChildView(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 316
    :cond_1
    iget-object v6, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_3
    iget-object v4, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 321
    iget-object v5, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    .line 320
    new-array v5, v5, [Landroid/widget/ImageView;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/widget/ImageView;

    .line 322
    .local v2, "requestSetCopyInfos":[Landroid/widget/ImageView;
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v0, v2, v3

    .line 325
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {p1, v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->isChildView(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 326
    :cond_4
    iget-object v5, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 304
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_6
    return-void
.end method

.method public cleanCache()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mCachedContactInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 178
    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mLoaderThread:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;-><init>(Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mLoaderThread:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;

    .line 401
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mLoaderThread:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->start()V

    .line 398
    :cond_0
    return-void
.end method

.method public getSponsorIdentify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string/jumbo v0, "ContactAccountIconManager"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 366
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 395
    return v2

    .line 368
    :pswitch_0
    iput-boolean v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mLoadingRequested:Z

    .line 369
    iget-boolean v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPause:Z

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->ensureLoaderThread()V

    .line 371
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mLoaderThread:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->requestLoading()V

    .line 373
    :cond_0
    return v1

    .line 376
    :pswitch_1
    iget-boolean v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPause:Z

    if-nez v0, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->processLoadedRawContacts()V

    .line 379
    :cond_1
    return v1

    .line 382
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->ensureLoaderThread()V

    .line 383
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mLoaderThread:Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl$LoadAccountThread;->requestGetValidSimCount()V

    .line 384
    return v1

    .line 387
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mValidSimCount:I

    .line 388
    return v1

    .line 391
    :pswitch_4
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->refreshSimAccountIcon()V

    .line 392
    return v1

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public loadContactAccount(Landroid/widget/ImageView;J)V
    .locals 4
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "contactId"    # J

    .prologue
    .line 184
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->loadCachedAccount(Landroid/widget/ImageView;Ljava/lang/Long;)Z

    move-result v0

    .line 185
    .local v0, "loaded":Z
    if-eqz v0, :cond_1

    .line 186
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-boolean v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPause:Z

    if-nez v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method public loadContactAccount(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "rawContactInfo"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mInfoDecoder:Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;

    invoke-virtual {v2, p2}, Lcom/oneplus/contacts/common/list/RawContactInfoDecoder;->isDifferentAccountLinked(Ljava/lang/String;)Z

    move-result v0

    .line 198
    .local v0, "isLinked":Z
    if-eqz v0, :cond_1

    .line 199
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mLinkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->setAccountIcon(Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v1

    .line 202
    .local v1, "success":Z
    if-eqz v1, :cond_2

    .line 203
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-boolean v2, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPause:Z

    if-nez v2, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->requestReloadContactAccount()V

    goto :goto_0
.end method

.method public onAccountLoadFinished()V
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPause:Z

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->processReloadedAccounts()V

    .line 253
    :cond_0
    return-void
.end method

.method public onContactAccountsUpdated(Ljava/util/List;)V
    .locals 4
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
    .line 435
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getValidSimAccountCount()I

    move-result v0

    .line 436
    .local v0, "validSimCount":I
    iget v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mValidSimCount:I

    if-eq v0, v1, :cond_0

    .line 437
    const-string/jumbo v1, "ContactAccountIconManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onContactAccountsUpdated()-->mValidSimCount=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mValidSimCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  validSimCount=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iput v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mValidSimCount:I

    .line 439
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 434
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPause:Z

    .line 277
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPause:Z

    .line 284
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingContactIds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->requestLoading()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->mPendingInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManagerImpl;->requestReloadContactAccount()V

    .line 282
    :cond_1
    return-void
.end method
