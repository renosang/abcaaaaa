.class public Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;,
        Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;
    }
.end annotation


# static fields
.field private static final IGNORE_NUMBER_TOO_LONG_CLAUSE:Ljava/lang/String; = "length(data1) < 1000"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCountryIso:Ljava/lang/String;

.field private final mExtendedDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/DirectoryPartition;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstExtendedDirectoryId:J

.field private mIsPresenceEnabled:Z

.field private mIsVideoEnabled:Z

.field private mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private final mUnknownNameText:Ljava/lang/CharSequence;

.field private mUseCallableUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 80
    const-wide v6, 0x7fffffffffffffffL

    iput-wide v6, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    .line 179
    const v2, 0x7f0d012d

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDefaultFilterHeaderText(I)V

    .line 180
    const v2, 0x104000e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 181
    invoke-static {p1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    .line 184
    invoke-static {}, Lcom/android/contacts/common/extensions/ExtensionsFactory;->getExtendedPhoneDirectoriesManager()Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    move-result-object v0

    .line 185
    .local v0, "manager":Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;
    if-eqz v0, :cond_0

    .line 186
    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;->getExtendedDirectories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    .line 192
    :goto_0
    invoke-static {p1}, Lcom/android/contacts/common/CallUtil;->getVideoCallingAvailability(Landroid/content/Context;)I

    move-result v1

    .line 193
    .local v1, "videoCapabilities":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsVideoEnabled:Z

    .line 194
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v3, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsPresenceEnabled:Z

    .line 177
    return-void

    .line 189
    .end local v1    # "videoCapabilities":I
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    goto :goto_0

    .restart local v1    # "videoCapabilities":I
    :cond_1
    move v2, v4

    .line 193
    goto :goto_1

    :cond_2
    move v3, v4

    .line 194
    goto :goto_2
.end method

.method private applyFilter(Lcom/oneplus/contacts/common/ICursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 5
    .param p1, "loader"    # Lcom/oneplus/contacts/common/ICursorLoader;
    .param p2, "uriBuilder"    # Landroid/net/Uri$Builder;
    .param p3, "directoryId"    # J
    .param p5, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 296
    if-eqz p5, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 297
    :cond_0
    return-void

    .line 300
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p5, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 319
    :pswitch_0
    sget-object v2, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported filter type came (type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 320
    iget v4, p5, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 320
    const-string/jumbo v4, ", toString: "

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 320
    const-string/jumbo v4, ")"

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 321
    const-string/jumbo v4, " showing all contacts."

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/oneplus/contacts/common/ICursorLoader;->setSelection(Ljava/lang/String;)V

    .line 326
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/oneplus/contacts/common/ICursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 295
    return-void

    .line 305
    :pswitch_2
    const-string/jumbo v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string/jumbo v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 310
    :pswitch_3
    invoke-virtual {p5, p2}, Lcom/android/contacts/common/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getExtendedDirectoryFromId(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 5
    .param p1, "directoryId"    # J

    .prologue
    .line 286
    iget-wide v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    sub-long v2, p1, v2

    long-to-int v0, v2

    .line 287
    .local v0, "directoryIndex":I
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    return-object v1
.end method


# virtual methods
.method protected bindAccountInfo(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 581
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isPhotoSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->removeAccountIconView()V

    .line 583
    return-void

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getAccountIconLoader()Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getAccountIconView()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->loadContactAccount(Landroid/widget/ImageView;J)V

    .line 580
    return-void
.end method

.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 522
    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 10
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "displayNumber"    # Z
    .param p4, "position"    # I

    .prologue
    .line 478
    const/4 v4, 0x0

    .line 479
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz p3, :cond_0

    const/4 v9, 0x1

    invoke-interface {p2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 486
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    invoke-virtual {p1, v4}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 488
    if-eqz p3, :cond_4

    .line 489
    const/4 v9, 0x3

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 500
    .local v7, "text":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v7, v9}, Lcom/android/contacts/common/list/ContactListItemView;->setPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isVideoCompatible()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 504
    const/16 v9, 0xa

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 505
    .local v0, "carrierPresence":I
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_6

    const/4 v2, 0x1

    .line 507
    .local v2, "isPresent":Z
    :goto_2
    iget-boolean v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsVideoEnabled:Z

    if-eqz v9, :cond_9

    .line 508
    iget-boolean v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsPresenceEnabled:Z

    if-eqz v9, :cond_1

    if-nez v2, :cond_7

    :cond_1
    iget-boolean v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mIsPresenceEnabled:Z

    if-eqz v9, :cond_8

    const/4 v3, 0x0

    .line 509
    .local v3, "isVideoIconShown":Z
    :goto_3
    iget-object v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    invoke-virtual {p1, v3, v9, p4}, Lcom/android/contacts/common/list/ContactListItemView;->setShowVideoCallIcon(ZLcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V

    .line 477
    .end local v0    # "carrierPresence":I
    .end local v2    # "isPresent":Z
    .end local v3    # "isVideoIconShown":Z
    :cond_2
    return-void

    .line 480
    .end local v7    # "text":Ljava/lang/String;
    .restart local v4    # "label":Ljava/lang/CharSequence;
    :cond_3
    const/4 v9, 0x1

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 481
    .local v8, "type":I
    const/4 v9, 0x2

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "customLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v8, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "label":Ljava/lang/CharSequence;
    goto :goto_0

    .line 492
    .end local v1    # "customLabel":Ljava/lang/String;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v8    # "type":I
    :cond_4
    const/4 v9, 0x2

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "phoneLabel":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 494
    move-object v7, v5

    .restart local v7    # "text":Ljava/lang/String;
    goto :goto_1

    .line 496
    .end local v7    # "text":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x3

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, "phoneNumber":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/android/contacts/common/GeoUtil;->getGeocodedLocationFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "text":Ljava/lang/String;
    goto :goto_1

    .line 505
    .end local v5    # "phoneLabel":Ljava/lang/String;
    .end local v6    # "phoneNumber":Ljava/lang/String;
    .restart local v0    # "carrierPresence":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "isPresent":Z
    goto :goto_2

    .line 507
    :cond_7
    const/4 v3, 0x1

    .restart local v3    # "isVideoIconShown":Z
    goto :goto_3

    .line 508
    .end local v3    # "isVideoIconShown":Z
    :cond_8
    const/4 v3, 0x1

    .restart local v3    # "isVideoIconShown":Z
    goto :goto_3

    .line 507
    .end local v3    # "isVideoIconShown":Z
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "isVideoIconShown":Z
    goto :goto_3
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 544
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isPhotoSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView()V

    .line 546
    return-void

    .line 549
    :cond_0
    const-wide/16 v2, 0x0

    .line 550
    .local v2, "photoId":J
    invoke-interface {p3, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 554
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/oneplus/contacts/common/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    .line 556
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v5

    .line 555
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 543
    :goto_0
    return-void

    .line 558
    :cond_2
    const/16 v0, 0x8

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 559
    .local v11, "photoUriString":Ljava/lang/String;
    if-nez v11, :cond_4

    move-object v7, v6

    .line 561
    .local v7, "photoUri":Landroid/net/Uri;
    :goto_1
    const/4 v10, 0x0

    .line 562
    .local v10, "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    if-nez v7, :cond_3

    .line 569
    const/4 v0, 0x7

    .line 570
    const/4 v1, 0x5

    const/16 v5, 0x9

    .line 568
    invoke-virtual {p0, p3, v0, v1, v5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDefaultImageRequestFromCursor(Landroid/database/Cursor;III)Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v10

    .line 573
    .end local v10    # "request":Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/oneplus/contacts/common/ContactPhotoManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v6

    .line 574
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getCircularPhotos()Z

    move-result v9

    move v8, v4

    .line 573
    invoke-virtual/range {v5 .. v10}, Lcom/oneplus/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    .line 559
    .end local v7    # "photoUri":Landroid/net/Uri;
    :cond_4
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 3
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    .line 516
    .local v0, "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    iget-boolean v2, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 513
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 23
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 416
    invoke-super/range {p0 .. p4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object/from16 v5, p1

    .line 417
    check-cast v5, Lcom/android/contacts/common/list/ContactListItemView;

    .line 419
    .local v5, "view":Lcom/android/contacts/common/list/ContactListItemView;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 426
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 427
    const/16 v17, 0x1

    .line 428
    .local v17, "isFirstEntry":Z
    const/16 v22, 0x1

    .line 429
    .local v22, "showBottomDivider":Z
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 430
    .local v14, "currentContactId":J
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 436
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 437
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 447
    :cond_1
    :goto_1
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 449
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1, v4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindViewId(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 451
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 452
    if-eqz v17, :cond_6

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 455
    const/4 v8, 0x6

    .line 456
    const/16 v9, 0x8

    const/4 v10, 0x4

    .line 457
    const/4 v11, 0x5

    const/4 v12, 0x7

    .line 458
    const/16 v13, 0x9

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    .line 455
    invoke-virtual/range {v4 .. v13}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindQuickContact(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIIII)V

    .line 464
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindAccountInfo(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 472
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 473
    .local v16, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/common/list/DirectoryPartition;->isDisplayNumber()Z

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v5, v1, v4, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ZI)V

    .line 415
    return-void

    .line 431
    .end local v16    # "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_3
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 432
    .local v20, "previousContactId":J
    cmp-long v4, v14, v20

    if-nez v4, :cond_0

    .line 433
    const/16 v17, 0x0

    goto :goto_0

    .line 438
    .end local v20    # "previousContactId":J
    :cond_4
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 439
    .local v18, "nextContactId":J
    cmp-long v4, v14, v18

    if-nez v4, :cond_1

    .line 444
    const/16 v22, 0x0

    goto :goto_1

    .line 460
    .end local v18    # "nextContactId":J
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDisplayPhotos()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 461
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_2

    .line 466
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->unbindName(Lcom/android/contacts/common/list/ContactListItemView;)V

    .line 468
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/contacts/common/list/ContactListItemView;->removePhotoView(ZZ)V

    .line 469
    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactListItemView;->removeAccountIconView()V

    goto :goto_3
.end method

.method protected bindWorkProfileIcon(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 8
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "partition"    # I

    .prologue
    const/4 v1, 0x0

    .line 533
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 534
    .local v0, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 535
    .local v2, "directoryId":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/contacts/common/ContactsUtils;->determineUserType(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v4

    .line 540
    .local v4, "userType":J
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 539
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setWorkProfileIconEnabled(Z)V

    .line 532
    return-void
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 618
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 619
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectorySearchMode()I

    move-result v10

    if-nez v10, :cond_0

    .line 620
    return-void

    .line 622
    :cond_0
    iget-object v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 623
    .local v8, "numExtendedDirectories":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionCount()I

    move-result v10

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    add-int/2addr v11, v8

    if-ne v10, v11, :cond_1

    .line 625
    return-void

    .line 628
    :cond_1
    const-wide v10, 0x7fffffffffffffffL

    iput-wide v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    .line 629
    if-lez v8, :cond_6

    .line 632
    const-wide/16 v6, 0x1

    .line 633
    .local v6, "maxId":J
    const/4 v4, 0x0

    .line 634
    .local v4, "insertIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionCount()I

    move-result v5

    .local v5, "n":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 635
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 636
    .local v9, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v9}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 637
    .local v2, "id":J
    cmp-long v10, v2, v6

    if-lez v10, :cond_2

    .line 638
    move-wide v6, v2

    .line 640
    :cond_2
    invoke-static {v2, v3}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v10

    if-nez v10, :cond_3

    .line 644
    add-int/lit8 v4, v1, 0x1

    .line 634
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v2    # "id":J
    .end local v9    # "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_4
    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    iput-wide v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    .line 649
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_6

    .line 650
    iget-wide v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    int-to-long v12, v1

    add-long v2, v10, v12

    .line 651
    .restart local v2    # "id":J
    iget-object v10, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mExtendedDirectories:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 652
    .local v0, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionByDirectoryId(J)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    .line 653
    invoke-virtual {p0, v4, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->addPartition(ILcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 654
    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->setDirectoryId(J)V

    .line 649
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 617
    .end local v0    # "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    .end local v1    # "i":I
    .end local v2    # "id":J
    .end local v4    # "insertIndex":I
    .end local v5    # "n":I
    .end local v6    # "maxId":J
    :cond_6
    return-void
.end method

.method public configureLoader(Lcom/oneplus/contacts/common/ICursorLoader;J)V
    .locals 18
    .param p1, "loader"    # Lcom/oneplus/contacts/common/ICursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v16

    .line 204
    .local v16, "query":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 205
    const-string/jumbo v16, ""

    .line 207
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 208
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getExtendedDirectoryFromId(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v12

    .line 209
    .local v12, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v12}, Lcom/android/contacts/common/list/DirectoryPartition;->getContentUri()Ljava/lang/String;

    move-result-object v11

    .line 210
    .local v11, "contentUri":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 211
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Extended directory must have a content URL: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 214
    :cond_1
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 215
    .local v7, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 216
    const-string/jumbo v5, "limit"

    .line 217
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 218
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setUri(Landroid/net/Uri;)V

    .line 219
    sget-object v5, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setProjection([Ljava/lang/String;)V

    .line 202
    .end local v11    # "contentUri":Ljava/lang/String;
    .end local v12    # "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    :goto_0
    return-void

    .line 222
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    invoke-static/range {p2 .. p3}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v13

    .line 224
    .local v13, "isRemoteDirectoryQuery":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 226
    if-eqz v13, :cond_4

    .line 227
    invoke-static {}, Lcom/android/contacts/common/compat/PhoneCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v4

    .line 233
    .local v4, "baseUri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 234
    .restart local v7    # "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 235
    const-string/jumbo v5, "directory"

    .line 236
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 235
    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 237
    if-eqz v13, :cond_3

    .line 238
    const-string/jumbo v5, "limit"

    .line 239
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryById(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDirectoryResultLimit(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 253
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/contacts/common/ICursorLoader;->getSelection()Ljava/lang/String;

    move-result-object v15

    .line 255
    .local v15, "prevSelection":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "length(data1) < 1000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 260
    .local v14, "newSelection":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/oneplus/contacts/common/ICursorLoader;->setSelection(Ljava/lang/String;)V

    .line 263
    const-string/jumbo v5, "remove_duplicate_entries"

    const-string/jumbo v6, "true"

    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 264
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setUri(Landroid/net/Uri;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 268
    sget-object v5, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setProjection([Ljava/lang/String;)V

    .line 273
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getSortOrder()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 274
    const-string/jumbo v5, "sort_key"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v4    # "baseUri":Landroid/net/Uri;
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    .end local v14    # "newSelection":Ljava/lang/String;
    .end local v15    # "prevSelection":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v5, :cond_5

    .line 229
    invoke-static {}, Lcom/android/contacts/common/compat/CallableCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "baseUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 231
    .end local v4    # "baseUri":Landroid/net/Uri;
    :cond_5
    invoke-static {}, Lcom/android/contacts/common/compat/PhoneCompat;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "baseUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 242
    .end local v4    # "baseUri":Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v5, :cond_8

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    .line 243
    .restart local v4    # "baseUri":Landroid/net/Uri;
    :goto_5
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 244
    const-string/jumbo v6, "directory"

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 243
    invoke-virtual {v5, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    .line 245
    .restart local v7    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 246
    const-string/jumbo v5, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string/jumbo v6, "true"

    invoke-virtual {v7, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 248
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v10

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->applyFilter(Lcom/oneplus/contacts/common/ICursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto/16 :goto_2

    .line 242
    .end local v4    # "baseUri":Landroid/net/Uri;
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    :cond_8
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_5

    .line 258
    .restart local v4    # "baseUri":Landroid/net/Uri;
    .restart local v7    # "builder":Landroid/net/Uri$Builder;
    .restart local v15    # "prevSelection":Ljava/lang/String;
    :cond_9
    const-string/jumbo v14, "length(data1) < 1000"

    .restart local v14    # "newSelection":Ljava/lang/String;
    goto/16 :goto_3

    .line 270
    :cond_a
    sget-object v5, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_4

    .line 276
    :cond_b
    const-string/jumbo v5, "sort_key_alt"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/oneplus/contacts/common/ICursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 6
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "contactIdColumn"    # I
    .param p4, "lookUpKeyColumn"    # I

    .prologue
    .line 663
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 664
    .local v0, "directory":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 665
    .local v2, "directoryId":J
    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isExtendedDirectory(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 668
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 669
    const-string/jumbo v4, "encoded"

    .line 668
    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 670
    const-string/jumbo v4, "displayName"

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 668
    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 671
    const-string/jumbo v4, "directory"

    .line 672
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 668
    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 673
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 668
    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 346
    .local v1, "partitionIndex":I
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 347
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDataUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getDataUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 6
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v0

    .line 353
    .local v0, "directoryId":J
    invoke-static {v0, v1}, Lcom/android/contacts/common/compat/DirectoryCompat;->isRemoteDirectoryId(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 354
    return-object v5

    .line 355
    :cond_0
    invoke-static {v0, v1}, Lcom/android/contacts/common/compat/DirectoryCompat;->isEnterpriseDirectoryId(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    return-object v5

    .line 364
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 365
    .local v2, "phoneId":J
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method public getListener()Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    return-object v0
.end method

.method public getLookupKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 377
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 336
    .local v0, "item":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getPhotoPosition()Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-object v0
.end method

.method protected getResultCount(Landroid/database/Cursor;)I
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 398
    if-nez p1, :cond_0

    .line 399
    const/4 v5, 0x0

    return v5

    .line 401
    :cond_0
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 402
    const-wide/16 v2, -0x1

    .line 403
    .local v2, "curContactId":J
    const/4 v4, 0x0

    .line 404
    .local v4, "numContacts":I
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 405
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 406
    .local v0, "contactId":J
    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 407
    move-wide v2, v0

    .line 408
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "contactId":J
    :cond_2
    return v4
.end method

.method protected getUnknownNameText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected isExtendedDirectory(J)Z
    .locals 3
    .param p1, "directoryId"    # J

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mFirstExtendedDirectoryId:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 383
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    .line 384
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    .line 387
    return-object v0
.end method

.method protected setHighlight(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getUpperCaseQueryString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    .line 390
    return-void

    .line 391
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mListener:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    .line 681
    return-void
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1, "photoPosition"    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 589
    return-void
.end method

.method public setUseCallableUri(Z)V
    .locals 0
    .param p1, "useCallableUri"    # Z

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    .line 597
    return-void
.end method

.method protected unbindName(Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;

    .prologue
    .line 528
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->hideDisplayName()V

    .line 527
    return-void
.end method

.method public usesCallableUri()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    return v0
.end method
