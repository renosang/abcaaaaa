.class Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


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
            "Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;",
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

.field final synthetic this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    .line 1400
    const-string/jumbo v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1385
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    .line 1386
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    .line 1387
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    .line 1388
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    .line 1397
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1401
    iput-object p2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 1399
    return-void
.end method

.method private loadPhotosInBackground()V
    .locals 4

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get4(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Landroid/content/Context;

    move-result-object v0

    .line 1541
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    .line 1540
    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1542
    return-void

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-wrap1(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1545
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1546
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadUriBasedPhotos()V

    .line 1547
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1539
    return-void
.end method

.method private loadThumbnails(Z)V
    .locals 12
    .param p1, "preloading"    # Z

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    return-void

    .line 1558
    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1559
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

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

    .line 1560
    .local v9, "id":Ljava/lang/Long;
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1562
    .end local v9    # "id":Ljava/lang/Long;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1563
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1567
    .end local v10    # "id$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1568
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_id IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1570
    if-eqz v8, :cond_3

    .line 1571
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1573
    :cond_3
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1569
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1575
    :cond_4
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1577
    const/4 v7, 0x0

    .line 1580
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 1581
    invoke-static {}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get0()[Ljava/lang/String;

    move-result-object v2

    .line 1582
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1583
    iget-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-static {}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get1()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1584
    const/4 v5, 0x0

    .line 1580
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1586
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 1587
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1588
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1589
    .restart local v9    # "id":Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1590
    .local v6, "bytes":[B
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, -0x1

    invoke-static {v0, v9, v6, p1, v1}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1591
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1594
    .end local v6    # "bytes":[B
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    .line 1595
    if-eqz v7, :cond_5

    .line 1596
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1594
    :cond_5
    throw v0

    .line 1595
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_6
    if-eqz v7, :cond_7

    .line 1596
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1601
    :cond_7
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

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

    .line 1602
    .restart local v9    # "id":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1603
    const/4 v11, 0x0

    .line 1605
    .local v11, "profileCursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 1606
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1607
    invoke-static {}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get0()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1605
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1608
    .local v11, "profileCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1609
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1610
    const/4 v3, -0x1

    .line 1609
    invoke-static {v0, v1, v2, p1, v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1616
    :goto_4
    if-eqz v11, :cond_8

    .line 1617
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1613
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v9, v1, p1, v2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 1615
    .end local v11    # "profileCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    .line 1616
    if-eqz v11, :cond_a

    .line 1617
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1615
    :cond_a
    throw v0

    .line 1622
    :cond_b
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v9, v1, p1, v2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_3

    .line 1626
    .end local v9    # "id":Ljava/lang/Long;
    :cond_c
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get5(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1551
    return-void
.end method

.method private loadUriBasedPhotos()V
    .locals 23

    .prologue
    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "uriRequest$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;

    .line 1638
    .local v16, "uriRequest":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 1642
    .local v11, "originalUri":Landroid/net/Uri;
    invoke-static {v11}, Lcom/oneplus/contacts/common/ContactPhotoManager;->removeContactType(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    .line 1644
    .local v15, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 1645
    const/16 v19, 0x4000

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    .line 1649
    :cond_0
    invoke-virtual {v15}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 1650
    .local v4, "authority":Ljava/lang/String;
    const-string/jumbo v19, "yellowpage"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1651
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 1652
    .local v12, "photo":Ljava/lang/String;
    const-string/jumbo v19, "url"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1653
    .local v18, "url":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v12, v0}, Lcom/oneplus/superyellowpage/OPYuloreUtil;->getAndSaveYuloreLogoBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 1655
    .local v6, "bytes":[B
    if-eqz v6, :cond_2

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    move-object/from16 v19, v0

    .line 1658
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v20

    .line 1657
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v11, v6, v1, v2}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get5(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1633
    .end local v4    # "authority":Ljava/lang/String;
    .end local v6    # "bytes":[B
    .end local v11    # "originalUri":Landroid/net/Uri;
    .end local v12    # "photo":Ljava/lang/String;
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "uriRequest":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    .end local v18    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1661
    .restart local v4    # "authority":Ljava/lang/String;
    .restart local v6    # "bytes":[B
    .restart local v11    # "originalUri":Landroid/net/Uri;
    .restart local v12    # "photo":Ljava/lang/String;
    .restart local v15    # "uri":Landroid/net/Uri;
    .restart local v16    # "uriRequest":Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;
    .restart local v18    # "url":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-static {v0, v11, v1, v2, v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_1

    .line 1668
    .end local v6    # "bytes":[B
    .end local v12    # "photo":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 1669
    .local v13, "scheme":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1670
    .local v10, "is":Ljava/io/InputStream;
    const-string/jumbo v19, "http"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string/jumbo v19, "https"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1671
    :cond_4
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1673
    new-instance v19, Ljava/net/URL;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 1676
    .local v7, "connection":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get6(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1677
    const-string/jumbo v19, "User-Agent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get6(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    :cond_5
    :try_start_1
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 1685
    .end local v10    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 1689
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    :goto_3
    if-eqz v10, :cond_8

    .line 1690
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 1693
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, "size":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v14, v0, :cond_7

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1696
    .end local v14    # "size":I
    :catchall_0
    move-exception v19

    .line 1697
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1696
    throw v19
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    .line 1706
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1707
    .local v9, "ex":Ljava/lang/Throwable;
    const-string/jumbo v19, "ContactPhotoManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Cannot load photo "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-static {v0, v11, v1, v2, v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto/16 :goto_0

    .line 1681
    .end local v9    # "ex":Ljava/lang/Throwable;
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v13    # "scheme":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 1682
    .local v8, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1683
    const/4 v10, 0x0

    goto :goto_2

    .line 1687
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "e":Ljava/io/IOException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .local v10, "is":Ljava/io/InputStream;
    goto :goto_3

    .line 1697
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "size":I
    :cond_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    .line 1700
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v21

    .line 1699
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-static {v0, v11, v1, v2, v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get5(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1703
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "size":I
    :cond_8
    const-string/jumbo v19, "ContactPhotoManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Cannot load photo "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    invoke-static {v0, v11, v1, v2, v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-wrap0(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method private preloadPhotosInBackground()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 1466
    iget v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v3, v5, :cond_0

    .line 1467
    return-void

    .line 1470
    :cond_0
    iget v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-nez v3, :cond_2

    .line 1471
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->queryPhotosForPreload()V

    .line 1472
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1473
    iput v5, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1477
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1478
    return-void

    .line 1475
    :cond_1
    iput v6, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_0

    .line 1481
    :cond_2
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v3}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get2(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v4}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get3(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 1482
    iput v5, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1483
    return-void

    .line 1486
    :cond_3
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1487
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1489
    const/4 v0, 0x0

    .line 1490
    .local v0, "count":I
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1491
    .local v2, "preloadSize":I
    :goto_1
    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_4

    .line 1492
    add-int/lit8 v2, v2, -0x1

    .line 1493
    add-int/lit8 v0, v0, 0x1

    .line 1494
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1495
    .local v1, "photoId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1496
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1497
    iget-object v3, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1500
    .end local v1    # "photoId":Ljava/lang/Long;
    :cond_4
    invoke-direct {p0, v6}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1502
    if-nez v2, :cond_5

    .line 1503
    iput v5, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1506
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

    .line 1507
    iget-object v5, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v5}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;->-get2(Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    .line 1506
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1465
    return-void
.end method

.method private queryPhotosForPreload()V
    .locals 7

    .prologue
    .line 1513
    const/4 v6, 0x0

    .line 1515
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1516
    const-string/jumbo v2, "directory"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1515
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1517
    const-string/jumbo v2, "limit"

    .line 1518
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1515
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1520
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "photo_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1521
    const-string/jumbo v3, "photo_id NOT NULL AND photo_id!=0"

    .line 1523
    const-string/jumbo v5, "starred DESC, last_time_contacted DESC"

    .line 1522
    const/4 v4, 0x0

    .line 1520
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1525
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1526
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1529
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

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

    .line 1532
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1533
    if-eqz v6, :cond_0

    .line 1534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1532
    :cond_0
    throw v0

    .line 1533
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v6, :cond_2

    .line 1534
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1512
    :cond_2
    return-void
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1406
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 1404
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1448
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1456
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1450
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->preloadPhotosInBackground()V

    goto :goto_0

    .line 1453
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    .line 1448
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
    .line 1437
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 1438
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1439
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1436
    return-void
.end method

.method public requestPreloading()V
    .locals 4

    .prologue
    .line 1418
    iget v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1419
    return-void

    .line 1422
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 1423
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1424
    return-void

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 1428
    const-wide/16 v2, 0x3e8

    const/4 v1, 0x0

    .line 1427
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1417
    return-void
.end method
