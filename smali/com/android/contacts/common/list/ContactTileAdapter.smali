.class public Lcom/android/contacts/common/list/ContactTileAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;,
        Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;,
        Lcom/android/contacts/common/list/ContactTileAdapter$ViewTypes;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-contacts-common-list-ContactTileAdapter$DisplayTypeSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountNameIndex:I

.field private mAccountTypeIndex:I

.field protected mColumnCount:I

.field protected mContactCursor:Landroid/database/Cursor;

.field private mContext:Landroid/content/Context;

.field private mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

.field private mDividerPosition:I

.field protected mIdIndex:I

.field private mIsQuickContactEnabled:Z

.field private mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field protected mLookupIndex:I

.field protected mNameIndex:I

.field protected mNumFrequents:I

.field private final mPaddingInPixels:I

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected mPhotoUriIndex:I

.field protected mPresenceIndex:I

.field private mResources:Landroid/content/res/Resources;

.field private mStarredIndex:I

.field protected mStatusIndex:I

.field private final mWhitespaceStartEnd:I


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/list/ContactTileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/common/list/ContactTileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mWhitespaceStartEnd:I

    return v0
.end method

.method private static synthetic -getcom-android-contacts-common-list-ContactTileAdapter$DisplayTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->-com-android-contacts-common-list-ContactTileAdapter$DisplayTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->-com-android-contacts-common-list-ContactTileAdapter$DisplayTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->values()[Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STARRED_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->-com-android-contacts-common-list-ContactTileAdapter$DisplayTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/common/list/ContactTileAdapter;I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getLayoutResourceId(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->TAG:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;ILcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/contacts/common/list/ContactTileView$Listener;
    .param p3, "numCols"    # I
    .param p4, "displayType"    # Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 74
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    .line 111
    iput-object p2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 112
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    .line 114
    sget-object v0, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne p4, v0, :cond_0

    const/4 p3, 0x1

    .end local p3    # "numCols":I
    :cond_0
    iput p3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    .line 115
    iput-object p4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .line 116
    iput v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    .line 119
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    const v1, 0x7f0b019a

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I

    .line 121
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    const v1, 0x7f0b019b

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mWhitespaceStartEnd:I

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->bindColumnIndices()V

    .line 110
    return-void
.end method

.method private static cursorIsValid(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 160
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDivider()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d012b

    invoke-static {v0, v1}, Lcom/android/contacts/common/MoreContactUtils;->createHeaderView(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private getLayoutResourceId(I)I
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 435
    packed-switch p1, :pswitch_data_0

    .line 442
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    if-eqz v0, :cond_0

    .line 438
    const v0, 0x7f040042

    .line 437
    :goto_0
    return v0

    .line 438
    :cond_0
    const v0, 0x7f040041

    goto :goto_0

    .line 440
    :pswitch_2
    const v0, 0x7f04003f

    return v0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setDividerPadding(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "headerTextView"    # Landroid/widget/TextView;
    .param p2, "isFirstRow"    # Z

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/contacts/common/MoreContactUtils;->setHeaderViewBottomPadding(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 430
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bindColumnIndices()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    .line 149
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    .line 150
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    .line 152
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    .line 153
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    .line 154
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    .line 155
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mAccountTypeIndex:I

    .line 156
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mAccountNameIndex:I

    .line 147
    return-void
.end method

.method protected createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .prologue
    .line 243
    invoke-static {p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->cursorIsValid(Landroid/database/Cursor;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-gt v11, p2, :cond_1

    .line 244
    :cond_0
    const/4 v11, 0x0

    return-object v11

    .line 247
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 248
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIdIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 249
    .local v4, "id":J
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoUriIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "photoUri":Ljava/lang/String;
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mLookupIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "lookupKey":Ljava/lang/String;
    new-instance v2, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v2}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    .line 253
    .local v2, "contact":Lcom/android/contacts/common/list/ContactEntry;
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNameIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_6

    .end local v7    # "name":Ljava/lang/String;
    :goto_0
    iput-object v7, v2, Lcom/android/contacts/common/list/ContactEntry;->namePrimary:Ljava/lang/String;

    .line 255
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/contacts/common/list/ContactEntry;->status:Ljava/lang/String;

    .line 256
    if-eqz v8, :cond_7

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    :goto_1
    iput-object v11, v2, Lcom/android/contacts/common/list/ContactEntry;->photoUri:Landroid/net/Uri;

    .line 257
    iput-object v6, v2, Lcom/android/contacts/common/list/ContactEntry;->lookupKey:Ljava/lang/String;

    .line 259
    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v11, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 258
    invoke-static {v11, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v2, Lcom/android/contacts/common/list/ContactEntry;->lookupUri:Landroid/net/Uri;

    .line 260
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-lez v11, :cond_8

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, v2, Lcom/android/contacts/common/list/ContactEntry;->isFavorite:Z

    .line 263
    const/4 v3, 0x0

    .line 264
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 265
    .local v9, "presence":I
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_2

    .line 266
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPresenceIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 267
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Lcom/android/contacts/common/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 269
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    iput-object v3, v2, Lcom/android/contacts/common/list/ContactEntry;->presenceIcon:Landroid/graphics/drawable/Drawable;

    .line 271
    const/4 v10, 0x0

    .line 272
    .local v10, "statusMessage":Ljava/lang/String;
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 277
    .end local v10    # "statusMessage":Ljava/lang/String;
    :cond_3
    :goto_3
    if-nez v10, :cond_4

    if-eqz v9, :cond_4

    .line 278
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v9}, Lcom/android/contacts/common/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 280
    :cond_4
    iput-object v10, v2, Lcom/android/contacts/common/list/ContactEntry;->status:Ljava/lang/String;

    .line 282
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mAccountTypeIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_5

    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mAccountTypeIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 287
    :cond_5
    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/contacts/common/list/ContactEntry;->account:Landroid/accounts/Account;

    .line 289
    :goto_4
    return-object v2

    .line 254
    .end local v9    # "presence":I
    .restart local v7    # "name":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0d0129

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 256
    .end local v7    # "name":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    goto :goto_1

    .line 260
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 273
    .restart local v9    # "presence":I
    .restart local v10    # "statusMessage":Ljava/lang/String;
    :cond_9
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStatusIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "statusMessage":Ljava/lang/String;
    goto :goto_3

    .line 283
    .end local v10    # "statusMessage":Ljava/lang/String;
    :cond_a
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mAccountTypeIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "accountType":Ljava/lang/String;
    iget v11, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mAccountNameIndex:I

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "accountName":Ljava/lang/String;
    new-instance v11, Landroid/accounts/Account;

    invoke-direct {v11, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v2, Lcom/android/contacts/common/list/ContactEntry;->account:Landroid/accounts/Account;

    goto :goto_4
.end method

.method public enableQuickContact(Z)V
    .locals 0
    .param p1, "enableQuickContact"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mIsQuickContactEnabled:Z

    .line 139
    return-void
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    return v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 301
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->cursorIsValid(Landroid/database/Cursor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    return v0

    .line 305
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/list/ContactTileAdapter;->-getcom-android-contacts-common-list-ContactTileAdapter$DisplayTypeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unrecognized DisplayType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 307
    :pswitch_0
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v2

    return v2

    .line 310
    :pswitch_1
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v1

    .line 314
    .local v1, "starredRowCount":I
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    if-nez v2, :cond_1

    .line 317
    .local v0, "frequentRowCount":I
    :goto_0
    add-int v2, v1, v0

    return v2

    .line 314
    .end local v0    # "frequentRowCount":I
    :cond_1
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "starredRowCount":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    return v2

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getDividerPosition(Landroid/database/Cursor;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 214
    invoke-static {}, Lcom/android/contacts/common/list/ContactTileAdapter;->-getcom-android-contacts-common-list-ContactTileAdapter$DisplayTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :pswitch_0
    invoke-static {p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->cursorIsValid(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    return v2

    .line 219
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 220
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mStarredIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0

    .line 228
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    .line 231
    :pswitch_1
    return v3

    .line 234
    :pswitch_2
    return v2

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFrequentHeaderPosition()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int v1, p1, v3

    .line 347
    .local v1, "contactIndex":I
    invoke-static {}, Lcom/android/contacts/common/list/ContactTileAdapter;->-getcom-android-contacts-common-list-ContactTileAdapter$DisplayTypeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 376
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unrecognized DisplayType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 349
    :pswitch_0
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_0
    :goto_0
    return-object v2

    .line 352
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "columnCounter":I
    :goto_1
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    .line 353
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v1, v1, 0x1

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    .end local v0    # "columnCounter":I
    :pswitch_2
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 359
    const/4 v0, 0x0

    .restart local v0    # "columnCounter":I
    :goto_2
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    if-ge v0, v3, :cond_0

    .line 360
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    if-eq v1, v3, :cond_0

    .line 361
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v1, v1, 0x1

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 371
    .end local v0    # "columnCounter":I
    :cond_1
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v3

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    add-int v1, v3, v4

    .line 372
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->createContactEntryFromCursor(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 386
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 460
    invoke-static {}, Lcom/android/contacts/common/list/ContactTileAdapter;->-getcom-android-contacts-common-list-ContactTileAdapter$DisplayTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 474
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :pswitch_0
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 463
    return v2

    .line 464
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 465
    const/4 v0, 0x1

    return v0

    .line 467
    :cond_1
    return v3

    .line 470
    :pswitch_1
    return v2

    .line 472
    :pswitch_2
    return v3

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNumFrequents()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    return v0
.end method

.method protected getRowCount(I)I
    .locals 2
    .param p1, "entryCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 331
    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v2

    .line 403
    .local v2, "itemViewType":I
    if-ne v2, v4, :cond_2

    .line 405
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getDivider()Landroid/widget/TextView;

    move-result-object v3

    :goto_0
    check-cast v3, Landroid/widget/TextView;

    .line 406
    .local v3, "textView":Landroid/widget/TextView;
    if-nez p1, :cond_1

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->setDividerPadding(Landroid/widget/TextView;Z)V

    .line 407
    return-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    move-object v3, p2

    .line 405
    goto :goto_0

    .restart local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    move v4, v5

    .line 406
    goto :goto_1

    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_2
    move-object v1, p2

    .line 410
    check-cast v1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    .line 411
    .local v1, "contactTileRowView":Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 413
    .local v0, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/list/ContactEntry;>;"
    if-nez v1, :cond_3

    .line 415
    new-instance v1, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    .end local v1    # "contactTileRowView":Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
    iget-object v6, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v6, v2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V

    .line 418
    .restart local v1    # "contactTileRowView":Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_4

    :goto_2
    invoke-virtual {v1, v0, v4}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->configureRow(Ljava/util/ArrayList;Z)V

    .line 419
    return-object v1

    :cond_4
    move v4, v5

    .line 418
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 396
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getRowCount(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected saveNumFrequentsFromCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-static {}, Lcom/android/contacts/common/list/ContactTileAdapter;->-getcom-android-contacts-common-list-ContactTileAdapter$DisplayTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_0
    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    .line 170
    :goto_0
    return-void

    .line 178
    :pswitch_1
    invoke-static {p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->cursorIsValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    sub-int/2addr v0, v1

    .line 178
    :cond_0
    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-static {p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->cursorIsValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mNumFrequents:I

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    .line 131
    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    return-void

    .line 198
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDividerPosition:I

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->saveNumFrequentsFromCursor(Landroid/database/Cursor;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->notifyDataSetChanged()V

    .line 194
    return-void
.end method

.method public setDisplayType(Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V
    .locals 0
    .param p1, "displayType"    # Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    .line 135
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 127
    return-void
.end method
