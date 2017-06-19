.class final Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQueryCompleteListenerFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;
    }
.end annotation


# instance fields
.field private final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mIsListenerCalled:Z

.field private final mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/incallui/CallerInfo;
    .param p4, "directoryId"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->onDirectoryQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # I
    .param p3, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    .line 497
    iput-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    .line 515
    iput p2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    .line 516
    iput-object p3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mIsListenerCalled:Z

    .line 518
    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    .line 514
    return-void
.end method

.method private addCallerInfoIntoCache(Lcom/android/incallui/CallerInfo;J)V
    .locals 10
    .param p1, "ci"    # Lcom/android/incallui/CallerInfo;
    .param p2, "directoryId"    # J

    .prologue
    const/4 v5, 0x0

    .line 541
    iget-boolean v4, p1, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v4, :cond_2

    .line 544
    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    .line 543
    invoke-static {v4, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCachedContactInfo(Lcom/android/dialer/service/CachedNumberLookupService;Lcom/android/incallui/CallerInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    .line 545
    .local v0, "cachedContactInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0121

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "directoryLabel":Ljava/lang/String;
    invoke-interface {v0, v1, p2, p3}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->setDirectorySource(Ljava/lang/String;J)V

    .line 547
    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    iget-object v6, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    invoke-interface {v4, v6, v0}, Lcom/android/dialer/service/CachedNumberLookupService;->addContact(Landroid/content/Context;Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;)V

    .line 550
    iget-object v4, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 551
    const/4 v3, 0x0

    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 552
    iget-object v6, p1, Lcom/android/incallui/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    .line 551
    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 553
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 554
    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    iget-object v6, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v3}, Lcom/android/dialer/service/CachedNumberLookupService;->addPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 558
    :cond_0
    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 556
    .end local v3    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 557
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v4, "CallerInfoAsyncQuery"

    const-string/jumbo v5, "failed to fetch directory contact photo"

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 540
    .end local v0    # "cachedContactInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .end local v1    # "directoryLabel":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    return-void

    .line 558
    .restart local v0    # "cachedContactInfo":Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .restart local v1    # "directoryLabel":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v3    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    :goto_2
    if-eqz v5, :cond_5

    :try_start_5
    throw v5

    :catch_3
    move-exception v6

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_2

    :cond_4
    if-eq v5, v6, :cond_3

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private onDirectoryQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;J)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/incallui/CallerInfo;
    .param p4, "directoryId"    # J

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "shouldCallListener":Z
    monitor-enter p0

    .line 525
    :try_start_0
    iget v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    .line 526
    iget-boolean v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mIsListenerCalled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p3, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mCount:I

    if-nez v1, :cond_1

    .line 527
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mIsListenerCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    .line 534
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v1, :cond_2

    .line 535
    invoke-direct {p0, p3, p4, p5}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->addCallerInfoIntoCache(Lcom/android/incallui/CallerInfo;J)V

    .line 536
    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->mListener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    .line 522
    :cond_2
    return-void

    .line 524
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public newListener(J)Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 565
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory$DirectoryQueryCompleteListener;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;J)V

    return-object v0
.end method
