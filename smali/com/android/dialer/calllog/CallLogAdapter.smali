.class public Lcom/android/dialer/calllog/CallLogAdapter;
.super Lcom/android/dialer/calllog/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;
.implements Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;
.implements Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogAdapter$1;,
        Lcom/android/dialer/calllog/CallLogAdapter$2;,
        Lcom/android/dialer/calllog/CallLogAdapter$3;,
        Lcom/android/dialer/calllog/CallLogAdapter$4;,
        Lcom/android/dialer/calllog/CallLogAdapter$5;,
        Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mActivityType:I

.field private final mBlockedNumberCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

.field protected final mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

.field private final mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

.field private final mCallLogListItemHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

.field protected mContactInfoCache:Lcom/android/dialer/contactinfo/ContactInfoCache;

.field private final mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentlyExpandedPosition:I

.field private mCurrentlyExpandedRowId:J

.field private mDayGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpandCollapseListener:Landroid/view/View$OnClickListener;

.field private mFilterString:Ljava/lang/String;

.field private final mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field private mHiddenItemUri:Landroid/net/Uri;

.field private mHiddenPosition:I

.field private mLoading:Z

.field private final mOkActionListener:Landroid/view/View$OnClickListener;

.field protected final mOnContactInfoChangedListener:Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

.field private mPendingHide:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field protected mShowVoicemailPromoCard:Z

.field protected final mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field private final mVoicemailSettingsActionListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/calllog/CallLogAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivityType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/dialer/calllog/CallLogAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/dialer/calllog/CallLogAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/dialer/calllog/CallLogAdapter;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->dismissVoicemailPromoCard()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->expandViewHolderActions(Lcom/android/dialer/calllog/CallLogListItemViewHolder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFetcher"    # Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    .param p3, "contactInfoHelper"    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p4, "voicemailPlaybackPresenter"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p5, "activityType"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 268
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBlockedNumberCache:Ljava/util/Map;

    .line 120
    iput v6, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    .line 123
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    .line 124
    iput v6, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    .line 125
    iput-object v8, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenItemUri:Landroid/net/Uri;

    .line 126
    iput-boolean v7, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPendingHide:Z

    .line 140
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    .line 142
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    .line 148
    iput-boolean v7, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mShowVoicemailPromoCard:Z

    .line 162
    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$1;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    .line 197
    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$2;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mOkActionListener:Landroid/view/View$OnClickListener;

    .line 209
    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$3;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$3;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    .line 208
    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailSettingsActionListener:Landroid/view/View$OnClickListener;

    .line 233
    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$4;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$4;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 255
    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$5;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$5;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    .line 254
    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mOnContactInfoChangedListener:Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    .line 270
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    .line 272
    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    .line 273
    iput-object p4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 274
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-eqz v3, :cond_0

    .line 275
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v3, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->setOnVoicemailDeletedListener(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;)V

    .line 278
    :cond_0
    iput p5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivityType:I

    .line 280
    new-instance v3, Lcom/android/dialer/contactinfo/ContactInfoCache;

    .line 281
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mOnContactInfoChangedListener:Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;

    .line 280
    invoke-direct {v3, v4, v5}, Lcom/android/dialer/contactinfo/ContactInfoCache;-><init>(Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/contactinfo/ContactInfoCache$OnContactInfoChangedListener;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/contactinfo/ContactInfoCache;

    .line 282
    invoke-static {p1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 283
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-virtual {v3}, Lcom/android/dialer/contactinfo/ContactInfoCache;->disableRequestProcessing()V

    .line 286
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 287
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/dialer/calllog/CallTypeHelper;

    invoke-direct {v0, v2}, Lcom/android/dialer/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 289
    .local v0, "callTypeHelper":Lcom/android/dialer/calllog/CallTypeHelper;
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->getCallLogCache(Landroid/content/Context;)Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    .line 292
    new-instance v1, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    invoke-direct {v1, v3, v2, v4}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/dialer/calllog/calllogcache/CallLogCache;)V

    .line 294
    .local v1, "phoneCallDetailsHelper":Lcom/android/dialer/calllog/PhoneCallDetailsHelper;
    new-instance v3, Lcom/android/dialer/calllog/CallLogListItemHelper;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    invoke-direct {v3, v1, v2, v4}, Lcom/android/dialer/calllog/CallLogListItemHelper;-><init>(Lcom/android/dialer/calllog/PhoneCallDetailsHelper;Landroid/content/res/Resources;Lcom/android/dialer/calllog/calllogcache/CallLogCache;)V

    .line 293
    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogListItemHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    .line 295
    new-instance v3, Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogGroupBuilder;-><init>(Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    .line 297
    new-instance v3, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 296
    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 299
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPrefs:Landroid/content/SharedPreferences;

    .line 300
    new-instance v3, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 301
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->maybeShowVoicemailPromoCard()V

    .line 267
    return-void
.end method

.method private bindCallLogListViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 30
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 494
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/database/Cursor;

    .line 495
    .local v13, "c":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 496
    return-void

    .line 499
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getGroupSize(I)I

    move-result v15

    .line 501
    .local v15, "count":I
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 502
    .local v21, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v5, "[,;]"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v20

    .line 503
    .local v20, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v19

    .line 504
    .local v19, "num":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v5, v0

    if-lez v5, :cond_3

    const/4 v5, 0x0

    aget-object v6, v19, v5

    .line 505
    .local v6, "number":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 506
    .local v16, "countryIso":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 507
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivityType:I

    const/16 v25, 0x2

    move/from16 v0, v25

    if-eq v5, v0, :cond_4

    .line 508
    sget v5, Lcom/android/dialer/calllog/CallLogQuery;->POST_DIAL_DIGITS:I

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 509
    .local v9, "postDialDigits":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 510
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivityType:I

    const/16 v25, 0x2

    move/from16 v0, v25

    if-eq v5, v0, :cond_5

    .line 511
    sget v5, Lcom/android/dialer/calllog/CallLogQuery;->VIA_NUMBER:I

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 512
    .local v23, "viaNumber":Ljava/lang/String;
    :goto_2
    const/16 v5, 0x11

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 514
    .local v7, "numberPresentation":I
    const/16 v5, 0x12

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 515
    const/16 v25, 0x13

    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 513
    move-object/from16 v0, v25

    invoke-static {v5, v0}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v11

    .line 516
    .local v11, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    invoke-virtual {v5, v11}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->getAccountIcon(Landroid/telecom/PhoneAccountHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 517
    .local v12, "accountIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {v13}, Lcom/android/dialer/calllog/ContactInfoHelper;->getContactInfo(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v14

    .line 519
    .local v14, "cachedContactInfo":Lcom/android/dialer/calllog/ContactInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    invoke-virtual {v5, v11, v6}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v10

    .line 524
    .local v10, "isVoicemailNumber":Z
    sget-object v18, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    .line 525
    .local v18, "info":Lcom/android/dialer/calllog/ContactInfo;
    invoke-static {v6, v7}, Lcom/android/dialer/util/PhoneNumberUtil;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v10, :cond_6

    .line 530
    :cond_1
    :goto_3
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 531
    const/4 v8, 0x0

    .line 533
    :goto_4
    new-instance v4, Lcom/android/dialer/PhoneCallDetails;

    .line 534
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 533
    invoke-direct/range {v4 .. v10}, Lcom/android/dialer/PhoneCallDetails;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 536
    .local v4, "details":Lcom/android/dialer/PhoneCallDetails;
    move-object/from16 v0, v23

    iput-object v0, v4, Lcom/android/dialer/PhoneCallDetails;->viaNumber:Ljava/lang/String;

    .line 537
    iput-object v11, v4, Lcom/android/dialer/PhoneCallDetails;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 538
    iput-object v12, v4, Lcom/android/dialer/PhoneCallDetails;->accountIcon:Landroid/graphics/drawable/Drawable;

    .line 539
    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/android/dialer/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 540
    const/4 v5, 0x2

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/dialer/PhoneCallDetails;->date:J

    .line 541
    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/dialer/PhoneCallDetails;->duration:J

    .line 542
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallFeatures(Landroid/database/Cursor;I)I

    move-result v5

    iput v5, v4, Lcom/android/dialer/PhoneCallDetails;->features:I

    .line 543
    const/4 v5, 0x7

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 544
    const/16 v5, 0x16

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->transcription:Ljava/lang/String;

    .line 545
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v5

    iput-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    .line 547
    const/16 v5, 0x15

    invoke-interface {v13, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 548
    const/16 v5, 0x15

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->dataUsage:Ljava/lang/Long;

    .line 551
    :cond_2
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_5
    move-object/from16 v24, p1

    .line 564
    check-cast v24, Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    .line 565
    .local v24, "views":Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    .line 566
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->rowId:J

    .line 568
    move-object/from16 v0, v24

    iput-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 569
    iget-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->postDialDigits:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->postDialDigits:Ljava/lang/String;

    .line 570
    iget-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    .line 571
    move-object/from16 v0, v24

    iput v7, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->numberPresentation:I

    .line 573
    move-object/from16 v0, v24

    iput-object v11, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 575
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallIds(Landroid/database/Cursor;I)[J

    move-result-object v5

    move-object/from16 v0, v24

    iput-object v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callIds:[J

    .line 576
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/dialer/calllog/ContactInfoHelper;->isBusiness(I)Z

    move-result v5

    move-object/from16 v0, v24

    iput-boolean v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->isBusiness:Z

    .line 577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v0, v4, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    move/from16 v25, v0

    .line 578
    iget-object v0, v4, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    .line 577
    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v5, v0, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->numberType:Ljava/lang/String;

    .line 580
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 581
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->workIconView:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    .line 582
    iget-wide v0, v4, Lcom/android/dialer/PhoneCallDetails;->contactUserType:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    cmp-long v5, v26, v28

    if-nez v5, :cond_9

    const/4 v5, 0x0

    .line 581
    :goto_6
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->rowId:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getDayGroupForCall(J)I

    move-result v17

    .line 586
    .local v17, "currentGroup":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/dialer/calllog/CallLogAdapter;->getPreviousDayGroup(Landroid/database/Cursor;)I

    move-result v22

    .line 587
    .local v22, "previousGroup":I
    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    .line 588
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->dayGroupHeader:Landroid/widget/TextView;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->dayGroupHeader:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getGroupDescription(I)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivityType:I

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v5, v0, :cond_b

    .line 595
    const/4 v5, 0x4

    move-object/from16 v0, v24

    iput v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callType:I

    .line 597
    const-string/jumbo v5, "_id"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 596
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/dialer/database/VoicemailArchiveContract$VoicemailArchive;->buildWithId(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    iput-object v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    .line 609
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogListItemHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mFilterString:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v4, v1}, Lcom/android/dialer/calllog/CallLogListItemHelper;->setPhoneCallDetails(Lcom/android/dialer/calllog/CallLogListItemViewHolder;Lcom/android/dialer/PhoneCallDetails;Ljava/lang/String;)V

    .line 611
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->rowId:J

    move-wide/from16 v28, v0

    cmp-long v5, v26, v28

    if-nez v5, :cond_f

    .line 614
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    .line 615
    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->showActions(Z)V

    .line 619
    :goto_9
    invoke-virtual/range {v24 .. v24}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->updatePhoto()V

    .line 621
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogListItemHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mFilterString:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v4, v1}, Lcom/android/dialer/calllog/CallLogListItemHelper;->setPhoneCallDetails(Lcom/android/dialer/calllog/CallLogListItemViewHolder;Lcom/android/dialer/PhoneCallDetails;Ljava/lang/String;)V

    .line 493
    return-void

    .line 504
    .end local v4    # "details":Lcom/android/dialer/PhoneCallDetails;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "numberPresentation":I
    .end local v9    # "postDialDigits":Ljava/lang/String;
    .end local v10    # "isVoicemailNumber":Z
    .end local v11    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v12    # "accountIcon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "cachedContactInfo":Lcom/android/dialer/calllog/ContactInfo;
    .end local v16    # "countryIso":Ljava/lang/String;
    .end local v17    # "currentGroup":I
    .end local v18    # "info":Lcom/android/dialer/calllog/ContactInfo;
    .end local v22    # "previousGroup":I
    .end local v23    # "viaNumber":Ljava/lang/String;
    .end local v24    # "views":Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    :cond_3
    const-string/jumbo v6, ""

    .restart local v6    # "number":Ljava/lang/String;
    goto/16 :goto_0

    .line 508
    .restart local v16    # "countryIso":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, ""

    .restart local v9    # "postDialDigits":Ljava/lang/String;
    goto/16 :goto_1

    .line 511
    :cond_5
    const-string/jumbo v23, ""

    .restart local v23    # "viaNumber":Ljava/lang/String;
    goto/16 :goto_2

    .line 527
    .restart local v7    # "numberPresentation":I
    .restart local v10    # "isVoicemailNumber":Z
    .restart local v11    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .restart local v12    # "accountIcon":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "cachedContactInfo":Lcom/android/dialer/calllog/ContactInfo;
    .restart local v18    # "info":Lcom/android/dialer/calllog/ContactInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/contactinfo/ContactInfoCache;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1, v14}, Lcom/android/dialer/contactinfo/ContactInfoCache;->getValue(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v18

    goto/16 :goto_3

    .line 531
    :cond_7
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .local v8, "formattedNumber":Ljava/lang/CharSequence;
    goto/16 :goto_4

    .line 552
    .end local v8    # "formattedNumber":Ljava/lang/CharSequence;
    .restart local v4    # "details":Lcom/android/dialer/PhoneCallDetails;
    :cond_8
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iput-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 553
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    .line 554
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->nameAlternative:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->nameAlternative:Ljava/lang/CharSequence;

    .line 555
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v5}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v5

    iput v5, v4, Lcom/android/dialer/PhoneCallDetails;->nameDisplayOrder:I

    .line 556
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iput v5, v4, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    .line 557
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 558
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    iput-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 559
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    iput v5, v4, Lcom/android/dialer/PhoneCallDetails;->sourceType:I

    .line 560
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->objectId:Ljava/lang/String;

    .line 561
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/dialer/calllog/ContactInfo;->userType:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/dialer/PhoneCallDetails;->contactUserType:J

    goto/16 :goto_5

    .line 582
    .restart local v24    # "views":Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_6

    .line 591
    .restart local v17    # "currentGroup":I
    .restart local v22    # "previousGroup":I
    :cond_a
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->dayGroupHeader:Landroid/widget/TextView;

    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 601
    :cond_b
    iget-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    const/16 v25, 0x0

    aget v5, v5, v25

    const/16 v25, 0x4

    move/from16 v0, v25

    if-eq v5, v0, :cond_c

    .line 602
    iget-object v5, v4, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    const/16 v25, 0x0

    aget v5, v5, v25

    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v5, v0, :cond_d

    .line 603
    :cond_c
    const/16 v5, 0x10

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_e

    const/4 v5, 0x1

    :goto_a
    iput-boolean v5, v4, Lcom/android/dialer/PhoneCallDetails;->isRead:Z

    .line 605
    :cond_d
    const/4 v5, 0x4

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v24

    iput v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callType:I

    .line 606
    const/4 v5, 0x6

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    iput-object v5, v0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    goto/16 :goto_8

    .line 603
    :cond_e
    const/4 v5, 0x0

    goto :goto_a

    .line 617
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->showActions(Z)V

    goto/16 :goto_9
.end method

.method private collapseExpandedCard()V
    .locals 2

    .prologue
    .line 700
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    .line 701
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    .line 699
    return-void
.end method

.method private createCallLogEntryViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 13
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 413
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 414
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040034

    invoke-virtual {v10, v1, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 417
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 419
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    .line 420
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    .line 421
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogListItemHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    .line 422
    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 423
    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 424
    new-instance v8, Lcom/android/dialer/calllog/CallLogAdapter$6;

    invoke-direct {v8, p0}, Lcom/android/dialer/calllog/CallLogAdapter$6;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    .line 439
    iget v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivityType:I

    const/4 v12, 0x2

    if-ne v2, v12, :cond_0

    const/4 v9, 0x1

    :cond_0
    move-object v2, p0

    .line 415
    invoke-static/range {v0 .. v9}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->create(Landroid/view/View;Landroid/content/Context;Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;Landroid/view/View$OnClickListener;Lcom/android/dialer/calllog/calllogcache/CallLogCache;Lcom/android/dialer/calllog/CallLogListItemHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;Z)Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    move-result-object v11

    .line 441
    .local v11, "viewHolder":Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    iget-object v1, v11, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callLogEntryView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, v11}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 442
    iget-object v1, v11, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callLogEntryView:Landroid/support/v7/widget/CardView;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 444
    iget-object v1, v11, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 446
    return-object v11
.end method

.method private dismissVoicemailPromoCard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 914
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show_voicemail_promo_card"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 915
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mShowVoicemailPromoCard:Z

    .line 916
    invoke-virtual {p0, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyItemRemoved(I)V

    .line 913
    return-void
.end method

.method private expandViewHolderActions(Lcom/android/dialer/calllog/CallLogListItemViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    .prologue
    .line 221
    iget v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 222
    iget v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyItemChanged(I)V

    .line 225
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->showActions(Z)V

    .line 226
    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    .line 227
    iget-wide v0, p1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->rowId:J

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    .line 218
    return-void
.end method

.method private getCallFeatures(Landroid/database/Cursor;I)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "features":I
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 816
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 817
    const/16 v3, 0x14

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 818
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 821
    return v0
.end method

.method private getCallIds(Landroid/database/Cursor;I)[J
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "groupSize"    # I

    .prologue
    .line 872
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 873
    .local v2, "startingPosition":I
    new-array v0, p2, [J

    .line 875
    .local v0, "ids":[J
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 876
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 877
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 879
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 880
    return-object v0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x4

    .line 792
    iget v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivityType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 793
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v5, v3, v4

    return-object v3

    .line 795
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 796
    .local v2, "position":I
    new-array v0, p2, [I

    .line 797
    .local v0, "callTypes":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 798
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 799
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 802
    return-object v0
.end method

.method private getDayGroupForCall(J)I
    .locals 3
    .param p1, "callId"    # J

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 781
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private getGroupDescription(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "group"    # I

    .prologue
    .line 890
    if-nez p1, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 892
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreviousDayGroup(Landroid/database/Cursor;)I
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 752
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 753
    .local v4, "startingPosition":I
    const/4 v0, -0x1

    .line 754
    .local v0, "dayGroup":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 758
    iget-boolean v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mShowVoicemailPromoCard:Z

    if-eqz v5, :cond_2

    move v1, v4

    .line 760
    .local v1, "previousViewPosition":I
    :goto_0
    iget v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    if-ne v1, v5, :cond_0

    .line 761
    iget v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    if-ne v1, v5, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v5

    .line 760
    if-eqz v5, :cond_1

    .line 762
    :cond_0
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 763
    .local v2, "previousRowId":J
    invoke-direct {p0, v2, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->getDayGroupForCall(J)I

    move-result v0

    .line 766
    .end local v1    # "previousViewPosition":I
    .end local v2    # "previousRowId":J
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 767
    return v0

    .line 759
    :cond_2
    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "previousViewPosition":I
    goto :goto_0
.end method

.method private maybeShowVoicemailPromoCard()V
    .locals 4

    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "show_voicemail_promo_card"

    .line 905
    const/4 v3, 0x1

    .line 904
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 906
    .local v0, "showPromoCard":Z
    iget v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActivityType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 907
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-eqz v1, :cond_0

    .line 906
    .end local v0    # "showPromoCard":Z
    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mShowVoicemailPromoCard:Z

    .line 903
    return-void

    .line 906
    .restart local v0    # "showPromoCard":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic addGroup(II)V
    .locals 0
    .param p1, "cursorPosition"    # I
    .param p2, "groupSize"    # I

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/dialer/calllog/GroupingListAdapter;->addGroup(II)V

    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 389
    return-void
.end method

.method public addVoicemailGroups(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addVoicemailGroups(Landroid/database/Cursor;)V

    .line 394
    return-void
.end method

.method protected bindVoicemailPromoCardViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    move-object v0, p1

    .line 479
    check-cast v0, Lcom/android/dialer/calllog/PromoCardViewHolder;

    .line 481
    .local v0, "promoCardViewHolder":Lcom/android/dialer/calllog/PromoCardViewHolder;
    invoke-virtual {v0}, Lcom/android/dialer/calllog/PromoCardViewHolder;->getSecondaryActionView()Landroid/view/View;

    move-result-object v1

    .line 482
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mVoicemailSettingsActionListener:Landroid/view/View$OnClickListener;

    .line 481
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    invoke-virtual {v0}, Lcom/android/dialer/calllog/PromoCardViewHolder;->getPrimaryActionView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mOkActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    return-void
.end method

.method public bridge synthetic changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-super {p0, p1}, Lcom/android/dialer/calllog/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic changeCursor(Landroid/database/Cursor;Z)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "voicemail"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/dialer/calllog/GroupingListAdapter;->changeCursor(Landroid/database/Cursor;Z)V

    return-void
.end method

.method public bridge synthetic changeCursorVoicemail(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-super {p0, p1}, Lcom/android/dialer/calllog/GroupingListAdapter;->changeCursorVoicemail(Landroid/database/Cursor;)V

    return-void
.end method

.method public clearDayGroups()V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 859
    return-void
.end method

.method protected createVoicemailPromoCardViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 926
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 927
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0400ea

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 929
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lcom/android/dialer/calllog/PromoCardViewHolder;->create(Landroid/view/View;)Lcom/android/dialer/calllog/PromoCardViewHolder;

    move-result-object v2

    .line 930
    .local v2, "viewHolder":Lcom/android/dialer/calllog/PromoCardViewHolder;
    return-object v2
.end method

.method disableRequestProcessingForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/contactinfo/ContactInfoCache;->disableRequestProcessing()V

    .line 831
    return-void
.end method

.method public getGroupSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mShowVoicemailPromoCard:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/dialer/calllog/GroupingListAdapter;->getGroupSize(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 655
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mShowVoicemailPromoCard:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sub-int v0, p1, v0

    .line 656
    iget v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    if-lt p1, v3, :cond_1

    .line 655
    :goto_1
    add-int/2addr v0, v1

    invoke-super {p0, v0}, Lcom/android/dialer/calllog/GroupingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 657
    goto :goto_1
.end method

.method public getItemCount()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 634
    invoke-super {p0}, Lcom/android/dialer/calllog/GroupingListAdapter;->getItemCount()I

    move-result v3

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mShowVoicemailPromoCard:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 635
    iget v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 634
    :goto_1
    sub-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 635
    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 640
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mShowVoicemailPromoCard:Z

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    return v0

    .line 643
    :cond_0
    invoke-super {p0, p1}, Lcom/android/dialer/calllog/GroupingListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "contactInfo"    # Lcom/android/dialer/calllog/ContactInfo;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/contactinfo/ContactInfoCache;->injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V

    .line 837
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/contactinfo/ContactInfoCache;->invalidate()V

    .line 357
    return-void
.end method

.method public invalidatePositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 708
    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    .line 709
    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    .line 707
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 349
    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v1, :cond_0

    .line 351
    return v0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindViewHolder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 466
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->bindCallLogListViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 470
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 458
    return-void

    .line 463
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->bindVoicemailPromoCardViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    .line 340
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 400
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 401
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->createVoicemailPromoCardViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0

    .line 403
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->createCallLogEntryViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->pauseCache()V

    .line 377
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenItemUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenItemUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    .line 374
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 312
    const-string/jumbo v0, "expanded_position"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 311
    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    .line 314
    const-string/jumbo v0, "expanded_row_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 313
    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    .line 309
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/contactinfo/ContactInfoCache;->start()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 305
    const-string/jumbo v0, "expanded_position"

    iget v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string/jumbo v0, "expanded_row_id"

    iget-wide v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedRowId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 304
    return-void
.end method

.method public onVoicemailDeleteUndo()V
    .locals 1

    .prologue
    .line 717
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenItemUri:Landroid/net/Uri;

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPendingHide:Z

    .line 721
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 716
    return-void
.end method

.method public onVoicemailDeleted(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 677
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenItemUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 679
    iget v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    .line 680
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    .line 692
    :goto_0
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->collapseExpandedCard()V

    .line 696
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenItemUri:Landroid/net/Uri;

    .line 676
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenItemUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->deleteVoicemail(Landroid/content/Context;Landroid/net/Uri;Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogAsyncTaskListener;)V

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPendingHide:Z

    goto :goto_0
.end method

.method public onVoicemailDeletedInDatabase()V
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPendingHide:Z

    if-eqz v0, :cond_0

    .line 733
    iget v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpandedPosition:I

    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPendingHide:Z

    .line 731
    :goto_0
    return-void

    .line 738
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenPosition:I

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHiddenItemUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method pauseCache()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/contactinfo/ContactInfoCache;->stop()V

    .line 385
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->reset()V

    .line 383
    return-void
.end method

.method public setDayGroup(JI)V
    .locals 3
    .param p1, "rowId"    # J
    .param p3, "dayGroup"    # I

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    :cond_0
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    .line 344
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mFilterString:Ljava/lang/String;

    .line 933
    return-void
.end method

.method public startCache()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/contactinfo/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/dialer/contactinfo/ContactInfoCache;->start()V

    .line 361
    :cond_0
    return-void
.end method
