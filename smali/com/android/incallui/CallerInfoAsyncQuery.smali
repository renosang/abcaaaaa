.class public Lcom/android/incallui/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;,
        Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;,
        Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;
    }
.end annotation


# static fields
.field private static final DIRECTORY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method static synthetic -wrap0(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/incallui/CallerInfo;
    .param p3, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/CallerInfoAsyncQuery;->startOtherDirectoriesQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-static {p0}, Lcom/android/incallui/CallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/incallui/CallerInfoAsyncQuery;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 461
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/incallui/CallerInfoAsyncQuery;->DIRECTORY_PROJECTION:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDirectoryIdsFromCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p0, :cond_2

    .line 480
    const-string/jumbo v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 481
    .local v2, "idIndex":I
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 483
    .local v0, "id":J
    invoke-static {v0, v1}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    .end local v0    # "id":J
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 478
    .end local v2    # "idIndex":I
    :cond_2
    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 575
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 576
    :cond_0
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;

    const-string/jumbo v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_1
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)V

    iput-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 579
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, p1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-set1(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 580
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-set2(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 574
    return-void
.end method

.method private static getDirectoryIds(Landroid/content/Context;)[J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 464
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v7, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    .line 467
    .local v1, "uri":Landroid/net/Uri;
    sget-boolean v2, Lcom/android/contacts/common/ContactsUtils;->FLAG_N_FEATURE:Z

    if-eqz v2, :cond_0

    .line 468
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v4, "directories_enterprise"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 471
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 472
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/incallui/CallerInfoAsyncQuery;->DIRECTORY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 473
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {v6, v7}, Lcom/android/incallui/CallerInfoAsyncQuery;->addDirectoryIdsFromCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 475
    invoke-static {v7}, Lcom/google/common/primitives/Longs;->toArray(Ljava/util/Collection;)[J

    move-result-object v2

    return-object v2
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-set1(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 588
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-set2(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 589
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-set0(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;

    .line 590
    iput-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 586
    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 594
    if-eqz p0, :cond_1

    .line 595
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "uriString":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 597
    .local v0, "indexOfLastSlash":I
    if-lez v0, :cond_0

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 600
    :cond_0
    return-object v1

    .line 603
    .end local v0    # "indexOfLastSlash":I
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private static startDefaultDirectoryQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/CallerInfoAsyncQuery;
    .locals 6
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/incallui/CallerInfo;
    .param p3, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 380
    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/calllog/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .local v5, "uri":Landroid/net/Uri;
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 381
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/CallerInfoAsyncQuery;->startQueryInternal(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Landroid/net/Uri;)Lcom/android/incallui/CallerInfoAsyncQuery;

    move-result-object v0

    return-object v0
.end method

.method private static startOtherDirectoriesQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Z
    .locals 12
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/incallui/CallerInfo;
    .param p3, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 434
    invoke-static {p1}, Lcom/android/incallui/CallerInfoAsyncQuery;->getDirectoryIds(Landroid/content/Context;)[J

    move-result-object v8

    .line 435
    .local v8, "directoryIds":[J
    array-length v11, v8

    .line 436
    .local v11, "size":I
    if-nez v11, :cond_0

    .line 437
    const/4 v0, 0x0

    return v0

    .line 441
    :cond_0
    new-instance v10, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;

    invoke-direct {v10, p1, v11, p3}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;-><init>(Landroid/content/Context;ILcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)V

    .line 447
    .local v10, "listenerFactory":Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v11, :cond_1

    .line 448
    aget-wide v6, v8, v9

    .line 449
    .local v6, "directoryId":J
    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v6, v7}, Lcom/android/dialer/calllog/ContactInfoHelper;->getContactInfoLookupUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 454
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v10, v6, v7}, Lcom/android/incallui/CallerInfoAsyncQuery$DirectoryQueryCompleteListenerFactory;->newListener(J)Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-result-object v3

    .local v3, "intermediateListener":Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    .line 455
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/CallerInfoAsyncQuery;->startQueryInternal(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Landroid/net/Uri;)Lcom/android/incallui/CallerInfoAsyncQuery;

    .line 447
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 457
    .end local v3    # "intermediateListener":Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "directoryId":J
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 4
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/incallui/CallerInfo;
    .param p3, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 348
    const-string/jumbo v1, "CallerInfoAsyncQuery"

    const-string/jumbo v2, "##### CallerInfoAsyncQuery startContactProviderQuery()... #####"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v1, "CallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v1, "CallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {p1, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    const-string/jumbo v1, "CallerInfoAsyncQuery"

    const-string/jumbo v2, "Dialer doesn\'t have permission to read contacts."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-interface {p3, p0, p4, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    .line 354
    return-void

    .line 358
    :cond_0
    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/incallui/CallerInfoAsyncQuery$1;-><init>(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)V

    .line 372
    .local v0, "contactsProviderQueryCompleteListener":Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    invoke-static {p0, p1, p2, v0, p4}, Lcom/android/incallui/CallerInfoAsyncQuery;->startDefaultDirectoryQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/CallerInfoAsyncQuery;

    .line 347
    return-void
.end method

.method private static startQueryInternal(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Landroid/net/Uri;)Lcom/android/incallui/CallerInfoAsyncQuery;
    .locals 9
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/incallui/CallerInfo;
    .param p3, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;
    .param p5, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 401
    new-instance v8, Lcom/android/incallui/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/incallui/CallerInfoAsyncQuery;-><init>()V

    .line 402
    .local v8, "c":Lcom/android/incallui/CallerInfoAsyncQuery;
    invoke-direct {v8, p1, p5}, Lcom/android/incallui/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 405
    new-instance v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v5}, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;)V

    .line 406
    .local v2, "cw":Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 407
    iput-object p4, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 408
    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 411
    iget-object v0, p2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/QtiCallUtils;->isLocalEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x4

    iput v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 420
    :goto_0
    invoke-static {p5}, Lcom/android/incallui/CallerInfo;->getDefaultPhoneLookupProjection(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "proejection":[Ljava/lang/String;
    iget-object v0, v8, Lcom/android/incallui/CallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v3, p5

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-object v8

    .line 413
    .end local v4    # "proejection":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    const/4 v0, 0x5

    iput v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_0

    .line 416
    :cond_1
    const/4 v0, 0x1

    iput v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_0
.end method
