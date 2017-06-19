.class public Lcom/android/dialer/dialpad/SmartDialCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SmartDialCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

.field private mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 40
    const-class v0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->DEBUG:Z

    .line 54
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private releaseResources(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public configureQuery(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    .line 61
    return-void
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 118
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 123
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 125
    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-nez v1, :cond_1

    .line 126
    new-instance v1, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v1, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 127
    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 128
    sget-object v2, Lcom/android/dialer/database/DialerDatabaseHelper;->SMART_DIAL_UPDATED_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    const/4 v4, 0x1

    .line 127
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 137
    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 138
    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 114
    :cond_3
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 114
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 81
    iget-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 82
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v6

    .line 87
    :cond_0
    iget-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {v6}, Lcom/android/dialerbind/DatabaseHelperManager;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object v4

    .line 88
    .local v4, "dialerDatabaseHelper":Lcom/android/dialer/database/DialerDatabaseHelper;
    iget-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    .line 89
    iget-object v7, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    .line 88
    invoke-virtual {v4, v6, v7}, Lcom/android/dialer/database/DialerDatabaseHelper;->getLooseMatches(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialNameMatcher;)Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    .local v0, "allMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;>;"
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 97
    .local v3, "cursor":Landroid/database/MatrixCursor;
    sget-object v6, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    array-length v6, v6

    new-array v5, v6, [Ljava/lang/Object;

    .line 98
    .local v5, "row":[Ljava/lang/Object;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "contact$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    .line 99
    .local v1, "contact":Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;
    iget-wide v6, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 100
    iget-object v6, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 101
    iget-wide v6, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 102
    iget-object v6, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    const/4 v7, 0x5

    aput-object v6, v5, v7

    .line 103
    iget-wide v6, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v5, v7

    .line 104
    iget-object v6, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    const/4 v7, 0x7

    aput-object v6, v5, v7

    .line 105
    iget v6, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->carrierPresence:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xa

    aput-object v6, v5, v7

    .line 108
    invoke-virtual {v3, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    .end local v1    # "contact":Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;
    :cond_1
    return-object v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    iput-object v2, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 178
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cursor"    # Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "cursor":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->onStopLoading()V

    .line 165
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 167
    iput-object v2, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    .line 173
    iput-object v2, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 161
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->forceLoad()V

    .line 143
    :cond_1
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->cancelLoad()Z

    .line 155
    return-void
.end method
