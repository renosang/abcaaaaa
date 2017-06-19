.class public final Lcom/android/dialer/calllog/CallLogListItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CallLogListItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field public accountHandle:Landroid/telecom/PhoneAccountHandle;

.field public actionsView:Landroid/view/View;

.field public addToExistingContactButtonView:Landroid/view/View;

.field public blockId:Ljava/lang/Integer;

.field public callButtonView:Landroid/view/View;

.field public callIds:[J

.field public final callLogEntryView:Landroid/support/v7/widget/CardView;

.field public callType:I

.field public callTypeOrLocation:Ljava/lang/CharSequence;

.field public callWithNoteButtonView:Landroid/view/View;

.field public countryIso:Ljava/lang/String;

.field public createNewContactButtonView:Landroid/view/View;

.field public final dayGroupHeader:Landroid/widget/TextView;

.field public detailsButtonView:Landroid/view/View;

.field public displayNumber:Ljava/lang/String;

.field public info:Lcom/android/dialer/calllog/ContactInfo;

.field public final isArchiveTab:Z

.field public isBusiness:Z

.field private final mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

.field private final mCallLogListItemHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

.field private final mContext:Landroid/content/Context;

.field private mExpandCollapseListener:Landroid/view/View$OnClickListener;

.field private final mExtendedBlockingButtonRenderer:Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;

.field private mExtendedBlockingViewStub:Landroid/view/ViewStub;

.field private final mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field private final mFilteredNumberDialogCallback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

.field private final mPhotoSize:I

.field private final mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field private mVoicemailPrimaryActionButtonClicked:Z

.field public nameOrNumber:Ljava/lang/CharSequence;

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public numberType:Ljava/lang/String;

.field public final phoneCallDetailsViews:Lcom/android/dialer/calllog/PhoneCallDetailsViews;

.field public postDialDigits:Ljava/lang/String;

.field public final primaryActionButtonView:Landroid/widget/ImageView;

.field public final primaryActionView:Landroid/view/View;

.field public final quickContactView:Landroid/widget/QuickContactBadge;

.field public final rootView:Landroid/view/View;

.field public rowId:J

.field public sendMessageView:Landroid/view/View;

.field public videoCallButtonView:Landroid/view/View;

.field public voicemailPlaybackView:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

.field public voicemailUri:Ljava/lang/String;

.field public workIconView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;Landroid/view/View$OnClickListener;Lcom/android/dialer/calllog/calllogcache/CallLogCache;Lcom/android/dialer/calllog/CallLogListItemHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;Landroid/view/View;Landroid/widget/QuickContactBadge;Landroid/view/View;Lcom/android/dialer/calllog/PhoneCallDetailsViews;Landroid/support/v7/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventListener"    # Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;
    .param p3, "expandCollapseListener"    # Landroid/view/View$OnClickListener;
    .param p4, "callLogCache"    # Lcom/android/dialer/calllog/calllogcache/CallLogCache;
    .param p5, "callLogListItemHelper"    # Lcom/android/dialer/calllog/CallLogListItemHelper;
    .param p6, "voicemailPlaybackPresenter"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p7, "filteredNumberAsyncQueryHandler"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    .param p8, "filteredNumberDialogCallback"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;
    .param p9, "rootView"    # Landroid/view/View;
    .param p10, "quickContactView"    # Landroid/widget/QuickContactBadge;
    .param p11, "primaryActionView"    # Landroid/view/View;
    .param p12, "phoneCallDetailsViews"    # Lcom/android/dialer/calllog/PhoneCallDetailsViews;
    .param p13, "callLogEntryView"    # Landroid/support/v7/widget/CardView;
    .param p14, "dayGroupHeader"    # Landroid/widget/TextView;
    .param p15, "primaryActionButtonView"    # Landroid/widget/ImageView;
    .param p16, "isArchiveTab"    # Z

    .prologue
    .line 242
    invoke-direct {p0, p9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 244
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    .line 245
    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    .line 246
    iput-object p4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    .line 247
    iput-object p5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mCallLogListItemHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    .line 248
    iput-object p6, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 249
    iput-object p7, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 250
    iput-object p8, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mFilteredNumberDialogCallback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .line 252
    iput-object p9, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->rootView:Landroid/view/View;

    .line 253
    iput-object p10, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->quickContactView:Landroid/widget/QuickContactBadge;

    .line 254
    iput-object p11, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    .line 255
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    .line 256
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callLogEntryView:Landroid/support/v7/widget/CardView;

    .line 257
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->dayGroupHeader:Landroid/widget/TextView;

    .line 258
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    .line 259
    const v2, 0x7f0e00ec

    invoke-virtual {p9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->workIconView:Landroid/widget/ImageView;

    .line 260
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->isArchiveTab:Z

    .line 261
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 262
    .local v1, "resources":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mPhotoSize:I

    .line 265
    move-object/from16 v0, p12

    iget-object v2, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 266
    move-object/from16 v0, p12

    iget-object v2, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 268
    const/4 v2, 0x0

    invoke-virtual {p10, v2}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->hasPrioritizedMimeType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p10, v2}, Landroid/widget/QuickContactBadge;->setPrioritizedMimeType(Ljava/lang/String;)V

    .line 272
    :cond_0
    move-object/from16 v0, p15

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    invoke-virtual {p11, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 276
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/dialerbind/ObjectFactory;->newExtendedBlockingButtonRenderer(Landroid/content/Context;Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;)Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;

    move-result-object v2

    .line 275
    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExtendedBlockingButtonRenderer:Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;

    .line 241
    return-void
.end method

.method private bindActionButtons()V
    .locals 15

    .prologue
    .line 487
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->numberPresentation:I

    invoke-static {v4, v5}, Lcom/android/dialer/util/PhoneNumberUtil;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v9

    .line 489
    .local v9, "canPlaceCallToNumber":Z
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v9, :cond_6

    .line 490
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 491
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    const v5, 0x7f0e00f6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 493
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    const v6, 0x7f0d02ba

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 492
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/CharSequence;

    .line 494
    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    const/4 v13, 0x0

    aput-object v7, v6, v13

    .line 492
    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 491
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    .line 496
    const v5, 0x7f0e00f7

    .line 495
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 497
    .local v8, "callTypeOrLocationView":Landroid/widget/TextView;
    iget v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callTypeOrLocation:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 501
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    :goto_0
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 509
    .end local v8    # "callTypeOrLocationView":Landroid/widget/TextView;
    :goto_1
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    invoke-virtual {v4}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->isVideoEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v9, :cond_7

    .line 510
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    iget-object v4, v4, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v4}, Lcom/android/dialer/calllog/CallTypeIconsView;->isVideoShown()Z

    move-result v4

    .line 509
    if-eqz v4, :cond_7

    .line 511
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/dialer/calllog/IntentProvider;->getReturnVideoCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 512
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 518
    :goto_2
    iget v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-eqz v4, :cond_1

    .line 519
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 531
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->setVisibility(I)V

    .line 534
    :cond_2
    :goto_3
    iget v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 535
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 542
    :goto_4
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v4, v4, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 543
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    .line 544
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v5, v5, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v6, v6, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget v13, v13, Lcom/android/dialer/calllog/ContactInfo;->type:I

    const/4 v14, 0x1

    .line 543
    invoke-static {v5, v6, v7, v13, v14}, Lcom/android/dialer/calllog/IntentProvider;->getAddContactIntentProvider(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 545
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    .line 548
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v5, v5, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v6, v6, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v7, v7, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget v13, v13, Lcom/android/dialer/calllog/ContactInfo;->type:I

    const/4 v14, 0x0

    .line 547
    invoke-static {v5, v6, v7, v13, v14}, Lcom/android/dialer/calllog/IntentProvider;->getAddContactIntentProvider(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 549
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 555
    :goto_5
    if-eqz v9, :cond_b

    .line 556
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/dialer/calllog/IntentProvider;->getSendSmsIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 557
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 562
    :goto_6
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mCallLogListItemHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    invoke-virtual {v4, p0}, Lcom/android/dialer/calllog/CallLogListItemHelper;->setActionContentDescriptions(Lcom/android/dialer/calllog/CallLogListItemViewHolder;)V

    .line 565
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4, v5}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->doesAccountSupportCallSubject(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v11

    .line 567
    .local v11, "supportsCallSubject":Z
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v10

    .line 568
    .local v10, "isVoicemailNumber":Z
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callWithNoteButtonView:Landroid/view/View;

    .line 569
    if-eqz v11, :cond_3

    if-eqz v10, :cond_c

    :cond_3
    const/16 v4, 0x8

    .line 568
    :goto_7
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 571
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExtendedBlockingButtonRenderer:Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;

    if-eqz v4, :cond_4

    .line 572
    const/4 v4, 0x7

    new-array v4, v4, [Landroid/view/View;

    .line 573
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 574
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 575
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 576
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 577
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callWithNoteButtonView:Landroid/view/View;

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 578
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 579
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    const/4 v6, 0x6

    aput-object v5, v4, v6

    .line 572
    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 581
    .local v1, "completeLogListItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 582
    .local v3, "blockedNumberVisibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 585
    .local v2, "extendedBlockingVisibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;

    .line 589
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 590
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    .line 591
    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 592
    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    .line 585
    invoke-direct/range {v0 .. v7}, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v0, "viewHolderInfo":Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExtendedBlockingButtonRenderer:Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;

    invoke-interface {v4, v0}, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;->setViewHolderInfo(Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;)V

    .line 595
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExtendedBlockingButtonRenderer:Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExtendedBlockingViewStub:Landroid/view/ViewStub;

    invoke-interface {v4, v5}, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;->render(Landroid/view/ViewStub;)V

    .line 486
    .end local v0    # "viewHolderInfo":Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;
    .end local v1    # "completeLogListItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v2    # "extendedBlockingVisibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v3    # "blockedNumberVisibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_4
    return-void

    .line 498
    .end local v10    # "isVoicemailNumber":Z
    .end local v11    # "supportsCallSubject":Z
    .restart local v8    # "callTypeOrLocationView":Landroid/widget/TextView;
    :cond_5
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callTypeOrLocation:Ljava/lang/CharSequence;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 505
    .end local v8    # "callTypeOrLocationView":Landroid/widget/TextView;
    :cond_6
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 514
    :cond_7
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 520
    :cond_8
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->setVisibility(I)V

    .line 522
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 523
    .local v12, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 524
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    iget-boolean v6, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mVoicemailPrimaryActionButtonClicked:Z

    .line 523
    invoke-virtual {v4, v5, v12, v6}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->setPlaybackView(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Landroid/net/Uri;Z)V

    .line 525
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mVoicemailPrimaryActionButtonClicked:Z

    .line 527
    iget-boolean v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->isArchiveTab:Z

    if-nez v4, :cond_2

    .line 528
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v4, v12}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->markVoicemailAsRead(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_3

    .line 537
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_9
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    .line 539
    iget-wide v6, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->rowId:J

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callIds:[J

    const/4 v13, 0x0

    invoke-static {v6, v7, v5, v13}, Lcom/android/dialer/calllog/IntentProvider;->getCallDetailIntentProvider(J[JLjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v5

    .line 538
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 551
    :cond_a
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 552
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 559
    :cond_b
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 569
    .restart local v10    # "isVoicemailNumber":Z
    .restart local v11    # "supportsCallSubject":Z
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_7
.end method

.method public static create(Landroid/view/View;Landroid/content/Context;Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;Landroid/view/View$OnClickListener;Lcom/android/dialer/calllog/calllogcache/CallLogCache;Lcom/android/dialer/calllog/CallLogListItemHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;Z)Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    .locals 18
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventListener"    # Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;
    .param p3, "expandCollapseListener"    # Landroid/view/View$OnClickListener;
    .param p4, "callLogCache"    # Lcom/android/dialer/calllog/calllogcache/CallLogCache;
    .param p5, "callLogListItemHelper"    # Lcom/android/dialer/calllog/CallLogListItemHelper;
    .param p6, "voicemailPlaybackPresenter"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p7, "filteredNumberAsyncQueryHandler"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    .param p8, "filteredNumberDialogCallback"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;
    .param p9, "isArchiveTab"    # Z

    .prologue
    .line 291
    new-instance v1, Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    .line 301
    const v2, 0x7f0e00a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/QuickContactBadge;

    .line 302
    const v2, 0x7f0e00e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 303
    invoke-static/range {p0 .. p0}, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->fromView(Landroid/view/View;)Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    move-result-object v13

    .line 304
    const v2, 0x7f0e00e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/CardView;

    .line 305
    const v2, 0x7f0e00e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 306
    const v2, 0x7f0e00f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p0

    move/from16 v17, p9

    .line 291
    invoke-direct/range {v1 .. v17}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;-><init>(Landroid/content/Context;Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;Landroid/view/View$OnClickListener;Lcom/android/dialer/calllog/calllogcache/CallLogCache;Lcom/android/dialer/calllog/CallLogListItemHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;Landroid/view/View;Landroid/widget/QuickContactBadge;Landroid/view/View;Lcom/android/dialer/calllog/PhoneCallDetailsViews;Landroid/support/v7/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    return-object v1
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 703
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 705
    .local v21, "resources":Landroid/content/res/Resources;
    invoke-static/range {p0 .. p0}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->getCallLogCache(Landroid/content/Context;)Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    move-result-object v7

    .line 706
    .local v7, "callLogCache":Lcom/android/dialer/calllog/calllogcache/CallLogCache;
    new-instance v20, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v7}, Lcom/android/dialer/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/dialer/calllog/calllogcache/CallLogCache;)V

    .line 709
    .local v20, "phoneCallDetailsHelper":Lcom/android/dialer/calllog/PhoneCallDetailsHelper;
    new-instance v3, Lcom/android/dialer/calllog/CallLogListItemViewHolder;

    .line 714
    new-instance v8, Lcom/android/dialer/calllog/CallLogListItemHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1, v7}, Lcom/android/dialer/calllog/CallLogListItemHelper;-><init>(Lcom/android/dialer/calllog/PhoneCallDetailsHelper;Landroid/content/res/Resources;Lcom/android/dialer/calllog/calllogcache/CallLogCache;)V

    .line 718
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 719
    new-instance v13, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 720
    new-instance v14, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 721
    invoke-static/range {p0 .. p0}, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->createForTest(Landroid/content/Context;)Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    move-result-object v15

    .line 722
    new-instance v16, Landroid/support/v7/widget/CardView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 723
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 724
    new-instance v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 711
    const/4 v5, 0x0

    .line 712
    const/4 v6, 0x0

    .line 715
    const/4 v9, 0x0

    .line 716
    const/4 v10, 0x0

    .line 717
    const/4 v11, 0x0

    .line 725
    const/16 v19, 0x0

    move-object/from16 v4, p0

    .line 709
    invoke-direct/range {v3 .. v19}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;-><init>(Landroid/content/Context;Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;Landroid/view/View$OnClickListener;Lcom/android/dialer/calllog/calllogcache/CallLogCache;Lcom/android/dialer/calllog/CallLogListItemHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;Landroid/view/View;Landroid/widget/QuickContactBadge;Landroid/view/View;Lcom/android/dialer/calllog/PhoneCallDetailsViews;Landroid/support/v7/widget/CardView;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 726
    .local v3, "viewHolder":Lcom/android/dialer/calllog/CallLogListItemViewHolder;
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    .line 727
    new-instance v4, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    .line 728
    new-instance v4, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    .line 729
    new-instance v4, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->workIconView:Landroid/widget/ImageView;

    .line 730
    return-object v3
.end method

.method private updatePrimaryActionButton(Z)V
    .locals 6
    .param p1, "isExpanded"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 445
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    if-nez p1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    const v2, 0x7f020120

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    .line 450
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 451
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    .line 449
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->numberPresentation:I

    invoke-static {v1, v2}, Lcom/android/dialer/util/PhoneNumberUtil;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 461
    .local v0, "isVoicemailNumber":Z
    if-eqz v0, :cond_2

    .line 463
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    .line 464
    invoke-static {}, Lcom/android/dialer/calllog/IntentProvider;->getReturnVoicemailCallIntentProvider()Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v2

    .line 463
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 470
    :goto_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    .line 471
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    const v3, 0x7f0d02c6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 470
    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 472
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    aput-object v4, v3, v5

    .line 470
    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    const v2, 0x7f0200cc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->postDialDigits:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v2

    .line 466
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 476
    .end local v0    # "isVoicemailNumber":Z
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 477
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionButtonView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public inflateActionViewStub()V
    .locals 3

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->rootView:Landroid/view/View;

    const v2, 0x7f0e00f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 405
    .local v0, "stub":Landroid/view/ViewStub;
    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    .line 408
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    .line 409
    const v2, 0x7f0e00f4

    .line 408
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    .line 410
    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->isArchiveTab:Z

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailPlaybackView:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-virtual {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->hideArchiveButton()V

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v2, 0x7f0e00f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    .line 416
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callButtonView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v2, 0x7f0e00f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    .line 419
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->videoCallButtonView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v2, 0x7f0e00f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    .line 422
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->createNewContactButtonView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 424
    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    .line 426
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->addToExistingContactButtonView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v2, 0x7f0e00fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    .line 429
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->sendMessageView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v2, 0x7f0e00fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    .line 432
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->detailsButtonView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v2, 0x7f0e00fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callWithNoteButtonView:Landroid/view/View;

    .line 435
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callWithNoteButtonView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const v2, 0x7f0e00fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 437
    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExtendedBlockingViewStub:Landroid/view/ViewStub;

    .line 441
    :cond_1
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->bindActionButtons()V

    .line 403
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 673
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e00f0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->voicemailUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e00fc

    if-ne v1, v2, :cond_4

    .line 678
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 679
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-wide v2, v2, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    .line 680
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v4, v4, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 681
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v5, v5, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 682
    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->nameOrNumber:Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/String;

    .line 683
    iget-boolean v7, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->isBusiness:Z

    .line 684
    iget-object v8, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 685
    iget-object v10, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v10, v10, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 687
    :goto_0
    iget-object v10, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->numberType:Ljava/lang/String;

    .line 688
    iget-object v11, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 677
    invoke-static/range {v1 .. v11}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->start(Landroid/app/Activity;JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    .line 672
    :cond_1
    :goto_1
    return-void

    .line 674
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mVoicemailPrimaryActionButtonClicked:Z

    .line 675
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->primaryActionView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 685
    :cond_3
    iget-object v9, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    goto :goto_0

    .line 690
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/dialer/calllog/IntentProvider;

    .line 691
    .local v12, "intentProvider":Lcom/android/dialer/calllog/IntentProvider;
    if-eqz v12, :cond_1

    .line 692
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v1}, Lcom/android/dialer/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 694
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 695
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 313
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    iget v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callType:I

    if-ne v0, v4, :cond_4

    .line 318
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0275

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 324
    :goto_0
    const v0, 0x7f0e001e

    .line 325
    const v1, 0x7f0d020e

    .line 324
    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 333
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->numberPresentation:I

    invoke-static {v0, v1}, Lcom/android/dialer/util/PhoneNumberUtil;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 341
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callType:I

    if-ne v0, v4, :cond_2

    .line 342
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 343
    const v0, 0x7f0e001f

    .line 344
    const v1, 0x7f0d020f

    .line 343
    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/compat/FilteredNumberCompat;->canAttemptBlockOperations(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->canBlockNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 348
    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mFilteredNumberAsyncQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 351
    new-instance v1, Lcom/android/dialer/calllog/CallLogListItemViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/calllog/CallLogListItemViewHolder$1;-><init>(Lcom/android/dialer/calllog/CallLogListItemViewHolder;Landroid/view/ContextMenu;)V

    .line 365
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    .line 350
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)Z

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 312
    return-void

    .line 321
    :cond_4
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/util/PhoneNumberUtil;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    const v0, 0x7f0e0020

    .line 337
    const v1, 0x7f0d0216

    .line 336
    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 373
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    .line 374
    .local v9, "resId":I
    const v0, 0x7f0e0021

    if-ne v9, v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->blockId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 377
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    const v5, 0x7f0e0154

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 378
    iget-object v6, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 379
    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mFilteredNumberDialogCallback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .line 375
    invoke-static/range {v0 .. v7}, Lcom/android/dialer/compat/FilteredNumberCompat;->showBlockNumberDialogFlow(Landroid/content/ContentResolver;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/app/FragmentManager;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V

    .line 380
    return v10

    .line 381
    :cond_0
    const v0, 0x7f0e001e

    if-ne v9, v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v0, v2, v1, v10}, Lcom/android/contacts/common/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 383
    return v10

    .line 384
    :cond_1
    const v0, 0x7f0e001f

    if-ne v9, v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    .line 386
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    iget-object v1, v1, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 385
    invoke-static {v0, v2, v1, v10}, Lcom/android/contacts/common/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 387
    return v10

    .line 388
    :cond_2
    const v0, 0x7f0e0020

    if-ne v9, v0, :cond_3

    .line 389
    new-instance v8, Landroid/content/Intent;

    .line 390
    const-string/jumbo v0, "android.intent.action.DIAL"

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 389
    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 392
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 393
    return v10

    .line 395
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public showActions(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->showOrHideVoicemailTranscriptionView(Z)V

    .line 607
    if-eqz p1, :cond_1

    .line 609
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->inflateActionViewStub()V

    .line 611
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 621
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->updatePrimaryActionButton(Z)V

    .line 604
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->actionsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showOrHideVoicemailTranscriptionView(Z)V
    .locals 3
    .param p1, "isExpanded"    # Z

    .prologue
    .line 625
    iget v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->callType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 626
    return-void

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    iget-object v0, v1, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    .line 630
    .local v0, "view":Landroid/widget/TextView;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    return-void

    .line 634
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    return-void
.end method

.method public updatePhoto()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 638
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->quickContactView:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v1, v1, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 640
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mCallLogCache:Lcom/android/dialer/calllog/calllogcache/CallLogCache;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z

    move-result v9

    .line 641
    .local v9, "isVoicemail":Z
    const/4 v7, 0x1

    .line 642
    .local v7, "contactType":I
    if-eqz v9, :cond_2

    .line 643
    const/4 v7, 0x3

    .line 648
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/common/util/UriUtils;->getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 650
    :goto_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->displayNumber:Ljava/lang/String;

    .line 651
    .local v8, "displayName":Ljava/lang/String;
    :goto_2
    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v6, v8, v10, v7, v5}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 654
    .local v6, "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-wide v0, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 655
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->quickContactView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v2, v2, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 656
    iget v3, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mPhotoSize:I

    .line 655
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 662
    :goto_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExtendedBlockingButtonRenderer:Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mExtendedBlockingButtonRenderer:Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;

    .line 664
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->number:Ljava/lang/String;

    .line 665
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->countryIso:Ljava/lang/String;

    .line 666
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->quickContactView:Landroid/widget/QuickContactBadge;

    .line 667
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->phoneCallDetailsViews:Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    iget-object v4, v4, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    .line 663
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;->updatePhotoAndLabelIfNecessary(Ljava/lang/String;Ljava/lang/String;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;)V

    .line 637
    :cond_1
    return-void

    .line 644
    .end local v6    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .end local v8    # "displayName":Ljava/lang/String;
    :cond_2
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->isBusiness:Z

    if-eqz v0, :cond_0

    .line 645
    const/4 v7, 0x2

    goto :goto_0

    .line 649
    :cond_3
    const/4 v10, 0x0

    .local v10, "lookupKey":Ljava/lang/String;
    goto :goto_1

    .line 650
    .end local v10    # "lookupKey":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-object v8, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    .restart local v8    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 658
    .restart local v6    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->quickContactView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogListItemViewHolder;->info:Lcom/android/dialer/calllog/ContactInfo;

    iget-wide v2, v2, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_3
.end method
