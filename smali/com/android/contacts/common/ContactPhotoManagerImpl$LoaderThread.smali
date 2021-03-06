.class Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final MAX_PHOTOS_TO_PRELOAD:I = 0x64

.field private static final MESSAGE_LOAD_PHOTOS:I = 0x1

.field private static final MESSAGE_PRELOAD_PHOTOS:I = 0x0

.field private static final PHOTO_PRELOAD_DELAY:I = 0x3e8

.field private static final PRELOAD_BATCH:I = 0x19

.field private static final PRELOAD_STATUS_DONE:I = 0x2

.field private static final PRELOAD_STATUS_IN_PROGRESS:I = 0x1

.field private static final PRELOAD_STATUS_NOT_STARTED:I


# instance fields
.field private mBuffer:[B

.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoIdsAsStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreloadPhotoIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadStatus:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/contacts/common/ContactPhotoManagerImpl;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    .line 1377
    const-string/jumbo v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1362
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    .line 1363
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    .line 1364
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    .line 1365
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    .line 1374
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1378
    iput-object p2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 1376
    return-void
.end method

.method private loadPhotosInBackground()V
    .locals 4

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get4(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/content/Context;

    move-result-object v0

    .line 1518
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    .line 1517
    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1519
    return-void

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-wrap1(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1523
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadUriBasedPhotos()V

    .line 1524
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1516
    return-void
.end method

.method private loadThumbnails(Z)V
    .locals 12
    .param p1, "preloading"    # Z

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    return-void

    .line 1535
    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1536
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 1537
    .local v9, "id":Ljava/lang/Long;
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1539
    .end local v9    # "id":Ljava/lang/Long;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1540
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1544
    .end local v10    # "id$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1545
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_id IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1547
    if-eqz v8, :cond_3

    .line 1548
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1550
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1546
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1552
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1554
    const/4 v7, 0x0

    .line 1557
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1558
    invoke-static {}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get0()[Ljava/lang/String;

    move-result-object v2

    .line 1559
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1560
    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-static {}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get1()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1561
    const/4 v5, 0x0

    .line 1557
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1563
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 1564
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1565
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1566
    .restart local v9    # "id":Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1567
    .local v6, "bytes":[B
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, -0x1

    invoke-static {v0, v9, v6, p1, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1568
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1571
    .end local v6    # "bytes":[B
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    .line 1572
    if-eqz v7, :cond_5

    .line 1573
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1571
    :cond_5
    throw v0

    .line 1572
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_6
    if-eqz v7, :cond_7

    .line 1573
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1578
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "id$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 1579
    .restart local v9    # "id":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1580
    const/4 v11, 0x0

    .line 1582
    .local v11, "profileCursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 1583
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1584
    invoke-static {}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get0()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1582
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1585
    .local v11, "profileCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1586
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1587
    const/4 v3, -0x1

    .line 1586
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1593
    :goto_4
    if-eqz v11, :cond_8

    .line 1594
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1590
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v9, v1, p1, v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 1592
    .end local v11    # "profileCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    .line 1593
    if-eqz v11, :cond_a

    .line 1594
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1592
    :cond_a
    throw v0

    .line 1599
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v9, v1, p1, v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_3

    .line 1603
    .end local v9    # "id":Ljava/lang/Long;
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get5(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1528
    return-void
.end method

.method private loadUriBasedPhotos()V
    .locals 15

    .prologue
    .line 1611
    iget-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "uriRequest$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    .line 1615
    .local v9, "uriRequest":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    invoke-virtual {v9}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 1619
    .local v5, "originalUri":Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/contacts/common/ContactPhotoManager;->removeContactType(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 1621
    .local v8, "uri":Landroid/net/Uri;
    iget-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    if-nez v11, :cond_0

    .line 1622
    const/16 v11, 0x4000

    new-array v11, v11, [B

    iput-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    .line 1626
    :cond_0
    :try_start_0
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 1627
    .local v6, "scheme":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1628
    .local v4, "is":Ljava/io/InputStream;
    const-string/jumbo v11, "http"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string/jumbo v11, "https"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1629
    :cond_1
    const/4 v11, 0x1

    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1631
    new-instance v11, Ljava/net/URL;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 1634
    .local v1, "connection":Ljava/net/HttpURLConnection;
    iget-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v11}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get6(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1635
    const-string/jumbo v11, "User-Agent"

    iget-object v12, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v12}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get6(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1638
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 1643
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 1647
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    :goto_2
    if-eqz v4, :cond_5

    .line 1648
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 1651
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_3
    :try_start_3
    iget-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v4, v11}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "size":I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    .line 1652
    iget-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1654
    .end local v7    # "size":I
    :catchall_0
    move-exception v11

    .line 1655
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1654
    throw v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    .line 1664
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1665
    .local v3, "ex":Ljava/lang/Throwable;
    const-string/jumbo v11, "ContactPhotoManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot load photo "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1666
    iget-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-virtual {v9}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v5, v13, v14, v12}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto/16 :goto_0

    .line 1639
    .end local v3    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "scheme":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1640
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1641
    const/4 v4, 0x0

    goto :goto_1

    .line 1645
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v11, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .local v4, "is":Ljava/io/InputStream;
    goto :goto_2

    .line 1655
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "size":I
    :cond_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1657
    iget-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 1658
    invoke-virtual {v9}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v13

    .line 1657
    const/4 v14, 0x0

    invoke-static {v11, v5, v12, v14, v13}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1659
    iget-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v11}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get5(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1661
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "size":I
    :cond_5
    const-string/jumbo v11, "ContactPhotoManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot load photo "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object v11, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-virtual {v9}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v5, v13, v14, v12}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1610
    .end local v5    # "originalUri":Landroid/net/Uri;
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "uriRequest":Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    :cond_6
    return-void
.end method

.method private preloadPhotosInBackground()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 1443
    iget v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v3, v5, :cond_0

    .line 1444
    return-void

    .line 1447
    :cond_0
    iget v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-nez v3, :cond_2

    .line 1448
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->queryPhotosForPreload()V

    .line 1449
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1450
    iput v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1454
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1455
    return-void

    .line 1452
    :cond_1
    iput v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_0

    .line 1458
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get2(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get3(Lcom/android/contacts/common/ContactPhotoManagerImpl;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 1459
    iput v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1460
    return-void

    .line 1463
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1464
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1466
    const/4 v0, 0x0

    .line 1467
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1468
    .local v2, "preloadSize":I
    :goto_1
    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_4

    .line 1469
    add-int/lit8 v2, v2, -0x1

    .line 1470
    add-int/lit8 v0, v0, 0x1

    .line 1471
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1472
    .local v1, "photoId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1473
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1474
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1477
    .end local v1    # "photoId":Ljava/lang/Long;
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1479
    if-nez v2, :cond_5

    .line 1480
    iput v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1483
    :cond_5
    const-string/jumbo v3, "ContactPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Preloaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " photos.  Cached bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1484
    iget-object v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v5}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->-get2(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    .line 1483
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1442
    return-void
.end method

.method private queryPhotosForPreload()V
    .locals 7

    .prologue
    .line 1490
    const/4 v6, 0x0

    .line 1492
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1493
    const-string/jumbo v2, "directory"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1492
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1494
    const-string/jumbo v2, "limit"

    .line 1495
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1492
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1497
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "photo_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1498
    const-string/jumbo v3, "photo_id NOT NULL AND photo_id!=0"

    .line 1500
    const-string/jumbo v5, "starred DESC, last_time_contacted DESC"

    .line 1499
    const/4 v4, 0x0

    .line 1497
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1502
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1503
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1509
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1510
    if-eqz v6, :cond_0

    .line 1511
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1509
    :cond_0
    throw v0

    .line 1510
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_2

    .line 1511
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1489
    :cond_2
    return-void
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1383
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 1381
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1425
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1433
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1427
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->preloadPhotosInBackground()V

    goto :goto_0

    .line 1430
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    .line 1425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 1414
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 1415
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1416
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1413
    return-void
.end method

.method public requestPreloading()V
    .locals 4

    .prologue
    .line 1395
    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1396
    return-void

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 1400
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    return-void

    .line 1404
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 1405
    const-wide/16 v2, 0x3e8

    const/4 v1, 0x0

    .line 1404
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1394
    return-void
.end method
