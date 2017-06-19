.class public Lcom/android/dialer/calllog/MSimCallLogFragment;
.super Landroid/app/Fragment;
.source "MSimCallLogFragment.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/MSimCallLogFragment$1;,
        Lcom/android/dialer/calllog/MSimCallLogFragment$2;,
        Lcom/android/dialer/calllog/MSimCallLogFragment$CustomContentObserver;,
        Lcom/android/dialer/calllog/MSimCallLogFragment$HostInterface;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field private mCallLogFetched:Z

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field protected mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mCallSubFilter:I

.field protected mCallTypeFilter:I

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mDateLimit:J

.field private mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

.field private mEmptyLoaderRunning:Z

.field private mFilterStatusSpinnerView:Landroid/widget/Spinner;

.field private mFilterSubSpinnerView:Landroid/widget/Spinner;

.field private final mHandler:Landroid/os/Handler;

.field private mHasReadCallLogPermission:Z

.field private mIsRecentsFragment:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mLogLimit:I

.field private mMenuVisible:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRefreshDataRequired:Z

.field private mScrollToTop:Z

.field private mStatusSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSubSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusFetched:Z

.field private final mVoicemailStatusObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/calllog/MSimCallLogFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallSubFilter:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/dialer/calllog/MSimCallLogFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/dialer/calllog/MSimCallLogFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/dialer/calllog/MSimCallLogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallSubFilter:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/dialer/calllog/MSimCallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/dialer/calllog/MSimCallLogFragment;I)V
    .locals 0
    .param p1, "sub"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->setSelectedSub(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 174
    invoke-direct {p0, v0, v0}, Lcom/android/dialer/calllog/MSimCallLogFragment;-><init>(II)V

    .line 173
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "filterType"    # I
    .param p2, "logLimit"    # I

    .prologue
    .line 182
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/dialer/calllog/MSimCallLogFragment;-><init>(IIJ)V

    .line 181
    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 5
    .param p1, "filterType"    # I
    .param p2, "logLimit"    # I
    .param p3, "dateLimit"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 202
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 110
    iput-boolean v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mHandler:Landroid/os/Handler;

    .line 125
    iput v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallSubFilter:I

    .line 142
    new-instance v0, Lcom/android/dialer/calllog/MSimCallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/MSimCallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/MSimCallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 143
    new-instance v0, Lcom/android/dialer/calllog/MSimCallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/MSimCallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/MSimCallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 144
    new-instance v0, Lcom/android/dialer/calllog/MSimCallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/MSimCallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/MSimCallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    .line 145
    iput-boolean v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    .line 147
    iput-boolean v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mHasReadCallLogPermission:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mMenuVisible:Z

    .line 153
    iput v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    .line 157
    iput v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mLogLimit:I

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mDateLimit:J

    .line 567
    new-instance v0, Lcom/android/dialer/calllog/MSimCallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/MSimCallLogFragment$1;-><init>(Lcom/android/dialer/calllog/MSimCallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mSubSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 586
    new-instance v0, Lcom/android/dialer/calllog/MSimCallLogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/MSimCallLogFragment$2;-><init>(Lcom/android/dialer/calllog/MSimCallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mStatusSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 203
    iput p1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    .line 204
    iput p2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mLogLimit:I

    .line 205
    iput-wide p3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mDateLimit:J

    .line 202
    return-void
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-boolean v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 310
    iput-boolean v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyLoaderRunning:Z

    .line 311
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 308
    :cond_0
    return-void
.end method

.method private getSelectedSub()I
    .locals 4

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 647
    const-string/jumbo v2, "call_log_sub"

    const/4 v3, -0x1

    .line 646
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 648
    .local v0, "sub":I
    return v0
.end method

.method private setSelectedSub(I)V
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 657
    const-string/jumbo v1, "call_log_sub"

    .line 656
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 654
    return-void
.end method

.method private updateEmptyMessage(I)V
    .locals 5
    .param p1, "filterType"    # I

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 442
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v2}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v3, 0x7f0d02fd

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 448
    iget-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v3, 0x7f0d02fa

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 449
    return-void

    .line 453
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 470
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected filter type in CallLogFragment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 455
    :pswitch_1
    const v1, 0x7f0d0313

    .line 473
    .local v1, "messageId":I
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v2, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 474
    iget-boolean v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mIsRecentsFragment:Z

    if-eqz v2, :cond_2

    .line 475
    iget-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v3, 0x7f0d028f

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 440
    :goto_1
    return-void

    .line 458
    .end local v1    # "messageId":I
    :pswitch_2
    const v1, 0x7f0d0314

    .line 459
    .restart local v1    # "messageId":I
    goto :goto_0

    .line 461
    .end local v1    # "messageId":I
    :pswitch_3
    const v1, 0x7f0d0290

    .line 462
    .restart local v1    # "messageId":I
    goto :goto_0

    .line 464
    .end local v1    # "messageId":I
    :pswitch_4
    const v1, 0x7f0d0291

    .line 465
    .restart local v1    # "messageId":I
    goto :goto_0

    .line 467
    .end local v1    # "messageId":I
    :pswitch_5
    const v1, 0x7f0d028f

    .line 468
    .restart local v1    # "messageId":I
    goto :goto_0

    .line 477
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    goto :goto_1

    .line 453
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateFilterSpinnerViews()V
    .locals 7

    .prologue
    const v6, 0x7f04006d

    const/16 v5, 0x8

    .line 608
    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterSubSpinnerView:Landroid/widget/Spinner;

    if-eqz v3, :cond_0

    .line 609
    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterStatusSpinnerView:Landroid/widget/Spinner;

    if-nez v3, :cond_1

    .line 610
    :cond_0
    const-string/jumbo v3, "CallLogFragment"

    const-string/jumbo v4, "The filter spinner view is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 615
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 616
    const-string/jumbo v4, "phone"

    .line 615
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 617
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 618
    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterSubSpinnerView:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 633
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 634
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 635
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/dialer/calllog/SpinnerContent;->setupStatusFilterContent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 633
    invoke-direct {v0, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 636
    .local v0, "filterStatusAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/dialer/calllog/SpinnerContent;>;"
    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterStatusSpinnerView:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 637
    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterStatusSpinnerView:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mStatusSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 638
    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterStatusSpinnerView:Landroid/widget/Spinner;

    iget v4, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    invoke-static {v3, v4}, Lcom/android/dialer/calllog/SpinnerContent;->setSpinnerContentValue(Landroid/widget/Spinner;I)V

    .line 607
    return-void

    .line 620
    .end local v0    # "filterStatusAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/dialer/calllog/SpinnerContent;>;"
    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 621
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 622
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/dialer/calllog/SpinnerContent;->setupSubFilterContent(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 620
    invoke-direct {v1, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 623
    .local v1, "filterSubAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/dialer/calllog/SpinnerContent;>;"
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    .line 624
    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterSubSpinnerView:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_0

    .line 626
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getSelectedSub()I

    move-result v3

    iput v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallSubFilter:I

    .line 627
    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterSubSpinnerView:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 628
    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterSubSpinnerView:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mSubSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 629
    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterSubSpinnerView:Landroid/widget/Spinner;

    iget v4, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallSubFilter:I

    invoke-static {v3, v4}, Lcom/android/dialer/calllog/SpinnerContent;->setSpinnerContentValue(Landroid/widget/Spinner;I)V

    goto :goto_0
.end method

.method private updateOnTransition(Z)V
    .locals 1
    .param p1, "onEntry"    # Z

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 533
    if-nez p1, :cond_2

    .line 534
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 536
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->removeMissedCallNotifications(Landroid/content/Context;)V

    .line 537
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->updateVoicemailNotifications(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public fetchCalls()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 426
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterSubSpinnerView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    iget v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallSubFilter:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 428
    .local v0, "subId":[I
    if-eqz v0, :cond_0

    .line 429
    const-string/jumbo v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fetchCalls subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    iget-wide v4, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mDateLimit:J

    aget v3, v0, v6

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IJI)V

    .line 437
    .end local v0    # "subId":[I
    :goto_0
    iget v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->updateEmptyMessage(I)V

    .line 425
    return-void

    .line 432
    .restart local v0    # "subId":[I
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    iget-wide v4, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mDateLimit:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IJ)V

    goto :goto_0

    .line 435
    .end local v0    # "subId":[I
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    iget-wide v4, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mDateLimit:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IJ)V

    goto :goto_0
.end method

.method getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-object v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    return v2

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 250
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v0, 0x1

    .line 251
    .local v0, "showListView":Z
    :goto_0
    iget-object v4, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    if-nez v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 254
    iget-boolean v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mScrollToTop:Z

    if-eqz v1, :cond_4

    .line 261
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_3

    .line 263
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/dialer/calllog/MSimCallLogFragment$3;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/MSimCallLogFragment$3;-><init>(Lcom/android/dialer/calllog/MSimCallLogFragment;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    iput-boolean v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mScrollToTop:Z

    .line 279
    :cond_4
    iput-boolean v5, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogFetched:Z

    .line 280
    invoke-direct {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    .line 281
    return v5

    .line 250
    .end local v0    # "showListView":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "showListView":Z
    goto :goto_0

    :cond_6
    move v1, v3

    .line 251
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 210
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    if-eqz p1, :cond_0

    .line 212
    const-string/jumbo v3, "filter_type"

    iget v5, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    .line 213
    const-string/jumbo v3, "log_limit"

    iget v5, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mLogLimit:I

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mLogLimit:I

    .line 214
    const-string/jumbo v3, "date_limit"

    iget-wide v6, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mDateLimit:J

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mDateLimit:J

    .line 217
    :cond_0
    iget v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mLogLimit:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mIsRecentsFragment:Z

    .line 219
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 220
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 221
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "currentCountryIso":Ljava/lang/String;
    new-instance v3, Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v5, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mLogLimit:I

    invoke-direct {v3, v0, v2, p0, v5}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V

    iput-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    .line 224
    const-string/jumbo v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 223
    iput-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 225
    sget-object v3, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 226
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 227
    iget-object v5, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 226
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    sget-object v3, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 229
    invoke-virtual {p0, v4}, Lcom/android/dialer/calllog/MSimCallLogFragment;->setHasOptionsMenu(Z)V

    .line 231
    iget v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 232
    invoke-static {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->getInstance(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 209
    :cond_1
    return-void

    .line 217
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "currentCountryIso":Ljava/lang/String;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 317
    const v2, 0x7f04006b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 319
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e00e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 320
    iget-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 321
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 322
    iget-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 323
    const v2, 0x7f0e0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/widget/EmptyContentView;

    iput-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    .line 324
    iget-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v3, 0x7f0200b3

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 325
    iget-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v2, p0}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    .line 326
    const v2, 0x7f0e0171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterSubSpinnerView:Landroid/widget/Spinner;

    .line 327
    const v2, 0x7f0e0172

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mFilterStatusSpinnerView:Landroid/widget/Spinner;

    .line 329
    invoke-direct {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->updateFilterSpinnerViews()V

    .line 331
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "currentCountryIso":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 335
    new-instance v3, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    iget-object v4, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 332
    invoke-static {v2, p0, v3, v4, v5}, Lcom/android/dialerbind/ObjectFactory;->newCallLogAdapter(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    .line 338
    iget-object v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 340
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->fetchCalls()V

    .line 341
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->pauseCache()V

    .line 398
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 400
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onDestroy()V

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 407
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 396
    return-void
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 543
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 544
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 545
    return-void

    .line 548
    :cond_0
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 549
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1, v4}, Lcom/android/dialer/calllog/MSimCallLogFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 542
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 550
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_2
    iget-boolean v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mIsRecentsFragment:Z

    if-eqz v1, :cond_1

    .line 552
    check-cast v0, Lcom/android/dialer/calllog/MSimCallLogFragment$HostInterface;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/android/dialer/calllog/MSimCallLogFragment$HostInterface;->showDialpad()V

    goto :goto_0
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 304
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onPause()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->pauseCache()V

    .line 385
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 380
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 559
    if-ne p1, v1, :cond_0

    .line 560
    array-length v0, p3

    if-lt v0, v1, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 562
    iput-boolean v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    .line 558
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 366
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 367
    .local v0, "hasReadCallLogPermission":Z
    iget-boolean v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mHasReadCallLogPermission:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 371
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    .line 372
    iget v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->updateEmptyMessage(I)V

    .line 374
    :cond_0
    iput-boolean v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mHasReadCallLogPermission:Z

    .line 375
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->refreshData()V

    .line 376
    iget-object v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->startCache()V

    .line 362
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 413
    const-string/jumbo v0, "filter_type"

    iget v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    const-string/jumbo v0, "log_limit"

    iget v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mLogLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    const-string/jumbo v0, "date_limit"

    iget-wide v2, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mDateLimit:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 417
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 419
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailPlaybackPresenter:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 411
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/android/dialer/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    .line 355
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mEmptyLoaderRunning:Z

    .line 358
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 352
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->updateOnTransition(Z)V

    .line 392
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 389
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 346
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 347
    iget v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->updateEmptyMessage(I)V

    .line 348
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 345
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 290
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    return-void

    .line 294
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mVoicemailStatusFetched:Z

    .line 295
    invoke-direct {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    .line 288
    return-void
.end method

.method public onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 299
    return-void
.end method

.method protected refreshData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 501
    iget-boolean v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->invalidateCache()V

    .line 505
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 507
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->fetchCalls()V

    .line 508
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 510
    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->updateOnTransition(Z)V

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mRefreshDataRequired:Z

    .line 499
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 488
    iget-boolean v0, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 489
    iput-boolean p1, p0, Lcom/android/dialer/calllog/MSimCallLogFragment;->mMenuVisible:Z

    .line 490
    if-nez p1, :cond_1

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->updateOnTransition(Z)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/dialer/calllog/MSimCallLogFragment;->refreshData()V

    goto :goto_0
.end method
