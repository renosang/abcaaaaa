.class public Lcom/android/dialer/calllog/CallLogActivity;
.super Lcom/android/dialer/TransactionSafeActivity;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogActivity$1;,
        Lcom/android/dialer/calllog/CallLogActivity$MSimViewPagerAdapter;,
        Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field private mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

.field private mClearButtonView:Landroid/widget/ImageView;

.field private mInSearchUi:Z

.field private mIsResumed:Z

.field private mMSimCallsFragment:Lcom/android/dialer/calllog/MSimCallLogFragment;

.field private mMissedCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

.field private final mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

.field private mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchView:Landroid/widget/EditText;

.field private mTabTitles:[Ljava/lang/String;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

.field private mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/calllog/CallLogActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mClearButtonView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/MSimCallLogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMSimCallsFragment:Lcom/android/dialer/calllog/MSimCallLogFragment;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/CallLogSearchFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/dialer/calllog/CallLogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/dialer/calllog/CallLogActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/dialer/calllog/CallLogActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/MSimCallLogFragment;)Lcom/android/dialer/calllog/MSimCallLogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMSimCallsFragment:Lcom/android/dialer/calllog/MSimCallLogFragment;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/dialer/calllog/CallLogActivity;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMissedCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/dialer/calllog/CallLogActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/dialer/calllog/CallLogActivity;I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogActivity;->getRtlPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/dialer/calllog/CallLogActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogActivity;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/dialer/calllog/CallLogActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogActivity;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/dialer/TransactionSafeActivity;-><init>()V

    .line 465
    new-instance v0, Lcom/android/dialer/calllog/CallLogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogActivity$1;-><init>(Lcom/android/dialer/calllog/CallLogActivity;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    .line 64
    return-void
.end method

.method private addSearchFragment()V
    .locals 3

    .prologue
    .line 408
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    if-eqz v2, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 412
    .local v0, "ft":Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/android/dialer/calllog/CallLogSearchFragment;

    invoke-direct {v1}, Lcom/android/dialer/calllog/CallLogSearchFragment;-><init>()V

    .line 413
    .local v1, "searchFragment":Landroid/app/Fragment;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 414
    const v2, 0x7f0e00df

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 415
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 407
    return-void
.end method

.method private enterSearchUi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 345
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mInSearchUi:Z

    .line 346
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    if-nez v1, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogActivity;->addSearchFragment()V

    .line 348
    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogSearchFragment;->setUserVisibleHint(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 353
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 354
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 355
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 356
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogActivity;->setupSearchUi()V

    .line 344
    return-void
.end method

.method private exitSearchUi()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 501
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 502
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    if-eqz v3, :cond_0

    .line 503
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    invoke-virtual {v3, v5}, Lcom/android/dialer/calllog/CallLogSearchFragment;->setUserVisibleHint(Z)V

    .line 505
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 507
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 508
    iput-object v6, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    .line 509
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 514
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 515
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMSimCallsFragment:Lcom/android/dialer/calllog/MSimCallLogFragment;

    if-eqz v3, :cond_3

    .line 516
    invoke-direct {p0, v4}, Lcom/android/dialer/calllog/CallLogActivity;->updateMSimFragmentVisibility(Z)V

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 523
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    if-eqz v3, :cond_2

    .line 524
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v3, v5}, Lcom/android/contacts/common/list/ViewPagerTabs;->setVisibility(I)V

    .line 526
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/dialer/calllog/CallLogActivity;->hideInputMethod(Landroid/view/View;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->invalidateOptionsMenu()V

    .line 528
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 529
    iput-boolean v5, p0, Lcom/android/dialer/calllog/CallLogActivity;->mInSearchUi:Z

    .line 500
    return-void

    .line 518
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

    invoke-virtual {v3}, Landroid/support/v13/app/FragmentPagerAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 519
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_4

    move v3, v4

    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/android/dialer/calllog/CallLogActivity;->updateFragmentVisibility(IZ)V

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v3, v5

    .line 519
    goto :goto_1
.end method

.method private getFragmentAt(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 396
    packed-switch p1, :pswitch_data_0

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0

    .line 400
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMissedCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRtlPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 338
    invoke-static {}, Lcom/android/dialer/util/DialerUtils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

    invoke-virtual {v0}, Landroid/support/v13/app/FragmentPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    .line 341
    :cond_0
    return p1
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 456
    const-string/jumbo v1, "input_method"

    .line 455
    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 457
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 454
    :cond_0
    return-void
.end method

.method private initMSimCallLog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 236
    const v1, 0x7f04006a

    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->setContentView(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 240
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 241
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 242
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 244
    const v1, 0x7f0e00e1

    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 246
    new-instance v1, Lcom/android/dialer/calllog/CallLogActivity$MSimViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/calllog/CallLogActivity$MSimViewPagerAdapter;-><init>(Lcom/android/dialer/calllog/CallLogActivity;Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

    .line 247
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 248
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 235
    return-void
.end method

.method private onDeleteCallLog()V
    .locals 2

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.MULTI_PICK_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogActivity;->startActivity(Landroid/content/Intent;)V

    .line 311
    return-void
.end method

.method private prepareSearchView()V
    .locals 5

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 420
    const v2, 0x7f0400d7

    const/4 v3, 0x0

    .line 419
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, "searchViewLayout":Landroid/view/View;
    const v1, 0x7f0e01f4

    .line 421
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchView:Landroid/widget/EditText;

    .line 423
    const v1, 0x7f0e01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mClearButtonView:Landroid/widget/ImageView;

    .line 424
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mClearButtonView:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/dialer/calllog/CallLogActivity$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/calllog/CallLogActivity$2;-><init>(Lcom/android/dialer/calllog/CallLogActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 431
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mClearButtonView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchView:Landroid/widget/EditText;

    new-instance v2, Lcom/android/dialer/calllog/CallLogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/calllog/CallLogActivity$3;-><init>(Lcom/android/dialer/calllog/CallLogActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 444
    new-instance v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    .line 445
    const/4 v4, -0x2

    .line 444
    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 442
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 418
    return-void
.end method

.method private sendScreenViewForChildFragment(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 334
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 333
    return-void
.end method

.method private setupSearchUi()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 360
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchView:Landroid/widget/EditText;

    if-nez v2, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogActivity;->prepareSearchView()V

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 364
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 365
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMSimCallsFragment:Lcom/android/dialer/calllog/MSimCallLogFragment;

    if-eqz v2, :cond_3

    .line 366
    invoke-direct {p0, v3}, Lcom/android/dialer/calllog/CallLogActivity;->updateMSimFragmentVisibility(Z)V

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 373
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    if-eqz v2, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v2, v4}, Lcom/android/contacts/common/list/ViewPagerTabs;->setVisibility(I)V

    .line 359
    :cond_2
    return-void

    .line 368
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

    invoke-virtual {v2}, Landroid/support/v13/app/FragmentPagerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 369
    invoke-direct {p0, v1, v3}, Lcom/android/dialer/calllog/CallLogActivity;->updateFragmentVisibility(IZ)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 450
    const-string/jumbo v1, "input_method"

    .line 449
    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 451
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 448
    return-void
.end method

.method private updateFragmentVisibility(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "visibility"    # Z

    .prologue
    .line 379
    if-ltz p1, :cond_0

    .line 380
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 381
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 383
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 378
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    return-void
.end method

.method private updateMSimFragmentVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMSimCallsFragment:Lcom/android/dialer/calllog/MSimCallLogFragment;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMSimCallsFragment:Lcom/android/dialer/calllog/MSimCallLogFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->setMenuVisibility(Z)V

    .line 391
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMSimCallsFragment:Lcom/android/dialer/calllog/MSimCallLogFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/MSimCallLogFragment;->setUserVisibleHint(Z)V

    .line 388
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/interactions/TouchPointManager;->setPoint(II)V

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/android/dialer/TransactionSafeActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 211
    instance-of v0, p1, Lcom/android/dialer/calllog/CallLogSearchFragment;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

    if-eqz v0, :cond_0

    .line 213
    check-cast p1, Lcom/android/dialer/calllog/CallLogSearchFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    .line 214
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogActivity;->setupSearchUi()V

    .line 210
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mInSearchUi:Z

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogActivity;->exitSearchUi()V

    .line 491
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-super {p0}, Lcom/android/dialer/TransactionSafeActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 167
    invoke-super {p0, p1}, Lcom/android/dialer/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 170
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 171
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 172
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 173
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 175
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogActivity;->initMSimCallLog()V

    .line 177
    return-void

    .line 180
    :cond_0
    const v4, 0x7f040032

    invoke-virtual {p0, v4}, Lcom/android/dialer/calllog/CallLogActivity;->setContentView(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, "startingTab":I
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 185
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 186
    const-string/jumbo v4, "android.provider.extra.CALL_TYPE_FILTER"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 187
    .local v1, "callType":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 188
    const/4 v3, 0x1

    .line 192
    .end local v1    # "callType":I
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    .line 193
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    const v5, 0x7f0d0296

    invoke-virtual {p0, v5}, Lcom/android/dialer/calllog/CallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 194
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mTabTitles:[Ljava/lang/String;

    const v5, 0x7f0d0297

    invoke-virtual {p0, v5}, Lcom/android/dialer/calllog/CallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 196
    const v4, 0x7f0e00e1

    invoke-virtual {p0, v4}, Lcom/android/dialer/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 198
    new-instance v4, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/dialer/calllog/CallLogActivity$ViewPagerAdapter;-><init>(Lcom/android/dialer/calllog/CallLogActivity;Landroid/app/FragmentManager;)V

    iput-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

    .line 199
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerAdapter:Landroid/support/v13/app/FragmentPagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 200
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v7}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 201
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 203
    const v4, 0x7f0e00e0

    invoke-virtual {p0, v4}, Lcom/android/dialer/calllog/CallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/ViewPagerTabs;

    iput-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    .line 205
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/list/ViewPagerTabs;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 206
    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 166
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 254
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 255
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 292
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogActivity;->isSafeToCommitTransactions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    return v3

    .line 296
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/DialtactsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogActivity;->startActivity(Landroid/content/Intent;)V

    .line 300
    return v3

    .line 301
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e022b

    if-ne v1, v2, :cond_2

    .line 302
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogActivity;->onDeleteCallLog()V

    .line 303
    return v3

    .line 304
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0e022a

    if-ne v1, v2, :cond_3

    .line 305
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogActivity;->enterSearchUi()V

    .line 306
    return v3

    .line 308
    :cond_3
    invoke-super {p0, p1}, Lcom/android/dialer/TransactionSafeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->onPageScrollStateChanged(I)V

    .line 329
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/common/list/ViewPagerTabs;->onPageScrolled(IFI)V

    .line 316
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mIsResumed:Z

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogActivity;->sendScreenViewForChildFragment(I)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->onPageSelected(I)V

    .line 321
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mIsResumed:Z

    .line 229
    invoke-super {p0}, Lcom/android/dialer/TransactionSafeActivity;->onPause()V

    .line 230
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mInSearchUi:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogActivity;->exitSearchUi()V

    .line 227
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 260
    const v3, 0x7f0e022b

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 261
    .local v1, "itemDeleteAll":Landroid/view/MenuItem;
    const v3, 0x7f0e022a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 263
    .local v2, "itemSearchCallLog":Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMSimCallsFragment:Lcom/android/dialer/calllog/MSimCallLogFragment;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 264
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mMSimCallsFragment:Lcom/android/dialer/calllog/MSimCallLogFragment;

    invoke-virtual {v3}, Lcom/android/dialer/calllog/MSimCallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    .line 265
    .local v0, "adapter":Lcom/android/dialer/calllog/CallLogAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    move v3, v4

    :goto_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 267
    .end local v0    # "adapter":Lcom/android/dialer/calllog/CallLogAdapter;
    :cond_1
    iget-boolean v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mInSearchUi:Z

    if-eqz v3, :cond_5

    .line 268
    if-eqz v1, :cond_2

    .line 269
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 271
    :cond_2
    if-eqz v2, :cond_3

    .line 272
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    :cond_3
    :goto_1
    return v5

    .restart local v0    # "adapter":Lcom/android/dialer/calllog/CallLogAdapter;
    :cond_4
    move v3, v5

    .line 265
    goto :goto_0

    .line 275
    .end local v0    # "adapter":Lcom/android/dialer/calllog/CallLogAdapter;
    :cond_5
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 276
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mSearchFragment:Lcom/android/dialer/calllog/CallLogSearchFragment;

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallLogSearchFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    .line 277
    .restart local v0    # "adapter":Lcom/android/dialer/calllog/CallLogAdapter;
    if-eqz v0, :cond_9

    .line 278
    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    .line 277
    :goto_2
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    .end local v0    # "adapter":Lcom/android/dialer/calllog/CallLogAdapter;
    :cond_6
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 283
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogActivity;->mAllCallsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    .line 284
    .restart local v0    # "adapter":Lcom/android/dialer/calllog/CallLogAdapter;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_7
    :goto_3
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_8
    move v3, v5

    .line 278
    goto :goto_2

    :cond_9
    move v3, v4

    .line 277
    goto :goto_2

    :cond_a
    move v4, v5

    .line 284
    goto :goto_3
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mIsResumed:Z

    .line 222
    invoke-super {p0}, Lcom/android/dialer/TransactionSafeActivity;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogActivity;->sendScreenViewForChildFragment(I)V

    .line 220
    return-void
.end method
