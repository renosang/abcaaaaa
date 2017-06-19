.class public Lcom/android/incallui/ConferenceParticipantListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConferenceParticipantListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceParticipantListAdapter$1;,
        Lcom/android/incallui/ConferenceParticipantListAdapter$2;,
        Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;,
        Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    }
.end annotation


# instance fields
.field private mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private final mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDisconnectListener:Landroid/view/View$OnClickListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mListView:Landroid/widget/ListView;

.field private mParentCanSeparate:Z

.field private final mParticipantsByCallId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSeparateListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/ConferenceParticipantListAdapter;)Lcom/android/contacts/common/preference/ContactsPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-object v0
.end method

.method public constructor <init>(Landroid/widget/ListView;Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p4, "contactPhotoManager"    # Lcom/android/contacts/common/ContactPhotoManager;

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 166
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$1;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDisconnectListener:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/android/incallui/ConferenceParticipantListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$2;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mSeparateListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    .line 238
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    .line 239
    iput-object p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    .line 240
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactsPreferencesFactory;->newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 241
    iput-object p3, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 242
    iput-object p4, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 236
    return-void
.end method

.method private static getResourceforState(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 380
    packed-switch p0, :pswitch_data_0

    .line 400
    :pswitch_0
    const v0, 0x7f0d041b

    .line 402
    .local v0, "res":I
    :goto_0
    return v0

    .line 382
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0d041a

    .line 383
    .restart local v0    # "res":I
    goto :goto_0

    .line 388
    .end local v0    # "res":I
    :pswitch_2
    const v0, 0x7f0d0418

    .line 389
    .restart local v0    # "res":I
    goto :goto_0

    .line 391
    .end local v0    # "res":I
    :pswitch_3
    const v0, 0x7f0d0419

    .line 392
    .restart local v0    # "res":I
    goto :goto_0

    .line 394
    .end local v0    # "res":I
    :pswitch_4
    const v0, 0x7f0d041c

    .line 395
    .restart local v0    # "res":I
    goto :goto_0

    .line 397
    .end local v0    # "res":I
    :pswitch_5
    const v0, 0x7f0d041d

    .line 398
    .restart local v0    # "res":I
    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private refreshView(Ljava/lang/String;)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 317
    .local v0, "first":I
    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 319
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_0
    sub-int v5, v1, v0

    if-gt v2, v5, :cond_0

    .line 320
    iget-object v5, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 321
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 322
    .local v3, "rowCallId":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    add-int v5, v2, v0

    iget-object v6, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v5, v4, v6}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 315
    .end local v3    # "rowCallId":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 319
    .restart local v3    # "rowCallId":Ljava/lang/String;
    .restart local v4    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private final setCallerInfoForRow(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZI)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "preferredName"    # Ljava/lang/String;
    .param p4, "callerNumber"    # Ljava/lang/String;
    .param p5, "callerNumberType"    # Ljava/lang/String;
    .param p6, "lookupKey"    # Ljava/lang/String;
    .param p7, "photoUri"    # Landroid/net/Uri;
    .param p8, "thisRowCanSeparate"    # Z
    .param p9, "thisRowCanDisconnect"    # Z
    .param p10, "state"    # I

    .prologue
    .line 436
    const v1, 0x7f0e00ff

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 437
    .local v2, "photoView":Landroid/widget/ImageView;
    const v1, 0x7f0e0100

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 438
    .local v8, "nameTextView":Landroid/widget/TextView;
    const v1, 0x7f0e0101

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 440
    .local v9, "numberTextView":Landroid/widget/TextView;
    const v1, 0x7f0e0102

    .line 439
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 441
    .local v10, "numberTypeTextView":Landroid/widget/TextView;
    const v1, 0x7f0e0105

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 442
    .local v7, "endButton":Landroid/view/View;
    const v1, 0x7f0e0104

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 450
    .local v11, "separateButton":Landroid/view/View;
    if-eqz p9, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    if-eqz p9, :cond_1

    .line 452
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mDisconnectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    :goto_1
    if-eqz p8, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    if-eqz p8, :cond_3

    .line 459
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mSeparateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    :goto_3
    if-eqz p7, :cond_4

    const/4 v6, 0x0

    .line 467
    :goto_4
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v3, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 470
    invoke-virtual {v8, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 474
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    :goto_5
    return-void

    .line 450
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 454
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 457
    :cond_2
    const/16 v1, 0x8

    goto :goto_2

    .line 461
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 465
    :cond_4
    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v1, 0x1

    move-object/from16 v0, p6

    invoke-direct {v6, p2, v0, v1}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .local v6, "imageRequest":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    goto :goto_4

    .line 477
    .end local v6    # "imageRequest":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 480
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 479
    move-object/from16 v0, p4

    invoke-virtual {v1, v0, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-static {v1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private sortParticipantList()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    new-instance v1, Lcom/android/incallui/ConferenceParticipantListAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/ConferenceParticipantListAdapter$3;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 543
    return-void
.end method

.method private updateParticipantInfo(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/Call;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateParticipantInfo: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    .line 495
    .local v1, "cache":Lcom/android/incallui/ContactInfoCache;
    const/4 v11, 0x0

    .line 496
    .local v11, "newParticipantAdded":Z
    new-instance v10, Ljava/util/HashSet;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v10, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 499
    .local v10, "newCallIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "call$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/Call;

    .line 500
    .local v2, "call":Lcom/android/incallui/Call;
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, "callId":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {v1, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    .line 503
    .local v5, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v5, :cond_0

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    .line 505
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v13

    const/4 v15, 0x4

    if-ne v13, v15, :cond_1

    const/4 v13, 0x1

    .line 504
    :goto_1
    invoke-static {v14, v2, v13}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v5

    .line 508
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 510
    .local v12, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v12, v2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCall(Lcom/android/incallui/Call;)V

    .line 511
    invoke-virtual {v12, v5}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 505
    .end local v12    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 513
    :cond_2
    const/4 v11, 0x1

    .line 514
    new-instance v12, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2, v5}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 515
    .restart local v12    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 522
    .end local v2    # "call":Lcom/android/incallui/Call;
    .end local v4    # "callId":Ljava/lang/String;
    .end local v5    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v12    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 523
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;>;"
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 524
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 525
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 526
    .local v7, "existingCallId":Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 527
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 528
    .local v8, "existingInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 529
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 533
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;>;"
    .end local v7    # "existingCallId":Ljava/lang/String;
    .end local v8    # "existingInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_5
    if-eqz v11, :cond_6

    .line 535
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->sortParticipantList()V

    .line 537
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->notifyDataSetChanged()V

    .line 492
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 291
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 341
    if-nez p2, :cond_1

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040037

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 345
    .local v2, "result":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mConferenceParticipants:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 346
    .local v15, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v15}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v13

    .line 347
    .local v13, "call":Lcom/android/incallui/Call;
    invoke-virtual {v15}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getContactCacheEntry()Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v14

    .line 349
    .local v14, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v12

    .line 353
    .local v12, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {v15}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->isCacheLookupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    invoke-virtual {v15}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 355
    invoke-virtual {v15}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    .line 356
    :goto_1
    new-instance v4, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/incallui/ConferenceParticipantListAdapter$ContactLookupCallback;-><init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V

    .line 354
    invoke-virtual {v12, v3, v1, v4}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 359
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParentCanSeparate:Z

    if-eqz v1, :cond_3

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    .line 360
    const/16 v3, 0x1000

    .line 359
    invoke-virtual {v1, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v9

    .line 361
    :goto_2
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    .line 362
    const/16 v3, 0x2000

    .line 361
    invoke-virtual {v1, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v10

    .line 364
    .local v10, "thisRowCanDisconnect":Z
    iget-object v3, v14, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 365
    iget-object v1, v14, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 366
    iget-object v4, v14, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 365
    invoke-static {v1, v4, v5}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 367
    iget-object v5, v14, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v6, v14, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 368
    iget-object v7, v14, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupKey:Ljava/lang/String;

    iget-object v8, v14, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    .line 369
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getTrueState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->getResourceforState(I)I

    move-result v11

    move-object/from16 v1, p0

    .line 364
    invoke-direct/range {v1 .. v11}, Lcom/android/incallui/ConferenceParticipantListAdapter;->setCallerInfoForRow(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZI)V

    .line 373
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 375
    return-object v2

    .line 343
    .end local v2    # "result":Landroid/view/View;
    .end local v10    # "thisRowCanDisconnect":Z
    .end local v12    # "cache":Lcom/android/incallui/ContactInfoCache;
    .end local v13    # "call":Lcom/android/incallui/Call;
    .end local v14    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v15    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_1
    move-object/from16 v2, p2

    .restart local v2    # "result":Landroid/view/View;
    goto/16 :goto_0

    .line 355
    .restart local v12    # "cache":Lcom/android/incallui/ContactInfoCache;
    .restart local v13    # "call":Lcom/android/incallui/Call;
    .restart local v14    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v15    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 359
    :cond_3
    const/4 v9, 0x0

    .local v9, "thisRowCanSeparate":Z
    goto :goto_2
.end method

.method public refreshCall(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "callId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 304
    .local v1, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v1, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCall(Lcom/android/incallui/Call;)V

    .line 305
    invoke-direct {p0, v0}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    .line 299
    .end local v1    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_0
    return-void
.end method

.method updateContactInfo(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParticipantsByCallId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .line 414
    .local v0, "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    invoke-virtual {v0, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setContactCacheEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 415
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->setCacheLookupComplete(Z)V

    .line 416
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->refreshView(Ljava/lang/String;)V

    .line 411
    .end local v0    # "participantInfo":Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    :cond_0
    return-void
.end method

.method public updateParticipants(Ljava/util/List;Z)V
    .locals 2
    .param p2, "parentCanSeparate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/Call;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/Call;>;"
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string/jumbo v1, "android.contacts.SORT_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 257
    :cond_0
    iput-boolean p2, p0, Lcom/android/incallui/ConferenceParticipantListAdapter;->mParentCanSeparate:Z

    .line 258
    invoke-direct {p0, p1}, Lcom/android/incallui/ConferenceParticipantListAdapter;->updateParticipantInfo(Ljava/util/List;)V

    .line 252
    return-void
.end method
