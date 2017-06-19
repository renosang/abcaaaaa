.class public Lcom/android/dialer/list/ListsFragment;
.super Landroid/app/Fragment;
.source "ListsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field private mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

.field private mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mHasActiveVoicemailProvider:Z

.field private mHasFetchedVoicemailStatus:Z

.field private mHistoryFragment:Lcom/android/dialer/calllog/CallLogFragment;

.field private mOnPageChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRemoveView:Lcom/android/dialer/list/RemoveView;

.field private mRemoveViewContent:Landroid/view/View;

.field private mShowVoicemailTabAfterVoicemailStatusIsFetched:Z

.field private mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

.field private mTabIcons:[I

.field private mTabIndex:I

.field private mTabTitles:[Ljava/lang/String;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

.field private mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

.field private mVoicemailFragment:Lcom/android/dialer/calllog/CallLogFragment;

.field private mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/list/AllContactsFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/list/ListsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/list/ListsFragment;->mHasActiveVoicemailProvider:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mHistoryFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/list/SpeedDialFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/dialer/list/ListsFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mVoicemailFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/AllContactsFragment;)Lcom/android/dialer/list/AllContactsFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/ListsFragment;->mHistoryFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/SpeedDialFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/ListsFragment;->mVoicemailFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/dialer/list/ListsFragment;I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/list/ListsFragment;->mTabIndex:I

    .line 61
    return-void
.end method

.method private getRtlPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 450
    invoke-static {}, Lcom/android/dialer/util/DialerUtils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerAdapter:Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    .line 453
    :cond_0
    return p1
.end method

.method private removeVoicemailFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mVoicemailFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mVoicemailFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 484
    iput-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mVoicemailFragment:Lcom/android/dialer/calllog/CallLogFragment;

    .line 480
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "onPageChangeListener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    return-void
.end method

.method public getCurrentTabIndex()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/android/dialer/list/ListsFragment;->mTabIndex:I

    return v0
.end method

.method public getRemoveView()Lcom/android/dialer/list/RemoveView;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveView:Lcom/android/dialer/list/RemoveView;

    return-object v0
.end method

.method public getSpeedDialFragment()Lcom/android/dialer/list/SpeedDialFragment;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerAdapter:Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public markMissedCallsAsReadAndRemoveNotifications()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 421
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->removeMissedCallNotifications(Landroid/content/Context;)V

    .line 418
    :cond_0
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 191
    const-string/jumbo v0, "ListsFragment onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 192
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    .line 195
    iput-boolean v2, p0, Lcom/android/dialer/list/ListsFragment;->mHasFetchedVoicemailStatus:Z

    .line 197
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 198
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 199
    const-string/jumbo v1, "has_active_voicemail_provider"

    .line 198
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/list/ListsFragment;->mHasActiveVoicemailProvider:Z

    .line 201
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 190
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 225
    const-string/jumbo v1, "ListsFragment onCreateView"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v1, "ListsFragment inflate view"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 227
    const v1, 0x7f040068

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "parentView":Landroid/view/View;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 229
    const-string/jumbo v1, "ListsFragment setup views"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 230
    const v1, 0x7f0e0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 231
    new-instance v1, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;-><init>(Lcom/android/dialer/list/ListsFragment;Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerAdapter:Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

    .line 232
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerAdapter:Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 233
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 234
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 235
    invoke-virtual {p0, v4}, Lcom/android/dialer/list/ListsFragment;->showTab(I)V

    .line 237
    new-array v1, v8, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 239
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 240
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 241
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 243
    new-array v1, v8, [I

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabIcons:[I

    .line 244
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabIcons:[I

    const v2, 0x7f0200ea

    aput v2, v1, v4

    .line 245
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabIcons:[I

    const v2, 0x7f020126

    aput v2, v1, v6

    .line 246
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabIcons:[I

    const v2, 0x7f020118

    aput v2, v1, v7

    .line 247
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabIcons:[I

    const v2, 0x7f020149

    aput v2, v1, v5

    .line 249
    const v1, 0x7f0e0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ViewPagerTabs;

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    .line 250
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mTabIcons:[I

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->configureTabIcons([I)V

    .line 251
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 252
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/ListsFragment;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 254
    const v1, 0x7f0e016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/RemoveView;

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveView:Lcom/android/dialer/list/RemoveView;

    .line 255
    const v1, 0x7f0e016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveViewContent:Landroid/view/View;

    .line 257
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 258
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 259
    return-object v0
.end method

.method public onMissedCallsUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 376
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 377
    :cond_0
    return-void

    .line 380
    :cond_1
    const/4 v0, 0x0

    .line 382
    .local v0, "count":I
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 384
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 387
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->setUnreadCount(II)V

    .line 388
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->updateTab(I)V

    .line 375
    return-void

    .line 383
    :catchall_0
    move-exception v1

    .line 384
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 383
    throw v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 314
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/list/ListsFragment;->mTabIndex:I

    .line 290
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 291
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/list/ListsFragment;->mTabIndex:I

    .line 302
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/dialer/list/ListsFragment;->mShowVoicemailTabAfterVoicemailStatusIsFetched:Z

    .line 304
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 305
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->sendScreenViewForCurrentPosition()V

    .line 298
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 206
    const-string/jumbo v0, "ListsFragment onResume"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 210
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->sendScreenViewForCurrentPosition()V

    .line 216
    :cond_0
    new-instance v0, Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;)V

    .line 215
    iput-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    .line 217
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    .line 218
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchMissedCallsUnreadCount()V

    .line 219
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 205
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "statusCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 321
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/list/ListsFragment;->mHasFetchedVoicemailStatus:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v0, 0x1

    .line 330
    .local v0, "hasActiveVoicemailProvider":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/dialer/list/ListsFragment;->mHasActiveVoicemailProvider:Z

    if-eq v0, v1, :cond_2

    .line 331
    iput-boolean v0, p0, Lcom/android/dialer/list/ListsFragment;->mHasActiveVoicemailProvider:Z

    .line 332
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerAdapter:Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;->notifyDataSetChanged()V

    .line 334
    if-eqz v0, :cond_6

    .line 335
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/list/ViewPagerTabs;->updateTab(I)V

    .line 341
    :goto_1
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 342
    const-string/jumbo v2, "has_active_voicemail_provider"

    .line 341
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    :cond_2
    if-eqz v0, :cond_3

    .line 348
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailUnreadCount()V

    .line 351
    :cond_3
    iget-boolean v1, p0, Lcom/android/dialer/list/ListsFragment;->mHasActiveVoicemailProvider:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/dialer/list/ListsFragment;->mShowVoicemailTabAfterVoicemailStatusIsFetched:Z

    if-eqz v1, :cond_4

    .line 352
    iput-boolean v4, p0, Lcom/android/dialer/list/ListsFragment;->mShowVoicemailTabAfterVoicemailStatusIsFetched:Z

    .line 353
    invoke-virtual {p0, v3}, Lcom/android/dialer/list/ListsFragment;->showTab(I)V

    .line 320
    :cond_4
    return-void

    .line 329
    .end local v0    # "hasActiveVoicemailProvider":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "hasActiveVoicemailProvider":Z
    goto :goto_0

    .line 337
    :cond_6
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/list/ViewPagerTabs;->removeTab(I)V

    .line 338
    invoke-direct {p0}, Lcom/android/dialer/list/ListsFragment;->removeVoicemailFragment()V

    goto :goto_1
.end method

.method public onVoicemailUnreadCountFetched(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x3

    .line 359
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 360
    :cond_0
    return-void

    .line 363
    :cond_1
    const/4 v0, 0x0

    .line 365
    .local v0, "count":I
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 367
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 370
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->setUnreadCount(II)V

    .line 371
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->updateTab(I)V

    .line 358
    return-void

    .line 366
    :catchall_0
    move-exception v1

    .line 367
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 366
    throw v1
.end method

.method public sendScreenViewForCurrentPosition()V
    .locals 2

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getCurrentTabIndex()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 464
    :pswitch_0
    const/4 v0, 0x2

    .line 477
    .local v0, "screenType":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 456
    return-void

    .line 467
    .end local v0    # "screenType":I
    :pswitch_1
    const/4 v0, 0x3

    .line 468
    .restart local v0    # "screenType":I
    goto :goto_1

    .line 470
    .end local v0    # "screenType":I
    :pswitch_2
    const/4 v0, 0x5

    .line 471
    .restart local v0    # "screenType":I
    goto :goto_1

    .line 473
    .end local v0    # "screenType":I
    :pswitch_3
    const/4 v0, 0x4

    .restart local v0    # "screenType":I
    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public shouldShowActionBar()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showRemoveView(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 427
    iget-object v3, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveViewContent:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v3, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveView:Lcom/android/dialer/list/RemoveView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lcom/android/dialer/list/RemoveView;->setAlpha(F)V

    .line 429
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveView:Lcom/android/dialer/list/RemoveView;

    invoke-virtual {v0}, Lcom/android/dialer/list/RemoveView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    :goto_2
    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 426
    return-void

    .line 427
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    move v0, v2

    .line 428
    goto :goto_1

    :cond_2
    move v2, v1

    .line 429
    goto :goto_2
.end method

.method public showTab(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x3

    .line 274
    if-ne p1, v1, :cond_2

    .line 275
    iget-boolean v0, p0, Lcom/android/dialer/list/ListsFragment;->mHasActiveVoicemailProvider:Z

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v1}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-boolean v0, p0, Lcom/android/dialer/list/ListsFragment;->mHasFetchedVoicemailStatus:Z

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/list/ListsFragment;->mShowVoicemailTabAfterVoicemailStatusIsFetched:Z

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, p1}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public updateTabUnreadCounts()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchMissedCallsUnreadCount()V

    .line 409
    iget-boolean v0, p0, Lcom/android/dialer/list/ListsFragment;->mHasActiveVoicemailProvider:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailUnreadCount()V

    .line 406
    :cond_0
    return-void
.end method
