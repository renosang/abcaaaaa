.class public Lcom/android/dialer/contactinfo/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/contactinfo/ContactInfoCache$1;,
        Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;,
        Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;
    }
.end annotation


# instance fields
.field private mCache:Lcom/android/dialer/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/util/ExpirableCache",
            "<",
            "Lcom/android/dialer/contactinfo/NumberWithCountryIso;",
            "Lcom/android/dialer/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private mContactInfoQueryThread:Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;

.field private mHandler:Landroid/os/Handler;

.field private mOnContactInfoChangedListener:Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/dialer/contactinfo/ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/dialer/contactinfo/ContactInfoCache;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/contactinfo/ContactInfoCache;)Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mOnContactInfoChangedListener:Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/dialer/contactinfo/ContactInfoCache;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/contactinfo/ContactInfoCache;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/contactinfo/ContactInfoCache;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/dialer/contactinfo/ContactInfoCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/contactinfo/ContactInfoCache;->startRequestProcessing()V

    return-void
.end method

.method public constructor <init>(Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;)V
    .locals 1
    .param p1, "contactInfoHelper"    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p2, "onContactInfoChangedListener"    # Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/android/dialer/contactinfo/ContactInfoCache$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/contactinfo/ContactInfoCache$1;-><init>(Lcom/android/dialer/contactinfo/ContactInfoCache;)V

    iput-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mHandler:Landroid/os/Handler;

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mRequestProcessingDisabled:Z

    .line 140
    iput-object p1, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    .line 141
    iput-object p2, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mOnContactInfoChangedListener:Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    .line 143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    .line 144
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/android/dialer/util/ExpirableCache;->create(I)Lcom/android/dialer/util/ExpirableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    .line 139
    return-void
.end method

.method private callLogInfoMatches(Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 2
    .param p1, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .param p2, "info"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    .line 313
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget v0, p1, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    const/4 v6, 0x0

    .line 193
    iget-object v5, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v5, p1, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    .line 195
    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    if-nez v1, :cond_0

    .line 197
    return v6

    .line 202
    :cond_0
    new-instance v3, Lcom/android/dialer/contactinfo/NumberWithCountryIso;

    invoke-direct {v3, p1, p2}, Lcom/android/dialer/contactinfo/NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v3, "numberCountryIso":Lcom/android/dialer/contactinfo/NumberWithCountryIso;
    iget-object v5, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v5, v3}, Lcom/android/dialer/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/ContactInfo;

    .line 205
    .local v0, "existingInfo":Lcom/android/dialer/calllog/ContactInfo;
    iget v5, v1, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    .line 213
    .local v2, "isRemoteSource":Z
    :goto_0
    sget-object v5, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v0, v5, :cond_1

    if-eqz v2, :cond_4

    .line 214
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/dialer/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    .line 218
    .local v4, "updated":Z
    :goto_1
    iget-object v5, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v5, v3, v1}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    iget-object v5, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v5, p1, p2, v1, p3}, Lcom/android/dialer/calllog/ContactInfoHelper;->updateCallLogContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V

    .line 223
    return v4

    .line 205
    .end local v2    # "isRemoteSource":Z
    .end local v4    # "updated":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isRemoteSource":Z
    goto :goto_0

    .line 214
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "updated":Z
    goto :goto_1

    .line 213
    .end local v4    # "updated":Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "updated":Z
    goto :goto_1
.end method

.method private declared-synchronized startRequestProcessing()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 253
    :try_start_0
    iget-boolean v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 256
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    .line 257
    return-void

    .line 260
    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;

    invoke-direct {v0, p0}, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;-><init>(Lcom/android/dialer/contactinfo/ContactInfoCache;)V

    iput-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;

    .line 261
    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->setPriority(I)V

    .line 262
    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 251
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopRequestProcessing()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 277
    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->stopProcessing()V

    .line 280
    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;->interrupt()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 274
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public disableRequestProcessing()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mRequestProcessingDisabled:Z

    .line 323
    return-void
.end method

.method protected enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .param p4, "immediate"    # Z

    .prologue
    .line 296
    new-instance v0, Lcom/android/dialer/contactinfo/ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/dialer/contactinfo/ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V

    .line 297
    .local v0, "request":Lcom/android/dialer/contactinfo/ContactInfoRequest;
    iget-object v2, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v1, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 303
    if-eqz p4, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/android/dialer/contactinfo/ContactInfoCache;->startRequestProcessing()V

    .line 295
    :cond_1
    return-void

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "cachedContactInfo"    # Lcom/android/dialer/calllog/ContactInfo;

    .prologue
    const/4 v4, 0x0

    .line 148
    new-instance v2, Lcom/android/dialer/contactinfo/NumberWithCountryIso;

    invoke-direct {v2, p1, p2}, Lcom/android/dialer/contactinfo/NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v2, "numberCountryIso":Lcom/android/dialer/contactinfo/NumberWithCountryIso;
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v3, v2}, Lcom/android/dialer/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;

    move-result-object v0

    .line 151
    .local v0, "cachedInfo":Lcom/android/dialer/util/ExpirableCache$CachedValue;, "Lcom/android/dialer/util/ExpirableCache$CachedValue<Lcom/android/dialer/calllog/ContactInfo;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 152
    :goto_0
    if-nez v0, :cond_2

    .line 153
    iget-object v3, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    sget-object v4, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    invoke-virtual {v3, v2, v4}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    move-object v1, p3

    .line 158
    .local v1, "info":Lcom/android/dialer/calllog/ContactInfo;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/dialer/contactinfo/ContactInfoCache;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V

    .line 178
    .end local v1    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_0
    :goto_1
    return-object v1

    .line 151
    :cond_1
    invoke-interface {v0}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/ContactInfo;

    .restart local v1    # "info":Lcom/android/dialer/calllog/ContactInfo;
    goto :goto_0

    .line 161
    .end local v1    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_2
    invoke-interface {v0}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/dialer/contactinfo/ContactInfoCache;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V

    .line 173
    :cond_3
    :goto_2
    sget-object v3, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v1, v3, :cond_0

    .line 175
    move-object v1, p3

    .restart local v1    # "info":Lcom/android/dialer/calllog/ContactInfo;
    goto :goto_1

    .line 165
    .end local v1    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_4
    invoke-direct {p0, p3, v1}, Lcom/android/dialer/contactinfo/ContactInfoCache;->callLogInfoMatches(Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 170
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/dialer/contactinfo/ContactInfoCache;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V

    goto :goto_2
.end method

.method public injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "contactInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/android/dialer/contactinfo/NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/android/dialer/contactinfo/NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .local v0, "numberCountryIso":Lcom/android/dialer/contactinfo/NumberWithCountryIso;
    iget-object v1, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/dialer/util/ExpirableCache;->expireAll()V

    .line 267
    invoke-direct {p0}, Lcom/android/dialer/contactinfo/ContactInfoCache;->stopRequestProcessing()V

    .line 265
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mContactInfoQueryThread:Lcom/android/dialer/contactinfo/ContactInfoCache$QueryThread;

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/dialer/contactinfo/ContactInfoCache;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 230
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/dialer/contactinfo/ContactInfoCache;->stopRequestProcessing()V

    .line 243
    return-void
.end method
