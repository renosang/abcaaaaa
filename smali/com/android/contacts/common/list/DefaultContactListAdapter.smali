.class public Lcom/android/contacts/common/list/DefaultContactListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# static fields
.field private static final LAST_TIME_USED_14_DAYS_SEC:J = 0x127500L

.field private static final LAST_TIME_USED_30_DAYS_SEC:J = 0x278d00L

.field private static final LAST_TIME_USED_3_DAYS_SEC:J = 0x3f480L

.field private static final LAST_TIME_USED_7_DAYS_SEC:J = 0x93a80L

.field public static final SNIPPET_END_MATCH:C = ']'

.field public static final SNIPPET_START_MATCH:C = '['

.field private static final STREQUENT_SORT:Ljava/lang/String; = "(CASE WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 604800 THEN 1  WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 1209600 THEN 2  WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 2592000 THEN 3  ELSE 4 END), times_contacted DESC, starred DESC"

.field private static final TIME_SINCE_LAST_USED_SEC:Ljava/lang/String; = "(strftime(\'%s\', \'now\') - last_time_contacted/1000)"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOverSea:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsOverSea:Z

    .line 87
    iput-object p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private appendExtraSelection(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "selection"    # Ljava/lang/StringBuilder;

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getExtraSelection()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "extraSelection":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    const-string/jumbo v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    return-void
.end method

.method private appendSearchExtraSelection(Lcom/oneplus/contacts/common/ICursorLoader;)V
    .locals 1
    .param p1, "loader"    # Lcom/oneplus/contacts/common/ICursorLoader;

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isNeedExtraSelectionAtSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getExtraSelection()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getExtraSelection()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oneplus/contacts/common/ICursorLoader;->setSelection(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private appendSearchParameters(Landroid/net/Uri$Builder;Ljava/lang/String;J)V
    .locals 3
    .param p1, "builder"    # Landroid/net/Uri$Builder;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "directoryId"    # J

    .prologue
    .line 181
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 182
    const-string/jumbo v0, "directory"

    .line 183
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 185
    const-string/jumbo v0, "limit"

    .line 186
    invoke-virtual {p0, p3, p4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    :cond_0
    const-string/jumbo v0, "deferred_snippeting"

    const-string/jumbo v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    return-void
.end method

.method private appendUriQueryParameterWithoutSim(Lcom/oneplus/contacts/common/ICursorLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "loader"    # Lcom/oneplus/contacts/common/ICursorLoader;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 98
    :cond_0
    return-void

    .line 97
    :cond_1
    if-eqz p3, :cond_0

    .line 101
    invoke-interface {p1}, Lcom/oneplus/contacts/common/ICursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 102
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 104
    const-string/jumbo v2, "no_sim"

    const-string/jumbo v3, "true"

    .line 103
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 105
    invoke-interface {p1, v0}, Lcom/oneplus/contacts/common/ICursorLoader;->setUri(Landroid/net/Uri;)V

    .line 96
    :cond_2
    return-void
.end method

.method private configureSelection(Lcom/oneplus/contacts/common/ICursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 6
    .param p1, "loader"    # Lcom/oneplus/contacts/common/ICursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 225
    if-nez p4, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1

    .line 230
    return-void

    .line 233
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v1, "selection":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v3, :pswitch_data_0

    .line 285
    :cond_2
    :goto_0
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendExtraSelection(Ljava/lang/StringBuilder;)V

    .line 286
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/oneplus/contacts/common/ICursorLoader;->setSelection(Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Lcom/oneplus/contacts/common/ICursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 224
    return-void

    .line 248
    :pswitch_1
    const-string/jumbo v3, "starred!=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 252
    :pswitch_2
    const-string/jumbo v3, "has_phone_number=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 256
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSupportDisplaySetting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    const-string/jumbo v3, "in_visible_group=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :pswitch_4
    const-string/jumbo v3, "account_type"

    .line 273
    const-string/jumbo v4, "com.android.sim"

    .line 272
    invoke-direct {p0, p1, v3, v4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendUriQueryParameterWithoutSim(Lcom/oneplus/contacts/common/ICursorLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :pswitch_5
    iget-object v3, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/common/MoreContactUtils;->getSimFilter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "emailFilter":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 280
    const-string/jumbo v3, "account_name"

    .line 279
    invoke-direct {p0, p1, v3, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendUriQueryParameterWithoutSim(Lcom/oneplus/contacts/common/ICursorLoader;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getPhoneNumbersOnlySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSupportFilterForPhoneNumbersOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string/jumbo v0, "has_phone_number=1"

    return-object v0

    .line 358
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected bindAccountInfo(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 330
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isPhotoSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->removeAccountIconView()V

    .line 333
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getAccountIconLoader()Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getAccountIconView()Landroid/widget/ImageView;

    move-result-object v1

    .line 336
    const/16 v2, 0xa

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-virtual {v0, v1, v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->loadContactAccount(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 11
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object v1, p1

    .line 293
    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    .line 295
    .local v1, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setActivated(Z)V

    .line 301
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    const/4 v4, 0x4

    .line 305
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 306
    const/4 v7, 0x6

    const/4 v8, 0x1

    .line 307
    const/16 v9, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    .line 304
    invoke-virtual/range {v0 .. v9}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIIII)V

    .line 314
    :cond_1
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindNameAndViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 315
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 316
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindAccountInfo(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 291
    :goto_2
    return-void

    :cond_2
    move-object v0, v10

    .line 295
    goto :goto_0

    .line 309
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 321
    :cond_4
    invoke-virtual {v1, v10}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public configureLoader(Lcom/oneplus/contacts/common/ICursorLoader;J)V
    .locals 10
    .param p1, "loader"    # Lcom/oneplus/contacts/common/ICursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 111
    instance-of v5, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 112
    check-cast v5, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->shouldIncludeProfile()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    .line 116
    .local v1, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    const/4 v4, 0x0

    .line 117
    .local v4, "sortOrder":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "query":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 120
    const-string/jumbo v3, ""

    .line 122
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 123
    iget-object v5, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/commonbind/experiments/Flags;->getInstance(Landroid/content/Context;)Lcom/android/contacts/commonbind/experiments/Flags;

    move-result-object v2

    .line 124
    .local v2, "flags":Lcom/android/contacts/commonbind/experiments/Flags;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 127
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setUri(Landroid/net/Uri;)V

    .line 128
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setProjection([Ljava/lang/String;)V

    .line 129
    const-string/jumbo v5, "0"

    invoke-interface {p1, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setSelection(Ljava/lang/String;)V

    .line 153
    .end local v4    # "sortOrder":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 154
    iget v5, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 156
    const-string/jumbo v5, "account_type"

    const-string/jumbo v6, "com.android.sim"

    .line 155
    invoke-direct {p0, p1, v5, v6}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendUriQueryParameterWithoutSim(Lcom/oneplus/contacts/common/ICursorLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v2    # "flags":Lcom/android/contacts/commonbind/experiments/Flags;
    .end local v3    # "query":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSortOrder()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 165
    if-nez v4, :cond_7

    .line 166
    const-string/jumbo v4, "sort_key"

    .line 177
    .local v4, "sortOrder":Ljava/lang/String;
    :goto_2
    invoke-interface {p1, v4}, Lcom/oneplus/contacts/common/ICursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 110
    return-void

    .line 134
    .restart local v2    # "flags":Lcom/android/contacts/commonbind/experiments/Flags;
    .restart local v3    # "query":Ljava/lang/String;
    .local v4, "sortOrder":Ljava/lang/String;
    :cond_3
    iget-boolean v5, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsOverSea:Z

    if-eqz v5, :cond_5

    .line 135
    invoke-static {}, Lcom/android/contacts/common/compat/ContactsCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 141
    .local v0, "builder":Landroid/net/Uri$Builder;
    :goto_3
    invoke-direct {p0, v0, v3, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendSearchParameters(Landroid/net/Uri$Builder;Ljava/lang/String;J)V

    .line 142
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setUri(Landroid/net/Uri;)V

    .line 143
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setProjection([Ljava/lang/String;)V

    .line 144
    const-string/jumbo v5, "Search__order_strequent_results_first"

    invoke-virtual {v2, v5, v7}, Lcom/android/contacts/commonbind/experiments/Flags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    const-string/jumbo v4, "(CASE WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 604800 THEN 1  WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 1209600 THEN 2  WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 2592000 THEN 3  ELSE 4 END), times_contacted DESC, starred DESC"

    .line 149
    .end local v4    # "sortOrder":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->appendSearchExtraSelection(Lcom/oneplus/contacts/common/ICursorLoader;)V

    goto :goto_0

    .line 138
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .restart local v4    # "sortOrder":Ljava/lang/String;
    :cond_5
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "oneplus_filter"

    .line 137
    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_3

    .line 159
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "flags":Lcom/android/contacts/commonbind/experiments/Flags;
    .end local v3    # "query":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureUri(Lcom/oneplus/contacts/common/ICursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    .line 160
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setProjection([Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->configureSelection(Lcom/oneplus/contacts/common/ICursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto :goto_1

    .line 168
    .end local v4    # "sortOrder":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sort_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "sortOrder":Ljava/lang/String;
    goto :goto_2

    .line 171
    .end local v4    # "sortOrder":Ljava/lang/String;
    :cond_8
    if-nez v4, :cond_9

    .line 172
    const-string/jumbo v4, "sort_key_alt"

    .restart local v4    # "sortOrder":Ljava/lang/String;
    goto :goto_2

    .line 174
    .end local v4    # "sortOrder":Ljava/lang/String;
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", sort_key_alt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "sortOrder":Ljava/lang/String;
    goto :goto_2
.end method

.method protected configureUri(Lcom/oneplus/contacts/common/ICursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 10
    .param p1, "loader"    # Lcom/oneplus/contacts/common/ICursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, -0x6

    .line 192
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 193
    .local v2, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v3, v6, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "lookupKey":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 196
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 202
    .end local v1    # "lookupKey":Ljava/lang/String;
    :cond_0
    :goto_0
    cmp-long v3, p2, v8

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 207
    :cond_1
    if-eqz p4, :cond_3

    .line 208
    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_3

    .line 209
    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-eq v3, v6, :cond_3

    .line 210
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 212
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v3, "directory"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isSupportDisplaySetting()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    iget v3, p4, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_2

    .line 215
    invoke-virtual {p4, v0}, Lcom/android/contacts/common/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 217
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 220
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_3
    invoke-interface {p1, v2}, Lcom/oneplus/contacts/common/ICursorLoader;->setUri(Landroid/net/Uri;)V

    .line 191
    return-void

    .line 198
    .restart local v1    # "lookupKey":Ljava/lang/String;
    :cond_4
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getSelectedContactId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method protected getExtraSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getPhoneNumbersOnlySelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 372
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "only_phones"

    .line 373
    const/4 v2, 0x0

    .line 372
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method protected isNeedExtraSelectionAtSearchMode()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method protected isSupportFilterForPhoneNumbersOnly()Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public setIsOverSea(Z)V
    .locals 0
    .param p1, "isOverSea"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->mIsOverSea:Z

    .line 90
    return-void
.end method
