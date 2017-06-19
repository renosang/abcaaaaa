.class public Lcom/android/contacts/common/list/ProfileAndContactsLoader;
.super Lcom/oneplus/contacts/common/AndroidCursorLoader;
.source "ProfileAndContactsLoader.java"


# instance fields
.field private mExtraProjection:[Ljava/lang/String;

.field private mExtraSelection:Ljava/lang/String;

.field private mExtraSelectionArgs:[Ljava/lang/String;

.field private mExtraUri:Landroid/net/Uri;

.field private mLoadProfile:Z

.field private mMergeExtraContactsAfterPrimary:Z

.field private mProjection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/contacts/common/AndroidCursorLoader;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private canLoadExtraContacts()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraProjection:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadExtraContacts()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    .line 144
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private loadProfile()Landroid/database/MatrixCursor;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 126
    return-object v3

    .line 129
    :cond_0
    :try_start_0
    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 130
    .local v8, "matrix":Landroid/database/MatrixCursor;
    iget-object v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    array-length v0, v0

    new-array v9, v0, [Ljava/lang/Object;

    .line 131
    .local v9, "row":[Ljava/lang/Object;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v9

    if-ge v7, v0, :cond_1

    .line 133
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 132
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v7    # "i":I
    .end local v8    # "matrix":Landroid/database/MatrixCursor;
    .end local v9    # "row":[Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 138
    throw v0

    .line 139
    .restart local v8    # "matrix":Landroid/database/MatrixCursor;
    .restart local v9    # "row":[Ljava/lang/Object;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 137
    return-object v8
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 87
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 88
    .local v2, "cursors":Ljava/util/List;, "Ljava/util/List<Landroid/database/Cursor;>;"
    iget-boolean v4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mLoadProfile:Z

    if-eqz v4, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadProfile()Landroid/database/MatrixCursor;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->canLoadExtraContacts()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mMergeExtraContactsAfterPrimary:Z

    if-eqz v4, :cond_3

    .line 96
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 98
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-super {p0}, Lcom/oneplus/contacts/common/AndroidCursorLoader;->loadInBackground()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    .end local v1    # "cursor":Landroid/database/Cursor;
    :goto_1
    move-object v0, v1

    .line 103
    .local v0, "contactsCursor":Landroid/database/Cursor;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->canLoadExtraContacts()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mMergeExtraContactsAfterPrimary:Z

    if-eqz v4, :cond_2

    .line 105
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadExtraContacts()Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    new-instance v5, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/database/Cursor;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/database/Cursor;

    invoke-direct {v5, p0, v4, v0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader$1;-><init>(Lcom/android/contacts/common/list/ProfileAndContactsLoader;[Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-object v5

    .line 92
    .end local v0    # "contactsCursor":Landroid/database/Cursor;
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->loadExtraContacts()Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/RuntimeException;
    goto :goto_1
.end method

.method public setLoadExtraContactsFirst(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraUri:Landroid/net/Uri;

    .line 66
    iput-object p2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraProjection:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mMergeExtraContactsAfterPrimary:Z

    .line 64
    return-void
.end method

.method public setLoadExtraContactsLast(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraUri:Landroid/net/Uri;

    .line 74
    iput-object p2, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraProjection:[Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraSelection:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mExtraSelectionArgs:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mMergeExtraContactsAfterPrimary:Z

    .line 72
    return-void
.end method

.method public setLoadProfile(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mLoadProfile:Z

    .line 54
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/oneplus/contacts/common/AndroidCursorLoader;->setProjection([Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->mProjection:[Ljava/lang/String;

    .line 58
    return-void
.end method
