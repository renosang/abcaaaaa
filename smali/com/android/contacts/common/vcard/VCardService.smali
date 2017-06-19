.class public Lcom/android/contacts/common/vcard/VCardService;
.super Landroid/app/Service;
.source "VCardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;,
        Lcom/android/contacts/common/vcard/VCardService$MyBinder;
    }
.end annotation


# static fields
.field static final CACHE_FILE_PREFIX:Ljava/lang/String; = "import_tmp_"

.field static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "VCardService"

.field static final TYPE_EXPORT:I = 0x2

.field static final TYPE_IMPORT:I = 0x1

.field static final X_VCARD_MIME_TYPE:Ljava/lang/String; = "text/x-vcard"


# instance fields
.field private mBinder:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

.field private mCallingActivity:Ljava/lang/String;

.field private mCurrentJobId:I

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mRemainingScannerConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mReservedDestination:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningJobMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/contacts/common/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 0
    .param p1, "client"    # Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/VCardService;->removeConnectionClient(Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 100
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    .line 55
    return-void
.end method

.method private declared-synchronized cancelAllRequestsAndShutdown()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/vcard/ProcessorBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/ProcessorBase;->cancel(Z)Z

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 382
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 377
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private clearCache()V
    .locals 7

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->fileList()[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 390
    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v4, "import_tmp_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    const-string/jumbo v4, "VCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove a temporary file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/VCardService;->deleteFile(Ljava/lang/String;)Z

    .line 389
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private declared-synchronized removeConnectionClient(Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;

    .prologue
    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 336
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 331
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopServiceIfAppropriate()V
    .locals 11

    .prologue
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 271
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 281
    .local v4, "size":I
    new-array v5, v4, [I

    .line 282
    .local v5, "toBeRemoved":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 283
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 284
    .local v2, "jobId":I
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 285
    .local v3, "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ProcessorBase;->isDone()Z

    move-result v6

    if-nez v6, :cond_1

    .line 286
    const-string/jumbo v6, "VCardService"

    const-string/jumbo v7, "Found unfinished job (id: %d)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 291
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    aget v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    monitor-exit p0

    .line 293
    return-void

    .line 297
    .end local v1    # "j":I
    :cond_1
    :try_start_1
    aput v2, v5, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v2    # "jobId":I
    .end local v3    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 304
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "toBeRemoved":[I
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 305
    const-string/jumbo v6, "VCardService"

    const-string/jumbo v7, "MediaScanner update is in progress."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 306
    return-void

    .line 309
    :cond_4
    :try_start_2
    const-string/jumbo v6, "VCardService"

    const-string/jumbo v7, "No unfinished job. Stop this service."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 311
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopSelf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 269
    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z
    .locals 3
    .param p1, "processor"    # Lcom/android/contacts/common/vcard/ProcessorBase;

    .prologue
    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 227
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    const-string/jumbo v1, "VCardService"

    const-string/jumbo v2, "Failed to excetute a job."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized handleCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 9
    .param p1, "request"    # Lcom/android/contacts/common/vcard/CancelRequest;
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .prologue
    monitor-enter p0

    .line 237
    :try_start_0
    iget v0, p1, Lcom/android/contacts/common/vcard/CancelRequest;->jobId:I

    .line 240
    .local v0, "jobId":I
    iget-object v4, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 241
    .local v2, "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    iget-object v4, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 243
    if-eqz v2, :cond_2

    .line 244
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/vcard/ProcessorBase;->cancel(Z)Z

    .line 245
    invoke-virtual {v2}, Lcom/android/contacts/common/vcard/ProcessorBase;->getType()I

    move-result v3

    .line 246
    .local v3, "type":I
    if-eqz p2, :cond_0

    .line 247
    invoke-interface {p2, p1, v3}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V

    .line 249
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 251
    check-cast v2, Lcom/android/contacts/common/vcard/ExportProcessor;

    .end local v2    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v2}, Lcom/android/contacts/common/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/common/vcard/ExportRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v4, "VCardService"

    .line 253
    const-string/jumbo v5, "Cancel reservation for the path %s if appropriate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    const-string/jumbo v4, "VCardService"

    const-string/jumbo v5, "Not reserved."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v1    # "path":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 236
    return-void

    .line 259
    .restart local v2    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "VCardService"

    const-string/jumbo v5, "Tried to remove unknown job (id: %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "jobId":I
    .end local v2    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized handleExportRequest(Lcom/android/contacts/common/vcard/ExportRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 5
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .prologue
    monitor-enter p0

    .line 192
    :try_start_0
    new-instance v1, Lcom/android/contacts/common/vcard/ExportProcessor;

    iget v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    iget-object v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/contacts/common/vcard/ExportProcessor;-><init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/contacts/common/vcard/VCardService;->tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    iget-object v1, p1, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    const-string/jumbo v1, "VCardService"

    .line 197
    const-string/jumbo v2, "The path %s is already reserved. Reject export request"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 198
    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 197
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz p2, :cond_0

    .line 200
    invoke-interface {p2, p1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 202
    return-void

    .line 205
    :cond_1
    if-eqz p2, :cond_2

    .line 206
    :try_start_1
    iget v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, p1, v1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V

    .line 208
    :cond_2
    iget v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    :goto_0
    monitor-exit p0

    .line 191
    return-void

    .line 210
    :cond_4
    if-eqz p2, :cond_3

    .line 211
    :try_start_2
    invoke-interface {p2, p1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized handleFinishExportNotification(IZ)V
    .locals 7
    .param p1, "jobId"    # I
    .param p2, "successful"    # Z

    .prologue
    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 356
    .local v0, "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 357
    if-nez v0, :cond_0

    .line 358
    const-string/jumbo v2, "VCardService"

    const-string/jumbo v3, "Tried to remove unknown job (id: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 350
    return-void

    .line 359
    .restart local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_0
    :try_start_1
    instance-of v2, v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    if-nez v2, :cond_1

    .line 360
    const-string/jumbo v2, "VCardService"

    .line 361
    const-string/jumbo v3, "Removed job (id: %s) isn\'t ExportProcessor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 363
    .restart local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_1
    :try_start_2
    check-cast v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    .end local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/common/vcard/ExportRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleFinishImportNotification(IZ)V
    .locals 1
    .param p1, "jobId"    # I
    .param p2, "successful"    # Z

    .prologue
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 346
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 340
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleImportRequest(Ljava/util/List;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 5
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportRequest;",
            ">;",
            "Lcom/android/contacts/common/vcard/VCardImportExportListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    monitor-enter p0

    .line 171
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 172
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 173
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/vcard/ImportRequest;

    .line 175
    .local v1, "request":Lcom/android/contacts/common/vcard/ImportRequest;
    new-instance v3, Lcom/android/contacts/common/vcard/ImportProcessor;

    iget v4, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v3, p0, p2, v1, v4}, Lcom/android/contacts/common/vcard/ImportProcessor;-><init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardImportExportListener;Lcom/android/contacts/common/vcard/ImportRequest;I)V

    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/VCardService;->tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    if-eqz p2, :cond_0

    .line 177
    iget v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, v1, v3, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V

    .line 179
    :cond_0
    iget v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    if-eqz p2, :cond_2

    .line 182
    invoke-interface {p2, v1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :cond_2
    monitor-exit p0

    .line 159
    return-void

    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mBinder:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 130
    new-instance v0, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;-><init>(Lcom/android/contacts/common/vcard/VCardService;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mBinder:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .line 128
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->cancelAllRequestsAndShutdown()V

    .line 154
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->clearCache()V

    .line 155
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 151
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "CALLING_ACTIVITY"

    .line 137
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    .line 142
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_0
    iput-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    goto :goto_0
.end method

.method declared-synchronized updateMediaScanner(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-string/jumbo v1, "VCardService"

    const-string/jumbo v2, "MediaScanner update is requested after executor\'s being shut down. Ignoring the update request"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 322
    return-void

    .line 325
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;-><init>(Lcom/android/contacts/common/vcard/VCardService;Ljava/lang/String;)V

    .line 326
    .local v0, "client":Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 314
    return-void

    .end local v0    # "client":Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
