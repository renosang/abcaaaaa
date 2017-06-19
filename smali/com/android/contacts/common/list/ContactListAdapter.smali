.class public abstract Lcom/android/contacts/common/list/ContactListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;
    }
.end annotation


# instance fields
.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 134
    const v0, 0x7f0d0129

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 131
    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string/jumbo v2, "true"

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bindNameAndViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 293
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 255
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->isPhotoSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    .line 257
    return-void

    .line 261
    :cond_0
    const-wide/16 v4, 0x0

    .line 262
    .local v4, "photoId":J
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 269
    :cond_1
    const/4 v2, 0x1

    .line 270
    const/4 v3, 0x6

    .line 271
    const/16 v6, 0x9

    .line 268
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/contacts/common/list/ContactListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;III)Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v8

    .line 274
    .local v8, "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPhotoLoader()Lcom/oneplus/contacts/common/ContactPhotoManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getCircularPhotos()Z

    move-result v7

    .line 275
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 254
    :goto_0
    return-void

    .line 278
    :cond_2
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 279
    .local v15, "photoUriString":Ljava/lang/String;
    if-nez v15, :cond_3

    const/4 v11, 0x0

    .line 288
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPhotoLoader()Lcom/oneplus/contacts/common/ContactPhotoManager;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v10

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getCircularPhotos()Z

    move-result v13

    .line 288
    const/4 v12, 0x0

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/oneplus/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    .line 279
    :cond_3
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .local v11, "photoUri":Landroid/net/Uri;
    goto :goto_1
.end method

.method protected bindPresenceAndStatusMessage(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 302
    const/4 v0, 0x2

    .line 303
    const/4 v1, 0x3

    .line 302
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->showPresenceAndStatusMessage(Landroid/database/Cursor;II)V

    .line 301
    return-void
.end method

.method protected bindSearchSnippet(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 307
    const/16 v0, 0xd

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showSnippet(Landroid/database/Cursor;I)V

    .line 306
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "position"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    .line 248
    .local v0, "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    iget-object v1, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 244
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    .line 412
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 415
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->setProfileExists(Z)V

    .line 411
    :cond_0
    return-void

    .line 416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllVisibleContactIds()Ljava/util/TreeSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 366
    .local v0, "contactIds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 367
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionCount()I

    move-result v4

    .line 368
    .local v4, "partitionCount":I
    const/4 v2, 0x0

    .end local v1    # "cursor":Landroid/database/Cursor;
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 369
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 370
    .local v3, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 368
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 374
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 375
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    :goto_1
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 380
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_2
    return-object v0
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 183
    .local v1, "partitionIndex":I
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 184
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 188
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 189
    .local v0, "contactId":J
    const/4 v6, 0x6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 191
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 192
    .local v2, "directoryId":J
    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 193
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 194
    const-string/jumbo v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 193
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 196
    :cond_0
    return-object v5
.end method

.method public getFirstContactUri()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionCount()I

    move-result v3

    .line 389
    .local v3, "partitionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 390
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 391
    .local v2, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 389
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 396
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 400
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 404
    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 407
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_2
    return-object v5
.end method

.method public getPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-object v0
.end method

.method protected final getProjection(Z)[Ljava/lang/String;
    .locals 2
    .param p1, "forSearch"    # Z

    .prologue
    const/4 v1, 0x1

    .line 424
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    .line 425
    .local v0, "sortOrder":I
    if-eqz p1, :cond_1

    .line 426
    if-ne v0, v1, :cond_0

    .line 427
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->-get3()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 429
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->-get2()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 432
    :cond_1
    if-ne v0, v1, :cond_2

    .line 433
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->-get1()[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 435
    :cond_2
    invoke-static {}, Lcom/android/contacts/common/list/ContactListAdapter$ContactQuery;->-get0()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedContactDirectoryId()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    return-wide v0
.end method

.method public getSelectedContactId()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    return-wide v0
.end method

.method public getSelectedContactLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedContactPosition()I
    .locals 14

    .prologue
    .line 311
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-nez v10, :cond_0

    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 312
    const/4 v10, -0x1

    return v10

    .line 315
    :cond_0
    const/4 v2, 0x0

    .line 316
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 317
    .local v8, "partitionIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionCount()I

    move-result v7

    .line 318
    .local v7, "partitionCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_1

    .line 319
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 320
    .local v6, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 321
    move v8, v3

    .line 325
    .end local v6    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_1
    const/4 v10, -0x1

    if-ne v8, v10, :cond_3

    .line 326
    const/4 v10, -0x1

    return v10

    .line 318
    .restart local v6    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v6    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    .line 330
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_4

    .line 331
    const/4 v10, -0x1

    return v10

    .line 334
    :cond_4
    const/4 v10, -0x1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 335
    const/4 v5, -0x1

    .line 336
    .local v5, "offset":I
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 337
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 338
    const/4 v10, 0x6

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "lookupKey":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 340
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 353
    .end local v4    # "lookupKey":Ljava/lang/String;
    :cond_6
    :goto_1
    const/4 v10, -0x1

    if-ne v5, v10, :cond_9

    .line 354
    const/4 v10, -0x1

    return v10

    .line 344
    :cond_7
    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_8

    .line 345
    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 346
    :cond_8
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 347
    .local v0, "contactId":J
    iget-wide v10, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    cmp-long v10, v0, v10

    if-nez v10, :cond_5

    .line 348
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    goto :goto_1

    .line 357
    .end local v0    # "contactId":J
    :cond_9
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->getPositionForPartition(I)I

    move-result v10

    add-int v9, v10, v5

    .line 358
    .local v9, "position":I
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->hasHeader(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 359
    add-int/lit8 v9, v9, 0x1

    .line 361
    :cond_a
    return v9
.end method

.method public getUnknownNameText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasValidSelection()Z
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnterpriseContact(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 201
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 202
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 203
    .local v0, "contactId":J
    invoke-static {v0, v1}, Lcom/android/contacts/common/compat/ContactsCompat;->isEnterpriseContactId(J)Z

    move-result v3

    return v3

    .line 205
    .end local v0    # "contactId":J
    :cond_0
    return v3
.end method

.method public isSelectedContact(ILandroid/database/Cursor;)Z
    .locals 10
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 216
    .local v0, "directoryId":J
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactDirectoryId()J

    move-result-wide v6

    cmp-long v3, v6, v0

    if-eqz v3, :cond_0

    .line 217
    return v5

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "lookupKey":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 221
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    return v4

    .line 225
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_3

    const-wide/16 v6, 0x1

    cmp-long v3, v0, v6

    if-eqz v3, :cond_3

    .line 226
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactId()J

    move-result-wide v6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    move v3, v4

    .line 225
    :goto_0
    return v3

    :cond_2
    move v3, v5

    .line 226
    goto :goto_0

    :cond_3
    move v3, v5

    .line 225
    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 232
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    .line 233
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isAdjustSelectionBoundsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListAdapter;->isSelectionVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 237
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 240
    :cond_0
    return-object v0
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1, "photoPosition"    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 137
    return-void
.end method

.method public setSelectedContact(JLjava/lang/String;J)V
    .locals 0
    .param p1, "selectedDirectoryId"    # J
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "contactId"    # J

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactDirectoryId:J

    .line 163
    iput-object p3, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 164
    iput-wide p4, p0, Lcom/android/contacts/common/list/ContactListAdapter;->mSelectedContactId:J

    .line 161
    return-void
.end method
