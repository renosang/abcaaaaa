.class public abstract Lcom/android/contacts/common/list/ContactEntryListAdapter;
.super Lcom/android/contacts/common/list/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# static fields
.field public static final LOCAL_INVISIBLE_DIRECTORY_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "ContactEntryListAdapter"


# instance fields
.field private mAccountIconLoader:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

.field private mAdjustSelectionBoundsEnabled:Z

.field private mCircularPhotos:Z

.field private mDarkTheme:Z

.field private mDefaultFilterHeaderText:Ljava/lang/CharSequence;

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFragmentRootView:Landroid/view/View;

.field private mIncludeProfile:Z

.field private mPhotoLoader:Lcom/oneplus/contacts/common/ContactPhotoManager;

.field private mProfileExists:Z

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mSupportDisplaySetting:Z

.field private mUpperCaseQueryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    .line 69
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    .line 95
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 97
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSupportDisplaySetting:Z

    .line 110
    const v0, 0x7f0d0123

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDefaultFilterHeaderText(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartitions()V

    .line 108
    return-void
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 529
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 530
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 531
    return-void

    .line 534
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 535
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 536
    const-string/jumbo v6, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 535
    if-eqz v6, :cond_4

    .line 538
    const-string/jumbo v6, "android.provider.extra.ADDRESS_BOOK_INDEX_TITLES"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 540
    .local v5, "sections":[Ljava/lang/String;
    const-string/jumbo v6, "android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS"

    .line 539
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 542
    .local v3, "counts":[I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getExtraStartingSection()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 544
    array-length v6, v5

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 545
    .local v1, "allSections":[Ljava/lang/String;
    array-length v6, v3

    add-int/lit8 v6, v6, 0x1

    new-array v0, v6, [I

    .line 546
    .local v0, "allCounts":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_2

    .line 547
    add-int/lit8 v6, v4, 0x1

    aget-object v7, v5, v4

    aput-object v7, v1, v6

    .line 548
    add-int/lit8 v6, v4, 0x1

    aget v7, v3, v4

    aput v7, v0, v6

    .line 546
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 550
    :cond_2
    const/4 v6, 0x1

    aput v6, v0, v8

    .line 551
    const-string/jumbo v6, ""

    aput-object v6, v1, v8

    .line 552
    new-instance v6, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v6, v1, v0}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 528
    .end local v0    # "allCounts":[I
    .end local v1    # "allSections":[Ljava/lang/String;
    .end local v3    # "counts":[I
    .end local v4    # "i":I
    .end local v5    # "sections":[Ljava/lang/String;
    :goto_1
    return-void

    .line 554
    .restart local v3    # "counts":[I
    .restart local v5    # "sections":[Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    invoke-direct {v6, v5, v3}, Lcom/android/contacts/common/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_1

    .line 557
    .end local v3    # "counts":[I
    .end local v5    # "sections":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_1
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 156
    return-void
.end method

.method public areAllPartitionsEmpty()Z
    .locals 3

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 615
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 616
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 617
    const/4 v2, 0x0

    return v2

    .line 615
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 670
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    .line 671
    .local v8, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v10, v8, Lcom/android/contacts/common/list/DirectoryPartition;

    if-nez v10, :cond_0

    .line 672
    return-void

    :cond_0
    move-object v3, v8

    .line 675
    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 676
    .local v3, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 677
    .local v0, "directoryId":J
    const v10, 0x7f0e015a

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 678
    .local v7, "labelTextView":Landroid/widget/TextView;
    const v10, 0x7f0e015b

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 679
    .local v5, "displayNameTextView":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    invoke-static {v0, v1}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v10

    if-nez v10, :cond_1

    .line 681
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 691
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v10, 0x1

    if-ne p2, v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 692
    const/4 v6, 0x0

    .line 694
    .local v6, "headerPaddingTop":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v11

    .line 695
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    .line 694
    invoke-virtual {p1, v10, v6, v11, v12}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 669
    return-void

    .line 683
    .end local v6    # "headerPaddingTop":I
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "directoryName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v4, v2

    .line 687
    .local v4, "displayName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 686
    .end local v4    # "displayName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 692
    .end local v2    # "directoryName":Ljava/lang/String;
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_3
    const v10, 0x7f0b0198

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .restart local v6    # "headerPaddingTop":I
    goto :goto_1
.end method

.method protected bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIIII)V
    .locals 18
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "photoIdColumn"    # I
    .param p5, "photoUriColumn"    # I
    .param p6, "contactIdColumn"    # I
    .param p7, "lookUpKeyColumn"    # I
    .param p8, "displayNameColumn"    # I
    .param p9, "phonebookLabelColumn"    # I

    .prologue
    .line 775
    const-wide/16 v8, 0x0

    .line 776
    .local v8, "photoId":J
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 777
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 780
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/common/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v7

    .line 782
    .local v7, "quickContact":Landroid/widget/QuickContactBadge;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v6

    .line 781
    invoke-virtual {v7, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 783
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 787
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v6}, Landroid/widget/QuickContactBadge;->setPrioritizedMimeType(Ljava/lang/String;)V

    .line 790
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_2

    const/4 v6, -0x1

    move/from16 v0, p5

    if-ne v0, v6, :cond_3

    .line 791
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/oneplus/contacts/common/ContactPhotoManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    .line 792
    const/4 v12, 0x0

    .line 791
    invoke-virtual/range {v6 .. v12}, Lcom/oneplus/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 774
    :goto_0
    return-void

    .line 794
    :cond_3
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 795
    .local v17, "photoUriString":Ljava/lang/String;
    if-nez v17, :cond_5

    const/4 v12, 0x0

    .line 796
    .local v12, "photoUri":Landroid/net/Uri;
    :goto_1
    const/16 v16, 0x0

    .line 797
    .local v16, "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    if-nez v12, :cond_4

    .line 802
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    move/from16 v3, p7

    move/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;III)Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v16

    .line 806
    .end local v16    # "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/oneplus/contacts/common/ContactPhotoManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    const/4 v13, -0x1

    move-object v11, v7

    invoke-virtual/range {v10 .. v16}, Lcom/oneplus/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    .line 795
    .end local v12    # "photoUri":Landroid/net/Uri;
    :cond_5
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    move-object v0, p1

    .line 137
    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    .line 138
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 139
    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->bindWorkProfileIcon(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 136
    return-void
.end method

.method protected bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "idColumn"    # I

    .prologue
    .line 823
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 824
    .local v0, "contactId":J
    const-wide/32 v2, 0x7fffffff

    rem-long v2, v0, v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setId(I)V

    .line 820
    return-void
.end method

.method protected bindWorkProfileIcon(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 8
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionId"    # I

    .prologue
    .line 659
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 660
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v6, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v6, :cond_0

    move-object v2, v3

    .line 661
    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 662
    .local v2, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 663
    .local v0, "directoryId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/contacts/common/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v4

    .line 664
    .local v4, "userType":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p1, v6}, Lcom/android/contacts/common/list/ContactListItemView;->setWorkProfileIconEnabled(Z)V

    .line 658
    .end local v0    # "directoryId":J
    .end local v2    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v4    # "userType":J
    :cond_0
    return-void

    .line 664
    .restart local v0    # "directoryId":J
    .restart local v2    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    .restart local v4    # "userType":J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 495
    return-void

    .line 498
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 499
    .local v0, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_1

    .line 500
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 503
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/oneplus/contacts/common/ContactPhotoManager;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/oneplus/contacts/common/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/oneplus/contacts/common/ContactPhotoManager;->refreshCache()V

    .line 507
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 509
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 510
    invoke-direct {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    .line 514
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/oneplus/contacts/common/ContactPhotoManager;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/oneplus/contacts/common/ContactPhotoManager;->cancelPendingRequests(Landroid/view/View;)V

    .line 515
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAccountIconLoader:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->cancelPendingRequests(Landroid/view/View;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 517
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAccountIconLoader:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    invoke-virtual {v1}, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->cleanCache()V

    .line 492
    :cond_4
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 521
    return-void
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 17
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 430
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-nez v14, :cond_0

    .line 433
    const-string/jumbo v14, "ContactEntryListAdapter"

    const-string/jumbo v15, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    .line 434
    new-instance v16, Ljava/lang/RuntimeException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/RuntimeException;-><init>()V

    .line 433
    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    return-void

    .line 437
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 439
    .local v3, "directoryIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string/jumbo v14, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 440
    .local v7, "idColumnIndex":I
    const-string/jumbo v14, "directoryType"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 441
    .local v4, "directoryTypeColumnIndex":I
    const-string/jumbo v14, "displayName"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 442
    .local v5, "displayNameColumnIndex":I
    const-string/jumbo v14, "photoSupport"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 446
    .local v13, "photoSupportColumnIndex":I
    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 447
    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 448
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 449
    .local v8, "id":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    .line 451
    new-instance v11, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v11, v14, v15}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    .line 452
    .local v11, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v11, v8, v9}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 453
    invoke-static {v8, v9}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 454
    invoke-static {v8, v9}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0d0122

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    .line 466
    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/contacts/common/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 469
    .local v12, "photoSupport":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_5

    .line 470
    const/4 v14, 0x3

    if-ne v12, v14, :cond_6

    const/4 v14, 0x1

    .line 469
    :goto_2
    invoke-virtual {v11, v14}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 471
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_0

    .line 457
    .end local v12    # "photoSupport":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0d0121

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 460
    :cond_3
    invoke-static {v8, v9}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 461
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0d012e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 469
    .restart local v12    # "photoSupport":I
    :cond_5
    const/4 v14, 0x1

    goto :goto_2

    .line 470
    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .line 476
    .end local v8    # "id":J
    .end local v11    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v12    # "photoSupport":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    .line 477
    .local v2, "count":I
    move v6, v2

    .local v6, "i":I
    :cond_8
    :goto_3
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_9

    .line 478
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v10

    .line 479
    .local v10, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v14, v10, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v14, :cond_8

    .line 480
    check-cast v10, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v10    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v10}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v8

    .line 481
    .restart local v8    # "id":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 482
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_3

    .line 487
    .end local v8    # "id":J
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->invalidate()V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 429
    return-void
.end method

.method public clearPartitions()V
    .locals 5

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 246
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 247
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 248
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 249
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 250
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 246
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->clearPartitions()V

    .line 244
    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 627
    const/4 v1, -0x1

    .line 628
    .local v1, "defaultPartitionIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 629
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 630
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 631
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_2

    .line 632
    check-cast v3, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 633
    move v1, v2

    .line 637
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 638
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    .line 639
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 626
    :cond_1
    return-void

    .line 629
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract configureLoader(Lcom/oneplus/contacts/common/ICursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 161
    new-instance v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-direct {v0, v4, v4}, Lcom/android/contacts/common/list/DirectoryPartition;-><init>(ZZ)V

    .line 162
    .local v0, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 163
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d011f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 165
    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->setLabel(Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 147
    new-instance v0, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V

    return-object v0
.end method

.method protected getAccountIconLoader()Lcom/oneplus/contacts/common/list/ContactAccountIconManager;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAccountIconLoader:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    return-object v0
.end method

.method public getCircularPhotos()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    return v0
.end method

.method public abstract getContactDisplayName(I)Ljava/lang/String;
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "contactIdColumn"    # I
    .param p4, "lookUpKeyColumn"    # I

    .prologue
    .line 830
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 831
    .local v0, "contactId":J
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 832
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 833
    .local v2, "directoryId":J
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 834
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 835
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 836
    const-string/jumbo v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 835
    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 838
    :cond_0
    return-object v5
.end method

.method public getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "displayNameColumn"    # I
    .param p3, "lookupKeyColumn"    # I

    .prologue
    .line 853
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "displayName":Ljava/lang/String;
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "lookupKey":Ljava/lang/String;
    new-instance v2, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    iget-boolean v3, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    invoke-direct {v2, v0, v1, v3}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public getDefaultImageRequestFromCursor(Landroid/database/Cursor;III)Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "displayNameColumn"    # I
    .param p3, "lookupKeyColumn"    # I
    .param p4, "phonebookLabel"    # I

    .prologue
    .line 862
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;II)Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v0

    .line 864
    .local v0, "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->phonebookLabel:Ljava/lang/String;

    .line 865
    return-object v0
.end method

.method protected getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 207
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 208
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 209
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 210
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 211
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 212
    return-object v1

    .line 207
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I
    .locals 2
    .param p1, "directoryPartition"    # Lcom/android/contacts/common/list/DirectoryPartition;

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/android/contacts/common/list/DirectoryPartition;->getResultLimit()I

    move-result v0

    .line 296
    .local v0, "limit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .end local v0    # "limit":I
    :cond_0
    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method protected getExtraStartingSection()Z
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 574
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/IndexerListAdapter;->getItemViewType(II)I

    move-result v1

    .line 575
    .local v1, "type":I
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isUserProfile(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    .line 575
    if-eqz v2, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 578
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    .line 579
    .local v0, "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    iget-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_0

    .end local v1    # "type":I
    :goto_0
    return v1

    .restart local v1    # "type":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 581
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :cond_1
    return v1
.end method

.method protected getPartitionByDirectoryId(J)I
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 194
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 196
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 197
    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 198
    return v1

    .line 194
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method protected getPhotoLoader()Lcom/oneplus/contacts/common/ContactPhotoManager;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/oneplus/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method public getQuantityText(III)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "zeroResourceId"    # I
    .param p3, "pluralResourceId"    # I

    .prologue
    const/4 v3, 0x0

    .line 734
    if-nez p1, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 737
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method protected getResultCount(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 702
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getUpperCaseQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x1

    return v0
.end method

.method public isAdjustSelectionBoundsEnabled()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAdjustSelectionBoundsEnabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v0, :cond_0

    .line 593
    const/4 v0, 0x0

    return v0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 597
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEmptyListEnabled()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    return v0
.end method

.method public isLoading()Z
    .locals 4

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 603
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 604
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 605
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 606
    check-cast v2, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v3

    .line 605
    if-eqz v3, :cond_0

    .line 607
    const/4 v3, 0x1

    return v3

    .line 603
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isPhotoSupported(I)Z
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 744
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 745
    .local v0, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_0

    .line 746
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    return v1

    .line 748
    .restart local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method public isSupportDisplaySetting()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSupportDisplaySetting:Z

    return v0
.end method

.method protected isUserProfile(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 711
    const/4 v1, 0x0

    .line 712
    .local v1, "isUserProfile":Z
    if-nez p1, :cond_1

    .line 713
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 714
    .local v3, "partition":I
    if-ltz v3, :cond_1

    .line 717
    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 718
    .local v2, "offset":I
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 719
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 720
    const-string/jumbo v5, "is_user_profile"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 721
    .local v4, "profileColumnIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 722
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    .line 725
    :cond_0
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 729
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "offset":I
    .end local v3    # "partition":I
    .end local v4    # "profileColumnIndex":I
    :cond_1
    return v1

    .line 722
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "offset":I
    .restart local v3    # "partition":I
    .restart local v4    # "profileColumnIndex":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 646
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 647
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040060

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 648
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 653
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 655
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 127
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    return-object v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 129
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setIsSectionHeaderEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isAdjustSelectionBoundsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setAdjustSelectionBoundsEnabled(Z)V

    .line 132
    return-object v0
.end method

.method public onDataReload()V
    .locals 6

    .prologue
    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, "notify":Z
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 228
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v4

    .line 230
    .local v4, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v5, v4, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 231
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 232
    .local v1, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v5

    if-nez v5, :cond_0

    .line 233
    const/4 v3, 0x1

    .line 235
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 228
    .end local v1    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v4    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_2
    if-eqz v3, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 225
    :cond_3
    return-void
.end method

.method public removeDirectoriesAfterDefault()V
    .locals 8

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    .line 181
    .local v2, "partitionCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 183
    .local v1, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v1, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v3, :cond_1

    .line 184
    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .end local v1    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 179
    :cond_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removePartition(I)V

    .line 181
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setAccountIconLoader(Lcom/oneplus/contacts/common/list/ContactAccountIconManager;)V
    .locals 0
    .param p1, "accountLoader"    # Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAccountIconLoader:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    .line 329
    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 383
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mAdjustSelectionBoundsEnabled:Z

    .line 382
    return-void
.end method

.method public setCircularPhotos(Z)V
    .locals 0
    .param p1, "circularPhotos"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mCircularPhotos:Z

    .line 350
    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayOrder:I

    .line 307
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 410
    return-void
.end method

.method protected setDefaultFilterHeaderText(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    .line 122
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 299
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    .line 286
    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0
    .param p1, "displayPhotos"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    .line 342
    return-void
.end method

.method public setEmptyListEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 358
    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    .line 758
    return-void
.end method

.method protected setFragmentRootView(Landroid/view/View;)V
    .locals 0
    .param p1, "fragmentRootView"    # Landroid/view/View;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mFragmentRootView:Landroid/view/View;

    .line 118
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1, "includeProfile"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mIncludeProfile:Z

    .line 390
    return-void
.end method

.method public setPhotoLoader(Lcom/oneplus/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/oneplus/contacts/common/ContactPhotoManager;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/oneplus/contacts/common/ContactPhotoManager;

    .line 319
    return-void
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "pinnedHeaderView"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 153
    check-cast p1, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;

    .end local p1    # "pinnedHeaderView":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/oneplus/contacts/common/list/OneplusContactListPinnedHeaderView;->setSectionHeaderTitle(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setProfileExists(Z)V
    .locals 3
    .param p1, "exists"    # Z

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mProfileExists:Z

    .line 397
    if-eqz p1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    .line 399
    .local v0, "indexer":Landroid/widget/SectionIndexer;
    if-eqz v0, :cond_0

    .line 400
    check-cast v0, Lcom/android/contacts/common/list/ContactsSectionIndexer;

    .line 401
    .end local v0    # "indexer":Landroid/widget/SectionIndexer;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0124

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactsSectionIndexer;->setProfileHeader(Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    .line 268
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/android/contacts/common/util/SearchUtil;->cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mUpperCaseQueryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "quickContactEnabled"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    .line 374
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSearchMode:Z

    .line 260
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSelectionVisible:Z

    .line 366
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSortOrder:I

    .line 315
    return-void
.end method

.method public setSupportDisplaySetting(Z)V
    .locals 0
    .param p1, "supportDisplaySetting"    # Z

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mSupportDisplaySetting:Z

    .line 420
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return v0
.end method
