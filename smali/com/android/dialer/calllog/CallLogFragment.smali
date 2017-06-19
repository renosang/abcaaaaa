.class public Lcom/android/dialer/calllog/CallLogFragment;
.super Landroid/app/Fragment;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogFragment$1;,
        Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;,
        Lcom/android/dialer/calllog/CallLogFragment$HostInterface;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field private mCallLogFetched:Z

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field protected mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mCallTypeFilter:I

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mDateLimit:J

.field private final mDisplayUpdateHandler:Landroid/os/Handler;

.field private mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

.field private mEmptyLoaderRunning:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasReadCallLogPermission:Z

.field private mIsCallLogActivity:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mLogLimit:I

.field private mMenuVisible:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRefreshDataRequired:Z

.field private mScrollToTop:Z

.field private mVoicemailStatusFetched:Z


# direct methods
.method static synthetic -get0(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->rescheduleDisplayUpdate()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 152
    invoke-direct {p0, v0, v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(II)V

    .line 151
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "filterType"    # I

    .prologue
    .line 156
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(II)V

    .line 155
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "filterType"    # I
    .param p2, "logLimit"    # I

    .prologue
    .line 165
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(IIJ)V

    .line 164
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

    .line 185
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 97
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$1;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 123
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 124
    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHasReadCallLogPermission:Z

    .line 129
    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    .line 132
    iput v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 136
    iput v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    .line 145
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsCallLogActivity:Z

    .line 186
    iput p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 187
    iput p2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    .line 188
    iput-wide p3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    .line 185
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "filterType"    # I
    .param p2, "isCallLogActivity"    # Z

    .prologue
    .line 160
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(II)V

    .line 161
    iput-boolean p2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsCallLogActivity:Z

    .line 159
    return-void
.end method

.method private cancelDisplayUpdate()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    return-void
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 276
    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 274
    :cond_0
    return-void
.end method

.method private refreshData()V
    .locals 2

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->invalidateCache()V

    .line 460
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 462
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->fetchCalls()V

    .line 463
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 464
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchMissedCallsUnreadCount()V

    .line 465
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition()V

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 454
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private rescheduleDisplayUpdate()V
    .locals 10

    .prologue
    const-wide/32 v8, 0xea60

    const/4 v6, 0x1

    .line 519
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 523
    .local v2, "time":J
    rem-long v4, v2, v8

    sub-long v0, v8, v4

    .line 524
    .local v0, "millisUtilNextMinute":J
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDisplayUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 518
    .end local v0    # "millisUtilNextMinute":J
    .end local v2    # "time":J
    :cond_0
    return-void
.end method

.method private updateEmptyMessage(I)V
    .locals 5
    .param p1, "filterType"    # I

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 398
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 399
    return-void

    .line 402
    :cond_0
    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v2}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v3, 0x7f0d02fd

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 404
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v3, 0x7f0d02fa

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 405
    return-void

    .line 409
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 424
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

    .line 411
    :pswitch_1
    const v1, 0x7f0d0290

    .line 427
    .local v1, "messageId":I
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v2, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 428
    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsCallLogActivity:Z

    if-eqz v2, :cond_4

    .line 429
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 396
    :cond_2
    :goto_1
    return-void

    .line 414
    .end local v1    # "messageId":I
    :pswitch_2
    const v1, 0x7f0d0291

    .line 415
    .restart local v1    # "messageId":I
    goto :goto_0

    .line 417
    .end local v1    # "messageId":I
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsCallLogActivity:Z

    if-eqz v2, :cond_3

    .line 418
    const v1, 0x7f0d0316

    .restart local v1    # "messageId":I
    goto :goto_0

    .line 420
    .end local v1    # "messageId":I
    :cond_3
    const v1, 0x7f0d01f8

    .restart local v1    # "messageId":I
    goto :goto_0

    .line 430
    :cond_4
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v3, 0x7f0200b3

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 432
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    const v3, 0x7f0d028f

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    goto :goto_1

    .line 409
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateOnTransition()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->updateVoicemailNotifications(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public fetchCalls()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    iget-wide v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IJ)V

    .line 391
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsCallLogActivity:Z

    if-nez v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->updateTabUnreadCounts()V

    .line 389
    :cond_0
    return-void
.end method

.method getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-object v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    return v2

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->invalidatePositions()V

    .line 221
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 222
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 226
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v0, 0x1

    .line 227
    .local v0, "showListView":Z
    :goto_0
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 228
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    if-nez v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 230
    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v1, :cond_4

    .line 237
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v3, 0x5

    if-le v1, v3, :cond_3

    .line 239
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/dialer/calllog/CallLogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogFragment$2;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    .line 255
    :cond_4
    iput-boolean v5, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogFetched:Z

    .line 256
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    .line 257
    return v5

    .line 226
    .end local v0    # "showListView":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "showListView":Z
    goto :goto_0

    :cond_6
    move v1, v3

    .line 227
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 193
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    const-string/jumbo v3, "filter_type"

    iget v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    .line 196
    const-string/jumbo v3, "log_limit"

    iget v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    .line 197
    const-string/jumbo v3, "date_limit"

    iget-wide v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    .line 198
    const-string/jumbo v3, "is_call_log_activity"

    iget-boolean v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsCallLogActivity:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsCallLogActivity:Z

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 203
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "currentCountryIso":Ljava/lang/String;
    new-instance v3, Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    invoke-direct {v3, v0, v2, p0, v4}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    .line 206
    const-string/jumbo v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 205
    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 207
    sget-object v3, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 208
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 209
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 208
    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 192
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 289
    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 290
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->setupView(Landroid/view/View;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    .line 291
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 374
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 369
    return-void
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 490
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 491
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 492
    return-void

    .line 495
    :cond_0
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 496
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1, v4}, Landroid/support/v13/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 489
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 498
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_2
    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsCallLogActivity:Z

    if-nez v1, :cond_1

    .line 500
    check-cast v0, Lcom/android/dialer/calllog/CallLogFragment$HostInterface;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/android/dialer/calllog/CallLogFragment$HostInterface;->showDialpad()V

    goto :goto_0
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 285
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->cancelDisplayUpdate()V

    .line 357
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->onPause()V

    .line 358
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 355
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

    .line 507
    if-ne p1, v1, :cond_0

    .line 508
    array-length v0, p3

    if-lt v0, v1, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 510
    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 506
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 338
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 339
    .local v0, "hasReadCallLogPermission":Z
    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHasReadCallLogPermission:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 343
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 344
    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->updateEmptyMessage(I)V

    .line 347
    :cond_0
    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHasReadCallLogPermission:Z

    .line 348
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V

    .line 349
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogAdapter;->onResume()V

    .line 351
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->rescheduleDisplayUpdate()V

    .line 335
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 380
    const-string/jumbo v0, "filter_type"

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 381
    const-string/jumbo v0, "log_limit"

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    const-string/jumbo v0, "date_limit"

    iget-wide v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 383
    const-string/jumbo v0, "is_call_log_activity"

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsCallLogActivity:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 378
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 329
    new-instance v1, Lcom/android/dialer/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dialer/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    .line 328
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 331
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 325
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition()V

    .line 365
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 362
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 319
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 320
    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateEmptyMessage(I)V

    .line 321
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 318
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 266
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    return-void

    .line 270
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    .line 271
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    .line 264
    return-void
.end method

.method public onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 282
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 442
    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 443
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 444
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    .line 445
    if-nez p1, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition()V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V

    goto :goto_0
.end method

.method protected setupView(Landroid/view/View;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "voicemailPlaybackPresenter"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 296
    const v2, 0x7f0e00e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 297
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 298
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 299
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 300
    const v2, 0x7f0e0094

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/widget/EmptyContentView;

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    .line 302
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyListView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v2, p0}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    .line 304
    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsCallLogActivity:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 306
    .local v0, "activityType":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "currentCountryIso":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 310
    new-instance v3, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    invoke-static {v2, p0, v3, p2, v0}, Lcom/android/dialerbind/ObjectFactory;->newCallLogAdapter(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    .line 313
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->fetchCalls()V

    .line 295
    return-void

    .line 305
    .end local v0    # "activityType":I
    .end local v1    # "currentCountryIso":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x3

    .restart local v0    # "activityType":I
    goto :goto_0
.end method
