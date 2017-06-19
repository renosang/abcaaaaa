.class public Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneFavoritesTileAdapter.java"

# interfaces
.implements Lcom/android/dialer/list/OnDragDropListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;,
        Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAwaitingRemove:Z

.field protected mContactEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mContactEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mContactIdIndex:I

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

.field private mDelayCursorUpdates:Z

.field private mDragEnteredEntryIndex:I

.field private mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

.field private mDraggedEntryIndex:I

.field private mDropEntryIndex:I

.field protected mIdIndex:I

.field private mInDragging:Z

.field private mIsDefaultNumberIndex:I

.field private mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field protected mLookupIndex:I

.field protected mNameAlternativeIndex:I

.field protected mNamePrimaryIndex:I

.field protected mNumFrequents:I

.field protected mNumStarred:I

.field private mPhoneNumberIndex:I

.field private mPhoneNumberLabelIndex:I

.field private mPhoneNumberTypeIndex:I

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected mPhotoUriIndex:I

.field protected mPinnedIndex:I

.field protected mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mStarredIndex:I

.field protected mStatusIndex:I


# direct methods
.method static synthetic -get0(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)Lcom/android/contacts/common/preference/ContactsPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->TAG:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/common/list/ContactTileView$Listener;
    .param p3, "dataSetChangedListener"    # Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    .line 78
    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    .line 80
    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    .line 82
    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 84
    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 86
    iput-boolean v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDelayCursorUpdates:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    .line 124
    new-instance v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$1;-><init>(Lcom/android/dialer/list/PhoneFavoritesTileAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntryComparator:Ljava/util/Comparator;

    .line 149
    iput-object p3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    .line 150
    iput-object p2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 151
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 153
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 154
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->bindColumnIndices()V

    .line 148
    return-void
.end method

.method private markDropArea(I)V
    .locals 4
    .param p1, "itemIndex"    # I

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v1

    .line 466
    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    .line 470
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 471
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 472
    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 473
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    sget-object v3, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 474
    sget-object v1, Lcom/android/contacts/common/list/ContactEntry;->BLANK_ENTRY:Lcom/android/contacts/common/list/ContactEntry;

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    iget-wide v2, v2, Lcom/android/contacts/common/list/ContactEntry;->id:J

    iput-wide v2, v1, Lcom/android/contacts/common/list/ContactEntry;->id:J

    .line 475
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-interface {v1, v2}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->onDataSetChangedForAnimation([J)V

    .line 476
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    .line 465
    .end local v0    # "oldIndex":I
    :cond_0
    return-void
.end method

.method private saveCursorToCache(Landroid/database/Cursor;)V
    .locals 20
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 248
    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 250
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 253
    .local v4, "duplicates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 255
    .local v3, "counter":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 262
    .local v17, "starred":I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    const/16 v18, 0x14

    move/from16 v0, v18

    if-lt v3, v0, :cond_2

    .line 317
    .end local v17    # "starred":I
    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->arrangeContactsByPinnedPosition(Ljava/util/ArrayList;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    .line 245
    return-void

    .line 265
    .restart local v17    # "starred":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactIdIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 268
    .local v6, "id":J
    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/list/ContactEntry;

    .line 269
    .local v5, "existing":Lcom/android/contacts/common/list/ContactEntry;
    if-eqz v5, :cond_3

    .line 272
    iget-boolean v0, v5, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 273
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    .line 274
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 279
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoUriIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 280
    .local v15, "photoUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mLookupIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, "lookupKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPinnedIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 282
    .local v16, "pinned":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNamePrimaryIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 283
    .local v11, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNameAlternativeIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 284
    .local v12, "nameAlternative":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-lez v18, :cond_4

    const/4 v9, 0x1

    .line 285
    .local v9, "isStarred":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIsDefaultNumberIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-lez v18, :cond_5

    const/4 v8, 0x1

    .line 287
    .local v8, "isDefaultNumber":Z
    :goto_2
    new-instance v2, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v2}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    .line 289
    .local v2, "contact":Lcom/android/contacts/common/list/ContactEntry;
    iput-wide v6, v2, Lcom/android/contacts/common/list/ContactEntry;->id:J

    .line 290
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    .end local v11    # "name":Ljava/lang/String;
    :goto_3
    iput-object v11, v2, Lcom/android/contacts/common/list/ContactEntry;->namePrimary:Ljava/lang/String;

    .line 292
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .end local v12    # "nameAlternative":Ljava/lang/String;
    :goto_4
    iput-object v12, v2, Lcom/android/contacts/common/list/ContactEntry;->nameAlternative:Ljava/lang/String;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lcom/android/contacts/common/list/ContactEntry;->nameDisplayOrder:I

    .line 295
    if-eqz v15, :cond_8

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    :goto_5
    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    .line 296
    iput-object v10, v2, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Ljava/lang/String;

    .line 298
    sget-object v18, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 297
    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->lookupUri:Landroid/net/Uri;

    .line 299
    iput-boolean v9, v2, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    .line 300
    iput-boolean v8, v2, Lcom/android/contacts/common/list/ContactEntry;->isDefaultNumber:Z

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberTypeIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 304
    .local v14, "phoneNumberType":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberLabelIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 305
    .local v13, "phoneNumberCustomLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14, v13}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->phoneLabel:Ljava/lang/String;

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/contacts/common/list/ContactEntry;->phoneNumber:Ljava/lang/String;

    .line 309
    move/from16 v0, v16

    iput v0, v2, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v4, v6, v7, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 284
    .end local v2    # "contact":Lcom/android/contacts/common/list/ContactEntry;
    .end local v8    # "isDefaultNumber":Z
    .end local v9    # "isStarred":Z
    .end local v13    # "phoneNumberCustomLabel":Ljava/lang/String;
    .end local v14    # "phoneNumberType":I
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "nameAlternative":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "isStarred":Z
    goto/16 :goto_1

    .line 285
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "isDefaultNumber":Z
    goto/16 :goto_2

    .line 291
    .restart local v2    # "contact":Lcom/android/contacts/common/list/ContactEntry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0129

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 293
    .end local v11    # "name":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0d0129

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    .line 295
    .end local v12    # "nameAlternative":Ljava/lang/String;
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_5
.end method

.method private unstarAndUnpinContact(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 550
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 551
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "starred"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 552
    const-string/jumbo v1, "pinned"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 549
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method arrangeContactsByPinnedPosition(Ljava/util/ArrayList;)V
    .locals 12
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "toArrange":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    const/16 v11, 0x15

    const/4 v10, 0x0

    .line 570
    new-instance v5, Ljava/util/PriorityQueue;

    iget-object v8, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntryComparator:Ljava/util/Comparator;

    invoke-direct {v5, v11, v8}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 572
    .local v5, "pinnedQueue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/contacts/common/list/ContactEntry;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 574
    .local v7, "unpinnedContacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/list/ContactEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 575
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 576
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    .line 578
    .local v0, "contact":Lcom/android/contacts/common/list/ContactEntry;
    iget v8, v0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-gt v8, v11, :cond_0

    iget v8, v0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-nez v8, :cond_2

    .line 579
    :cond_0
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    :cond_2
    iget v8, v0, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_1

    .line 585
    invoke-virtual {v5, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 589
    .end local v0    # "contact":Lcom/android/contacts/common/list/ContactEntry;
    :cond_3
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 591
    .local v4, "maxToPin":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 592
    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v8, v4, 0x1

    if-ge v2, v8, :cond_6

    .line 593
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/list/ContactEntry;

    iget v8, v8, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-gt v8, v2, :cond_5

    .line 594
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactEntry;

    .line 595
    .local v6, "toPin":Lcom/android/contacts/common/list/ContactEntry;
    iput v2, v6, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 596
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .end local v6    # "toPin":Lcom/android/contacts/common/list/ContactEntry;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 597
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 598
    invoke-interface {v7, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 606
    :cond_6
    :goto_4
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 607
    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactEntry;

    .line 608
    .local v1, "entry":Lcom/android/contacts/common/list/ContactEntry;
    iput v10, v1, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    .line 609
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 614
    .end local v1    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    :cond_7
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 568
    return-void
.end method

.method protected bindColumnIndices()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x7

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIdIndex:I

    .line 186
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNamePrimaryIndex:I

    .line 187
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNameAlternativeIndex:I

    .line 188
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    .line 189
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoUriIndex:I

    .line 190
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mLookupIndex:I

    .line 191
    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberIndex:I

    .line 192
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberTypeIndex:I

    .line 193
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhoneNumberLabelIndex:I

    .line 194
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPinnedIndex:I

    .line 195
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactIdIndex:I

    .line 198
    iput v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPresenceIndex:I

    .line 199
    iput v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStatusIndex:I

    .line 200
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mIsDefaultNumberIndex:I

    .line 184
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/common/list/ContactEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/contacts/common/list/ContactEntry;->id:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public getNumFrequents()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    return v0
.end method

.method protected getNumStarredContacts(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 331
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 332
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0

    .line 340
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method getReflowedPinningOperations(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 12
    .param p2, "oldPos"    # I
    .param p3, "newPinPos"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 631
    .local v4, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 632
    .local v3, "lowerBound":I
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 633
    .local v5, "upperBound":I
    move v2, v3

    .local v2, "i":I
    :goto_0
    if-gt v2, v5, :cond_1

    .line 634
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ContactEntry;

    .line 638
    .local v1, "entry":Lcom/android/contacts/common/list/ContactEntry;
    add-int/lit8 v0, v2, 0x1

    .line 639
    .local v0, "databasePinnedPosition":I
    iget v8, v1, Lcom/android/contacts/common/list/ContactEntry;->pinned:I

    if-ne v8, v0, :cond_0

    .line 633
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 641
    :cond_0
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v1, Lcom/android/contacts/common/list/ContactEntry;->id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 642
    .local v6, "uri":Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 643
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "pinned"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 646
    .end local v0    # "databasePinnedPosition":I
    .end local v1    # "entry":Lcom/android/contacts/common/list/ContactEntry;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_1
    return-object v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemViewType(I)I

    move-result v0

    .line 411
    .local v0, "itemViewType":I
    const/4 v1, 0x0

    .line 413
    .local v1, "tileView":Lcom/android/dialer/list/PhoneFavoriteTileView;
    instance-of v2, p2, Lcom/android/dialer/list/PhoneFavoriteTileView;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 414
    check-cast v1, Lcom/android/dialer/list/PhoneFavoriteTileView;

    .line 417
    .end local v1    # "tileView":Lcom/android/dialer/list/PhoneFavoriteTileView;
    :cond_0
    if-nez v1, :cond_1

    .line 418
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    .line 419
    const v3, 0x7f0400c3

    .line 418
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/PhoneFavoriteTileView;

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 422
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoriteTileView;->setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItem(I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/PhoneFavoriteTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    .line 424
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method public handleDrop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    if-eqz v3, :cond_2

    .line 486
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {p0, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 487
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    if-eq v3, v4, :cond_3

    .line 491
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    iput v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 492
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    .line 494
    const/4 v0, 0x1

    .line 504
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    .line 506
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    .line 507
    iget v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 506
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getReflowedPinningOperations(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v2

    .line 508
    .local v2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 511
    :try_start_0
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "com.android.contacts"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    iput-object v6, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    .line 483
    :cond_2
    return-void

    .line 495
    :cond_3
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    invoke-virtual {p0, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 499
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 500
    iget v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    iput v3, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDropEntryIndex:I

    .line 501
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 513
    .restart local v2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Exception thrown when pinning contacts"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isIndexInBound(I)Z
    .locals 2
    .param p1, "itemIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 457
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 400
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 396
    return-void
.end method

.method public onDragFinished(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setInDragging(Z)V

    .line 684
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    if-nez v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->handleDrop()V

    .line 679
    :cond_0
    return-void
.end method

.method public onDragHovered(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "view"    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    .prologue
    .line 663
    if-nez p3, :cond_0

    .line 666
    return-void

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getContactEntry()Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 669
    .local v0, "itemIndex":I
    iget-boolean v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    if-eqz v1, :cond_1

    .line 670
    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    if-eq v1, v0, :cond_1

    .line 671
    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v1

    .line 669
    if-eqz v1, :cond_1

    .line 672
    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 673
    if-ltz v0, :cond_1

    .line 674
    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->markDropArea(I)V

    .line 662
    :cond_1
    return-void
.end method

.method public onDragStarted(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "view"    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    .prologue
    .line 656
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setInDragging(Z)V

    .line 657
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getContactEntry()Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 658
    .local v0, "itemIndex":I
    invoke-virtual {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->popContactEntry(I)V

    .line 655
    return-void
.end method

.method public onDroppedOnRemove()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactEntry;->lookupUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->unstarAndUnpinContact(Landroid/net/Uri;)V

    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    .line 690
    :cond_0
    return-void
.end method

.method public popContactEntry(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactEntry;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntry:Lcom/android/contacts/common/list/ContactEntry;

    .line 446
    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDraggedEntryIndex:I

    .line 447
    iput p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    .line 448
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDragEnteredEntryIndex:I

    invoke-direct {p0, v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->markDropArea(I)V

    .line 443
    :cond_0
    return-void
.end method

.method public refreshContactsPreferences()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string/jumbo v1, "android.contacts.SORT_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method protected saveNumFrequentsFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumStarred:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumFrequents:I

    .line 215
    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDelayCursorUpdates:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getNumStarredContacts(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mNumStarred:I

    .line 227
    iget-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mAwaitingRemove:Z

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    invoke-interface {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->cacheOffsetsForDatasetChange()V

    .line 231
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->saveNumFrequentsFromCursor(Landroid/database/Cursor;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->saveCursorToCache(Landroid/database/Cursor;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->notifyDataSetChanged()V

    .line 236
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDataSetChangedListener:Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-interface {v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;->onDataSetChangedForAnimation([J)V

    goto :goto_0
.end method

.method public setInDragging(Z)V
    .locals 0
    .param p1, "inDragging"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mDelayCursorUpdates:Z

    .line 172
    iput-boolean p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mInDragging:Z

    .line 170
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 161
    return-void
.end method
