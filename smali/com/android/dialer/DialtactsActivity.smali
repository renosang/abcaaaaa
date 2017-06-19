.class public Lcom/android/dialer/DialtactsActivity;
.super Lcom/android/dialer/TransactionSafeActivity;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/dialer/dialpad/DialpadFragment$OnDialpadQueryChangedListener;
.implements Lcom/android/dialer/list/OnListFragmentScrolledListener;
.implements Lcom/android/dialer/calllog/CallLogFragment$HostInterface;
.implements Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;
.implements Lcom/android/dialer/list/SpeedDialFragment$HostInterface;
.implements Lcom/android/dialer/list/SearchFragment$HostInterface;
.implements Lcom/android/dialer/list/OnDragDropListener;
.implements Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/android/dialer/widget/ActionBarController$ActivityUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/DialtactsActivity$1;,
        Lcom/android/dialer/DialtactsActivity$2;,
        Lcom/android/dialer/DialtactsActivity$3;,
        Lcom/android/dialer/DialtactsActivity$4;,
        Lcom/android/dialer/DialtactsActivity$5;,
        Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;,
        Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;
    }
.end annotation


# static fields
.field public static final TAG_DIALPAD_FRAGMENT:Ljava/lang/String; = "dialpad"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mActionBarController:Lcom/android/dialer/widget/ActionBarController;

.field private mActionBarHeight:I

.field private mClearSearchOnPause:Z

.field private mConferenceDialButton:Landroid/widget/ImageButton;

.field private mDialCallButton:Landroid/view/View;

.field private mDialConferenceButtonPressed:Z

.field private mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

.field protected mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

.field private mDialpadQuery:Ljava/lang/String;

.field private mDragDropController:Lcom/android/dialer/list/DragDropController;

.field private mFirstLaunch:Z

.field private mFloatingActionButton:Landroid/widget/ImageButton;

.field private mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

.field private mInCallDialpadUp:Z

.field private mInDialpadSearch:Z

.field private mInRegularSearch:Z

.field private mIsDialpadShown:Z

.field private mIsLandscape:Z

.field private mIsRestarting:Z

.field private mListsFragment:Lcom/android/dialer/list/ListsFragment;

.field private mOverflowMenu:Landroid/widget/PopupMenu;

.field private mParentLayout:Landroid/support/design/widget/CoordinatorLayout;

.field private mPendingSearchViewQuery:Ljava/lang/String;

.field private final mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

.field private mPreviouslySelectedTabIndex:I

.field private mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

.field private final mSearchEditTextLayoutListener:Landroid/view/View$OnKeyListener;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchView:Landroid/widget/EditText;

.field private final mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

.field private mShowDialpadOnResume:Z

.field private mSlideIn:Landroid/view/animation/Animation;

.field mSlideInListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mSlideOut:Landroid/view/animation/Animation;

.field mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

.field private mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

.field private mStateSaved:Z

.field private mVoiceSearchButton:Landroid/view/View;

.field private mVoiceSearchQuery:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/widget/ActionBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/DragDropController;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/dialer/DialtactsActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/widget/FloatingActionButtonController;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/ListsFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/dialer/DialtactsActivity;)Landroid/support/design/widget/CoordinatorLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/support/design/widget/CoordinatorLayout;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/dialer/DialtactsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/dialer/DialtactsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->maybeExitSearchUi()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/dialer/DialtactsActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getFabAlignment()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/dialer/DialtactsActivity;ZLjava/lang/String;Z)V
    .locals 0
    .param p1, "smartDialSearch"    # Z
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->maybeEnterSearchUi()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->showFabInSearchUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/dialer/TransactionSafeActivity;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialConferenceButtonPressed:Z

    .line 182
    new-instance v0, Lcom/android/dialer/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$1;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSlideInListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    .line 192
    new-instance v0, Lcom/android/dialer/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$2;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    .line 307
    new-instance v0, Lcom/android/dialer/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$3;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    .line 354
    new-instance v0, Lcom/android/dialer/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$4;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 368
    new-instance v0, Lcom/android/dialer/DialtactsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/dialer/DialtactsActivity$5;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchEditTextLayoutListener:Landroid/view/View$OnKeyListener;

    .line 108
    return-void
.end method

.method private canIntentBeHandled(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1335
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1337
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x10000

    .line 1336
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1338
    .local v1, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private displayFragment(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1014
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->finish()V

    .line 1016
    return-void

    .line 1019
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->phoneIsInUse()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/android/dialer/dialpad/DialpadFragment;->isAddCallMode(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    move v0, v1

    .line 1020
    .local v0, "showDialpadChooser":Z
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1021
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/dialer/DialtactsActivity;->showDialpadFragment(Z)V

    .line 1022
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 1023
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1012
    :cond_3
    :goto_1
    return-void

    .end local v0    # "showDialpadChooser":Z
    :cond_4
    move v0, v2

    .line 1019
    goto :goto_0

    .line 1024
    .restart local v0    # "showDialpadChooser":Z
    :cond_5
    iput-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    goto :goto_1
.end method

.method private enterSearchUi(ZLjava/lang/String;Z)V
    .locals 6
    .param p1, "smartDialSearch"    # Z
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1058
    iget-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mStateSaved:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1062
    :cond_0
    return-void

    .line 1069
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1070
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v3, :cond_5

    .line 1071
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1077
    :cond_2
    :goto_0
    if-eqz p1, :cond_6

    .line 1078
    const-string/jumbo v1, "smartdial"

    .line 1082
    .local v1, "tag":Ljava/lang/String;
    :goto_1
    iput-boolean p1, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    .line 1083
    if-eqz p1, :cond_7

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    .line 1085
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    .line 1087
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/SearchFragment;

    .line 1088
    .local v0, "fragment":Lcom/android/dialer/list/SearchFragment;
    if-eqz p3, :cond_8

    .line 1089
    const/high16 v3, 0x10b0000

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 1093
    :goto_3
    if-nez v0, :cond_a

    .line 1094
    if-eqz p1, :cond_9

    .line 1095
    new-instance v0, Lcom/android/dialer/list/SmartDialSearchFragment;

    .end local v0    # "fragment":Lcom/android/dialer/list/SearchFragment;
    invoke-direct {v0}, Lcom/android/dialer/list/SmartDialSearchFragment;-><init>()V

    .line 1109
    .restart local v0    # "fragment":Lcom/android/dialer/list/SearchFragment;
    :goto_4
    const v3, 0x7f0e0153

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1114
    :goto_5
    invoke-virtual {v0, v4}, Lcom/android/dialer/list/SearchFragment;->setHasOptionsMenu(Z)V

    .line 1115
    invoke-virtual {v0, v5}, Lcom/android/dialer/list/SearchFragment;->setShowEmptyListForNullQuery(Z)V

    .line 1116
    if-nez p1, :cond_3

    .line 1117
    invoke-virtual {v0, p2, v4}, Lcom/android/dialer/list/SearchFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 1119
    :cond_3
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1121
    if-eqz p3, :cond_4

    .line 1122
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v3}, Lcom/android/dialer/list/ListsFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 1124
    :cond_4
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v3, v4}, Lcom/android/dialer/list/ListsFragment;->setUserVisibleHint(Z)V

    .line 1126
    if-eqz p1, :cond_b

    .line 1127
    const/4 v3, 0x7

    invoke-static {v3, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 1057
    :goto_6
    return-void

    .line 1072
    .end local v0    # "fragment":Lcom/android/dialer/list/SearchFragment;
    .end local v1    # "tag":Ljava/lang/String;
    :cond_5
    iget-boolean v3, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    if-eqz v3, :cond_2

    .line 1073
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1080
    :cond_6
    const-string/jumbo v1, "search"

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_1

    :cond_7
    move v3, v5

    .line 1083
    goto :goto_2

    .line 1091
    .restart local v0    # "fragment":Lcom/android/dialer/list/SearchFragment;
    :cond_8
    invoke-virtual {v2, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_3

    .line 1097
    :cond_9
    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newRegularSearchFragment()Lcom/android/dialer/list/RegularSearchFragment;

    move-result-object v0

    .line 1098
    new-instance v3, Lcom/android/dialer/DialtactsActivity$8;

    invoke-direct {v3, p0}, Lcom/android/dialer/DialtactsActivity$8;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    invoke-virtual {v0, v3}, Lcom/android/dialer/list/SearchFragment;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_4

    .line 1111
    :cond_a
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_5

    .line 1129
    :cond_b
    const/4 v3, 0x6

    invoke-static {v3, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    goto :goto_6
.end method

.method private exitSearchUi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1138
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mStateSaved:Z

    if-eqz v1, :cond_1

    .line 1139
    :cond_0
    return-void

    .line 1142
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_2

    .line 1145
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    .line 1148
    :cond_2
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->setNotInSearchUi()V

    .line 1151
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getFabAlignment()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 1152
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 1154
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    .line 1155
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/ListsFragment;->getCurrentTabIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/dialer/DialtactsActivity;->onPageScrolled(IFI)V

    .line 1156
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/ListsFragment;->getCurrentTabIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->onPageSelected(I)V

    .line 1158
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1159
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v1, :cond_4

    .line 1160
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1162
    :cond_4
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    if-eqz v1, :cond_5

    .line 1163
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1165
    :cond_5
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1167
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/ListsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 1169
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1177
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v1}, Lcom/android/dialer/widget/ActionBarController;->onSearchUiExited()V

    .line 1136
    return-void

    .line 1173
    :cond_6
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/ListsFragment;->sendScreenViewForCurrentPosition()V

    .line 1174
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/ListsFragment;->setUserVisibleHint(Z)V

    goto :goto_0
.end method

.method private getFabAlignment()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1504
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsLandscape:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1508
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 1505
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->getCurrentTabIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 1506
    return v1
.end method

.method private hideDialpadAndSearchUi()V
    .locals 2

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-eqz v0, :cond_0

    .line 931
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 929
    :goto_0
    return-void

    .line 933
    :cond_0
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    goto :goto_0
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 1041
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1043
    :cond_0
    return v4

    .line 1045
    :cond_1
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1046
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1047
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_2

    const-string/jumbo v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1048
    return v4

    .line 1051
    .end local v1    # "data":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 997
    const-string/jumbo v1, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 999
    .local v0, "callKey":Z
    if-eqz v0, :cond_0

    .line 1000
    invoke-static {p0, v3}, Lcom/android/dialer/util/TelecomUtil;->showInCallScreen(Landroid/content/Context;Z)V

    .line 1001
    const/4 v1, 0x1

    return v1

    .line 1004
    :cond_0
    return v3
.end method

.method private maybeEnterSearchUi()V
    .locals 3

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/dialer/DialtactsActivity;->enterSearchUi(ZLjava/lang/String;Z)V

    .line 1207
    :cond_0
    return-void
.end method

.method private maybeExitSearchUi()Z
    .locals 1

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    .line 1219
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    .line 1220
    const/4 v0, 0x1

    return v0

    .line 1222
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private phoneIsInUse()Z
    .locals 1

    .prologue
    .line 1331
    invoke-static {p0}, Lcom/android/dialer/util/TelecomUtil;->isInCall(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private prepareVoiceSearchButton()V
    .locals 3

    .prologue
    .line 938
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, "voiceIntent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->canIntentBeHandled(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 941
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setNotInSearchUi()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 925
    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    .line 926
    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    .line 924
    return-void
.end method

.method private setSearchBoxHint()V
    .locals 3

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 960
    const v2, 0x7f0e01f8

    .line 959
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/SearchEditTextLayout;

    .line 961
    .local v0, "searchEditTextLayout":Lcom/android/dialer/widget/SearchEditTextLayout;
    const v1, 0x7f0e01fb

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 962
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getSearchBoxHint()I

    move-result v2

    .line 961
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 958
    return-void
.end method

.method private showDialpadFragment(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 782
    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mStateSaved:Z

    if-eqz v1, :cond_1

    .line 783
    :cond_0
    return-void

    .line 785
    :cond_1
    iput-boolean v5, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    .line 787
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v1, v4}, Lcom/android/dialer/list/ListsFragment;->setUserVisibleHint(Z)V

    .line 789
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 790
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-nez v1, :cond_2

    .line 791
    new-instance v1, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {v1}, Lcom/android/dialer/dialpad/DialpadFragment;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    .line 792
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    const-string/jumbo v2, "dialpad"

    const v3, 0x7f0e0152

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 797
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setAnimate(Z)V

    .line 798
    invoke-static {v5, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 799
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 801
    if-eqz p1, :cond_3

    .line 802
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    .line 807
    :goto_1
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v1}, Lcom/android/dialer/widget/ActionBarController;->onDialpadUp()V

    .line 808
    invoke-virtual {p0, p1}, Lcom/android/dialer/DialtactsActivity;->setConferenceDialButtonVisibility(Z)V

    .line 810
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/ListsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 813
    const v1, 0x7f0d020a

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->setTitle(I)V

    .line 781
    return-void

    .line 794
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 804
    :cond_3
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setVisible(Z)V

    .line 805
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->maybeEnterSearchUi()V

    goto :goto_1
.end method

.method private showFabInSearchUi()V
    .locals 4

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 1227
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1228
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1226
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->changeIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1229
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getFabAlignment()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    .line 1230
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    .line 1225
    return-void
.end method

.method private showVideoCallWelcomeDialog()V
    .locals 2

    .prologue
    .line 1512
    invoke-static {p0}, Lcom/android/dialer/util/DialerUtils;->canShowWelcomeScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/VideoCallWelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1514
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1511
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateMissedCalls()V
    .locals 2

    .prologue
    .line 1519
    iget v0, p0, Lcom/android/dialer/DialtactsActivity;->mPreviouslySelectedTabIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->markMissedCallsAsReadAndRemoveNotifications()V

    .line 1518
    :cond_0
    return-void
.end method

.method private updateSearchFragmentPosition()V
    .locals 2

    .prologue
    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "fragment":Lcom/android/dialer/list/SearchFragment;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/SmartDialSearchFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 900
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    .line 904
    .end local v0    # "fragment":Lcom/android/dialer/list/SearchFragment;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/dialer/list/SearchFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 905
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/SearchFragment;->updatePosition(Z)V

    .line 897
    :cond_1
    return-void

    .line 901
    .restart local v0    # "fragment":Lcom/android/dialer/list/SearchFragment;
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/RegularSearchFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    .local v0, "fragment":Lcom/android/dialer/list/SearchFragment;
    goto :goto_0
.end method


# virtual methods
.method protected buildOptionsMenu(Landroid/view/View;)Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;
    .locals 3
    .param p1, "invoker"    # Landroid/view/View;

    .prologue
    .line 966
    new-instance v0, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;-><init>(Lcom/android/dialer/DialtactsActivity;Landroid/content/Context;Landroid/view/View;)V

    .line 967
    .local v0, "popupMenu":Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;
    const v1, 0x7f110002

    invoke-virtual {v0, v1}, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->inflate(I)V

    .line 968
    invoke-static {p0}, Lcom/android/dialerbind/ObjectFactory;->isVoicemailArchiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0e0232

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 971
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 972
    return-object v0
.end method

.method public commitDialpadFragmentHide()V
    .locals 3

    .prologue
    .line 889
    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mStateSaved:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleIn(I)V

    .line 888
    return-void

    .line 890
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 891
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 892
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-static {}, Lcom/android/contacts/common/interactions/TouchPointManager;->getInstance()Lcom/android/contacts/common/interactions/TouchPointManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/interactions/TouchPointManager;->setPoint(II)V

    .line 389
    :cond_0
    invoke-super {p0, p1}, Lcom/android/dialer/TransactionSafeActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getActionBarHeight()I
    .locals 1

    .prologue
    .line 1500
    iget v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarHeight:I

    return v0
.end method

.method public getDialpadHeight()I
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getDialpadHeight()I

    move-result v0

    return v0

    .line 1485
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getSearchBoxHint()I
    .locals 1

    .prologue
    .line 952
    const v0, 0x7f0d028a

    return v0
.end method

.method protected handleMenuSettings()V
    .locals 2

    .prologue
    .line 648
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/settings/DialerSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 649
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 647
    return-void
.end method

.method public hasSearchQuery()Z
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hideDialpadFragment(ZZ)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "clearDialpad"    # Z

    .prologue
    const/4 v2, 0x0

    .line 843
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 844
    :cond_0
    return-void

    .line 846
    :cond_1
    if-eqz p2, :cond_2

    .line 849
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getDigitsWidget()Landroid/widget/EditText;

    move-result-object v0

    .line 850
    const/4 v1, 0x2

    .line 849
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImportantForAccessibility(I)V

    .line 851
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->clearDialpad()V

    .line 852
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getDigitsWidget()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImportantForAccessibility(I)V

    .line 855
    :cond_2
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->isRecipientsShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 859
    :cond_3
    iput-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    .line 860
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->setAnimate(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/ListsFragment;->setUserVisibleHint(Z)V

    .line 862
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->sendScreenViewForCurrentPosition()V

    .line 864
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->updateSearchFragmentPosition()V

    .line 865
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 867
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getFabAlignment()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    .line 868
    if-eqz p1, :cond_6

    .line 869
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 874
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0}, Lcom/android/dialer/widget/ActionBarController;->onDialpadDown()V

    .line 876
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 877
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 878
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    .line 882
    :cond_4
    const v0, 0x7f0d0209

    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->setTitle(I)V

    .line 842
    return-void

    .line 856
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getFabAlignment()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    .line 857
    return-void

    .line 871
    :cond_6
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->commitDialpadFragmentHide()V

    goto :goto_0
.end method

.method public isActionBarShowing()Z
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0}, Lcom/android/dialer/widget/ActionBarController;->isActionBarShowing()Z

    move-result v0

    return v0
.end method

.method public isDialpadShown()Z
    .locals 1

    .prologue
    .line 1477
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    return v0
.end method

.method public isInSearchUi()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 751
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 752
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 754
    const-string/jumbo v2, "android.speech.extra.RESULTS"

    .line 753
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 755
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 756
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 757
    .local v0, "match":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchQuery:Ljava/lang/String;

    .line 765
    .end local v0    # "match":Ljava/lang/String;
    .end local v1    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/TransactionSafeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 750
    return-void

    .line 759
    .restart local v1    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v2, "DialtactsActivity"

    const-string/jumbo v3, "Voice search - nothing heard"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 762
    .end local v1    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v2, "DialtactsActivity"

    const-string/jumbo v3, "Voice search failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 625
    instance-of v1, p1, Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v1, :cond_2

    .line 626
    check-cast p1, Lcom/android/dialer/dialpad/DialpadFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    .line 627
    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mShowDialpadOnResume:Z

    if-eqz v1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 629
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 630
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 632
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_2
    instance-of v1, p1, Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v1, :cond_3

    .line 633
    check-cast p1, Lcom/android/dialer/list/SmartDialSearchFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    .line 634
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v1, p0}, Lcom/android/dialer/list/SmartDialSearchFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    .line 635
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/dialer/list/SmartDialSearchFragment;->setAddToContactNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_3
    instance-of v1, p1, Lcom/android/dialer/list/SearchFragment;

    if-eqz v1, :cond_4

    .line 639
    check-cast p1, Lcom/android/dialer/list/RegularSearchFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    .line 640
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mRegularSearchFragment:Lcom/android/dialer/list/RegularSearchFragment;

    invoke-virtual {v1, p0}, Lcom/android/dialer/list/RegularSearchFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V

    goto :goto_0

    .line 641
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_4
    instance-of v1, p1, Lcom/android/dialer/list/ListsFragment;

    if-eqz v1, :cond_0

    .line 642
    check-cast p1, Lcom/android/dialer/list/ListsFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    .line 643
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v1, p0}, Lcom/android/dialer/list/ListsFragment;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1182
    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mStateSaved:Z

    if-eqz v1, :cond_0

    .line 1183
    return-void

    .line 1185
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/dialer/DialtactsActivity;->setConferenceDialButtonImage(Z)V

    .line 1186
    invoke-virtual {p0, v3}, Lcom/android/dialer/DialtactsActivity;->setConferenceDialButtonVisibility(Z)V

    .line 1187
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->isRecipientsShown()Z

    move-result v0

    .line 1188
    .local v0, "mIsRecipientsShown":Z
    if-eqz v0, :cond_1

    .line 1189
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->hideAndClearDialConference()V

    .line 1192
    :cond_1
    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_5

    .line 1193
    :cond_2
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1194
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/SmartDialSearchFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1195
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/SmartDialSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 1196
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    .line 1198
    :cond_4
    invoke-virtual {p0, v3, v2}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 1181
    :goto_0
    return-void

    .line 1199
    :cond_5
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1200
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    .line 1201
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v1}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    goto :goto_0

    .line 1203
    :cond_6
    invoke-super {p0}, Lcom/android/dialer/TransactionSafeActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 655
    .local v1, "resId":I
    const v2, 0x7f0e0155

    if-ne v1, v2, :cond_4

    .line 656
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mDialConferenceButtonPressed:Z

    .line 657
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v2, :cond_0

    .line 658
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2, v4}, Lcom/android/dialer/dialpad/DialpadFragment;->showDialConference(Z)V

    .line 660
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v2}, Lcom/android/dialer/list/ListsFragment;->getCurrentTabIndex()I

    move-result v2

    .line 661
    const/4 v3, 0x2

    .line 660
    if-ne v2, v3, :cond_1

    .line 661
    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    if-eqz v2, :cond_2

    .line 666
    :cond_1
    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-nez v2, :cond_3

    .line 667
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    .line 668
    invoke-direct {p0, v5}, Lcom/android/dialer/DialtactsActivity;->showDialpadFragment(Z)V

    .line 669
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButton:Landroid/widget/ImageButton;

    const v3, 0x7f0200b9

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 670
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 671
    invoke-virtual {p0, v4}, Lcom/android/dialer/DialtactsActivity;->setConferenceDialButtonImage(Z)V

    .line 672
    invoke-virtual {p0, v5}, Lcom/android/dialer/DialtactsActivity;->setConferenceDialButtonVisibility(Z)V

    .line 653
    :goto_0
    return-void

    .line 664
    :cond_2
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v2

    .line 665
    const v3, 0x7f0d0286

    .line 662
    invoke-static {p0, v2, v3}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 675
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->dialButtonPressed()V

    goto :goto_0

    .line 677
    :cond_4
    const v2, 0x7f0e01fc

    if-ne v1, v2, :cond_5

    .line 679
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    const/4 v3, 0x1

    .line 679
    invoke-virtual {p0, v2, v3}, Lcom/android/dialer/DialtactsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0d0287

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 685
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5
    const v2, 0x7f0e0156

    if-ne v1, v2, :cond_6

    .line 686
    iput-boolean v5, p0, Lcom/android/dialer/DialtactsActivity;->mDialConferenceButtonPressed:Z

    .line 687
    invoke-direct {p0, v5}, Lcom/android/dialer/DialtactsActivity;->showDialpadFragment(Z)V

    .line 688
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    .line 689
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialCallButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->dialConferenceButtonPressed()V

    .line 691
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButton:Landroid/widget/ImageButton;

    const v3, 0x7f0200ba

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 692
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getFabAlignment()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    .line 693
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 694
    :cond_6
    const v2, 0x7f0e01fd

    if-ne v1, v2, :cond_7

    .line 695
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 697
    :cond_7
    const-string/jumbo v2, "DialtactsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected onClick event from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0e0155

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 394
    const-string/jumbo v6, "DialtactsActivity onCreate"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 395
    invoke-super {p0, p1}, Lcom/android/dialer/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 397
    iput-boolean v7, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    .line 399
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 400
    .local v4, "resources":Landroid/content/res/Resources;
    const v6, 0x7f0b0214

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarHeight:I

    .line 402
    const-string/jumbo v6, "DialtactsActivity setContentView"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 403
    const v6, 0x7f04005f

    invoke-virtual {p0, v6}, Lcom/android/dialer/DialtactsActivity;->setContentView(I)V

    .line 404
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 405
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    const-string/jumbo v6, "DialtactsActivity setup Views"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 409
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    const v6, 0x7f0400d9

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 410
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 411
    invoke-virtual {v0, v10}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    .line 414
    const v9, 0x7f0e01f8

    .line 413
    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/widget/SearchEditTextLayout;

    .line 415
    .local v5, "searchEditTextLayout":Lcom/android/dialer/widget/SearchEditTextLayout;
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSearchEditTextLayoutListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Lcom/android/dialer/widget/SearchEditTextLayout;->setPreImeKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 417
    new-instance v6, Lcom/android/dialer/widget/ActionBarController;

    invoke-direct {v6, p0, v5}, Lcom/android/dialer/widget/ActionBarController;-><init>(Lcom/android/dialer/widget/ActionBarController$ActivityUi;Lcom/android/dialer/widget/SearchEditTextLayout;)V

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    .line 419
    const v6, 0x7f0e01f4

    invoke-virtual {v5, v6}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    .line 420
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/dialer/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/text/TextWatcher;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 421
    const v6, 0x7f0e01fc

    invoke-virtual {v5, v6}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchButton:Landroid/view/View;

    .line 422
    const v6, 0x7f0e01fa

    invoke-virtual {v5, v6}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 423
    iget-object v9, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 422
    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    const v6, 0x7f0e01fb

    invoke-virtual {v5, v6}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 425
    iget-object v9, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 424
    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSearchViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/android/dialer/widget/SearchEditTextLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    new-instance v6, Lcom/android/dialer/DialtactsActivity$6;

    invoke-direct {v6, p0}, Lcom/android/dialer/DialtactsActivity$6;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    invoke-virtual {v5, v6}, Lcom/android/dialer/widget/SearchEditTextLayout;->setCallback(Lcom/android/dialer/widget/SearchEditTextLayout$Callback;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    .line 441
    const/4 v9, 0x2

    .line 440
    if-ne v6, v9, :cond_1

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/dialer/DialtactsActivity;->mIsLandscape:Z

    .line 442
    iput v8, p0, Lcom/android/dialer/DialtactsActivity;->mPreviouslySelectedTabIndex:I

    .line 444
    const v6, 0x7f0e0154

    .line 443
    invoke-virtual {p0, v6}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 445
    .local v1, "floatingActionButtonContainer":Landroid/view/View;
    invoke-virtual {p0, v11}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButton:Landroid/widget/ImageButton;

    .line 446
    invoke-virtual {p0, v11}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mDialCallButton:Landroid/view/View;

    .line 447
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    const v6, 0x7f0e0156

    invoke-virtual {p0, v6}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mConferenceDialButton:Landroid/widget/ImageButton;

    .line 449
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mConferenceDialButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    new-instance v6, Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 451
    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButton:Landroid/widget/ImageButton;

    .line 450
    invoke-direct {v6, p0, v1, v7}, Lcom/android/contacts/common/widget/FloatingActionButtonController;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageButton;)V

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 454
    const v6, 0x7f0e01fd

    invoke-virtual {v5, v6}, Lcom/android/dialer/widget/SearchEditTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 455
    .local v3, "optionsMenuButton":Landroid/widget/ImageButton;
    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    invoke-virtual {p0, v5}, Lcom/android/dialer/DialtactsActivity;->buildOptionsMenu(Landroid/view/View;)Lcom/android/dialer/DialtactsActivity$OptionsPopupMenu;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    .line 457
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 461
    if-nez p1, :cond_2

    .line 462
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 463
    new-instance v7, Lcom/android/dialer/list/ListsFragment;

    invoke-direct {v7}, Lcom/android/dialer/list/ListsFragment;-><init>()V

    const-string/jumbo v8, "favorites"

    const v9, 0x7f0e0153

    .line 462
    invoke-virtual {v6, v9, v7, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 464
    new-instance v7, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {v7}, Lcom/android/dialer/dialpad/DialpadFragment;-><init>()V

    const-string/jumbo v8, "dialpad"

    const v9, 0x7f0e0152

    .line 462
    invoke-virtual {v6, v9, v7, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 475
    :goto_1
    invoke-static {}, Lcom/android/dialer/util/DialerUtils;->isRtl()Z

    move-result v2

    .line 476
    .local v2, "isLayoutRtl":Z
    iget-boolean v6, p0, Lcom/android/dialer/DialtactsActivity;->mIsLandscape:Z

    if-eqz v6, :cond_5

    .line 478
    if-eqz v2, :cond_3

    const v6, 0x7f050018

    .line 477
    :goto_2
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    .line 480
    if-eqz v2, :cond_4

    const v6, 0x7f05001b

    .line 479
    :goto_3
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    .line 486
    :goto_4
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    sget-object v7, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 487
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    sget-object v7, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 489
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSlideInListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 490
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOutListener:Lcom/android/phone/common/animation/AnimationListenerAdapter;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 492
    const v6, 0x7f0e0151

    invoke-virtual {p0, v6}, Lcom/android/dialer/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/support/design/widget/CoordinatorLayout;

    .line 493
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/support/design/widget/CoordinatorLayout;

    new-instance v7, Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;

    invoke-direct {v7, p0, v10}, Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;-><init>(Lcom/android/dialer/DialtactsActivity;Lcom/android/dialer/DialtactsActivity$LayoutOnDragListener;)V

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 494
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 495
    new-instance v7, Lcom/android/dialer/DialtactsActivity$7;

    invoke-direct {v7, p0, v1}, Lcom/android/dialer/DialtactsActivity$7;-><init>(Lcom/android/dialer/DialtactsActivity;Landroid/view/View;)V

    .line 494
    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 511
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 513
    const-string/jumbo v6, "DialtactsActivity initialize smart dialing"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 514
    invoke-static {p0}, Lcom/android/dialerbind/DatabaseHelperManager;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    .line 515
    invoke-static {p0}, Lcom/android/dialer/dialpad/SmartDialPrefix;->initializeNanpSettings(Landroid/content/Context;)V

    .line 516
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 517
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 519
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 520
    const v7, 0x7f090016

    .line 519
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 521
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->showVideoCallWelcomeDialog()V

    .line 393
    :cond_0
    return-void

    .end local v1    # "floatingActionButtonContainer":Landroid/view/View;
    .end local v2    # "isLayoutRtl":Z
    .end local v3    # "optionsMenuButton":Landroid/widget/ImageButton;
    :cond_1
    move v6, v8

    .line 440
    goto/16 :goto_0

    .line 467
    .restart local v1    # "floatingActionButtonContainer":Landroid/view/View;
    .restart local v3    # "optionsMenuButton":Landroid/widget/ImageButton;
    :cond_2
    const-string/jumbo v6, "search_query"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    .line 468
    const-string/jumbo v6, "in_regular_search_ui"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    .line 469
    const-string/jumbo v6, "in_dialpad_search_ui"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    .line 470
    const-string/jumbo v6, "first_launch"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    .line 471
    const-string/jumbo v6, "is_dialpad_shown"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/dialer/DialtactsActivity;->mShowDialpadOnResume:Z

    .line 472
    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v6, p1}, Lcom/android/dialer/widget/ActionBarController;->restoreInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 478
    .restart local v2    # "isLayoutRtl":Z
    :cond_3
    const v6, 0x7f050019

    goto/16 :goto_2

    .line 480
    :cond_4
    const v6, 0x7f05001c

    goto/16 :goto_3

    .line 482
    :cond_5
    const v6, 0x7f050017

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    .line 483
    const v6, 0x7f05001a

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 977
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iput-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    if-eqz v0, :cond_1

    .line 982
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0}, Lcom/android/dialer/widget/ActionBarController;->restoreActionBarOffset()V

    .line 984
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onDialpadQueryChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadQuery:Ljava/lang/String;

    .line 1236
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v2, :cond_0

    .line 1237
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v2, p1}, Lcom/android/dialer/list/SmartDialSearchFragment;->setAddToContactNumber(Ljava/lang/String;)V

    .line 1240
    :cond_0
    sget-object v2, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/dialpad/SmartDialMap;

    .line 1239
    invoke-static {p1, v2}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v1

    .line 1242
    .local v1, "normalizedQuery":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1246
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1257
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1262
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->process_quote_emergency_unquote(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :cond_2
    :goto_0
    return-void

    .line 1252
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1253
    iput-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mPendingSearchViewQuery:Ljava/lang/String;

    .line 1255
    :cond_4
    return-void

    .line 1264
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onDialpadShown()V
    .locals 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/util/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 821
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialConferenceButtonPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 827
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getFabAlignment()I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->getAnimate()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    .line 828
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSlideIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 834
    :goto_1
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->updateSearchFragmentPosition()V

    .line 819
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialConferenceButtonPressed:Z

    goto :goto_0

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->setYFraction(F)V

    goto :goto_1
.end method

.method public onDialpadSpacerTouchWithEmptyQuery()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1271
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSmartDialSearchFragment:Lcom/android/dialer/list/SmartDialSearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/SmartDialSearchFragment;->isShowingPermissionRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1276
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1273
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 1274
    return v1
.end method

.method public onDragFinished(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/ListsFragment;->showRemoveView(Z)V

    .line 1357
    return-void
.end method

.method public onDragHovered(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "view"    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    .prologue
    .line 1350
    return-void
.end method

.method public onDragStarted(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "view"    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/ListsFragment;->showRemoveView(Z)V

    .line 1345
    return-void
.end method

.method public onDroppedOnRemove()V
    .locals 0

    .prologue
    .line 1362
    return-void
.end method

.method public onHomeInActionBarSelected()V
    .locals 0

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V

    .line 1422
    return-void
.end method

.method public onListFragmentScroll(III)V
    .locals 0
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1289
    return-void
.end method

.method public onListFragmentScrollStateChange(I)V
    .locals 2
    .param p1, "scrollState"    # I

    .prologue
    const/4 v1, 0x1

    .line 1281
    if-ne p1, v1, :cond_0

    .line 1282
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 1283
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mParentLayout:Landroid/support/design/widget/CoordinatorLayout;

    invoke-static {v0}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    .line 1280
    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 703
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isSafeToCommitTransactions()Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    return v5

    .line 707
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 708
    .local v1, "resId":I
    const v2, 0x7f0e0231

    if-ne v1, v2, :cond_2

    .line 710
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/dialer/calllog/CallLogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 711
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 746
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return v4

    .line 712
    :cond_2
    const v2, 0x7f0e0235

    if-ne v1, v2, :cond_3

    .line 715
    invoke-static {}, Lcom/android/dialer/util/IntentUtil;->getNewContactIntent()Landroid/content/Intent;

    move-result-object v2

    .line 716
    const v3, 0x7f0d0286

    .line 713
    invoke-static {p0, v2, v3}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 717
    :cond_3
    const v2, 0x7f0e0233

    if-ne v1, v2, :cond_5

    .line 721
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v2}, Lcom/android/dialer/list/ListsFragment;->getCurrentTabIndex()I

    move-result v2

    if-nez v2, :cond_4

    .line 722
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 723
    const-class v3, Lcom/android/dialer/DialtactsActivity;

    .line 722
    invoke-static {v2, v5, v3, v4}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;ZLjava/lang/Class;I)V

    .line 728
    :goto_1
    const/16 v2, 0xa

    invoke-static {v2, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 729
    return v5

    .line 725
    :cond_4
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 726
    const-class v3, Lcom/android/dialer/DialtactsActivity;

    const/4 v4, -0x1

    .line 725
    invoke-static {v2, v5, v3, v4}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;ZLjava/lang/Class;I)V

    goto :goto_1

    .line 730
    :cond_5
    const v2, 0x7f0e0234

    if-ne v1, v2, :cond_6

    .line 731
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;)V

    .line 732
    const/16 v2, 0xb

    invoke-static {v2, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 733
    return v5

    .line 734
    :cond_6
    const v2, 0x7f0e0236

    if-ne v1, v2, :cond_7

    .line 735
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->handleMenuSettings()V

    .line 736
    const/16 v2, 0x9

    invoke-static {v2, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 737
    return v5

    .line 738
    :cond_7
    const v2, 0x7f0e0232

    if-ne v1, v2, :cond_8

    .line 739
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/dialer/voicemail/VoicemailArchiveActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 741
    return v5

    .line 742
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    const v2, 0x7f0e0230

    if-ne v1, v2, :cond_1

    .line 743
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/dialer/util/IntentUtil;->getConferenceDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 744
    return v5
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 1031
    invoke-virtual {p0, p1}, Lcom/android/dialer/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 1033
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mStateSaved:Z

    .line 1034
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity;->displayFragment(Landroid/content/Intent;)V

    .line 1036
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->invalidateOptionsMenu()V

    .line 1030
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1462
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1428
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v2}, Lcom/android/dialer/list/ListsFragment;->getCurrentTabIndex()I

    move-result v1

    .line 1433
    .local v1, "tabIndex":I
    invoke-static {}, Lcom/android/dialer/util/DialerUtils;->isRtl()Z

    move-result v0

    .line 1434
    .local v0, "isRtl":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mIsLandscape:Z

    if-eqz v2, :cond_3

    .line 1436
    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mIsLandscape:Z

    if-eqz v2, :cond_4

    .line 1438
    :cond_1
    if-eqz v1, :cond_2

    .line 1439
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->onPageScrolled(F)V

    .line 1427
    :cond_2
    :goto_0
    return-void

    .line 1435
    :cond_3
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-virtual {v2, p2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->onPageScrolled(F)V

    goto :goto_0

    .line 1437
    :cond_4
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    sub-float/2addr v3, p2

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->onPageScrolled(F)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 1445
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->updateMissedCalls()V

    .line 1446
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/ListsFragment;->getCurrentTabIndex()I

    move-result v0

    .line 1447
    .local v0, "tabIndex":I
    iput v0, p0, Lcom/android/dialer/DialtactsActivity;->mPreviouslySelectedTabIndex:I

    .line 1448
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1449
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->setConferenceDialButtonVisibility(Z)V

    .line 1450
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 1451
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02011a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1452
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1450
    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->changeIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 1444
    :goto_0
    return-void

    .line 1454
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/dialer/DialtactsActivity;->setConferenceDialButtonVisibility(Z)V

    .line 1455
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    .line 1456
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1457
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d024c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1455
    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->changeIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->updateMissedCalls()V

    .line 601
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    if-eqz v0, :cond_1

    .line 602
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->hideDialpadAndSearchUi()V

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mSlideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/dialer/TransactionSafeActivity;->onPause()V

    .line 595
    return-void

    .line 606
    :cond_3
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->commitDialpadFragmentHide()V

    goto :goto_0
.end method

.method public onPickDataUri(Landroid/net/Uri;ZI)V
    .locals 1
    .param p1, "dataUri"    # Landroid/net/Uri;
    .param p2, "isVideoCall"    # Z
    .param p3, "callInitiationType"    # I

    .prologue
    .line 1394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    .line 1395
    invoke-static {p0, p1, p2, p3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/dialer/TransactionSafeActivity;Landroid/net/Uri;ZI)V

    .line 1393
    return-void
.end method

.method public onPickPhoneNumber(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "isVideoCall"    # Z
    .param p3, "callInitiationType"    # I

    .prologue
    .line 1401
    if-nez p1, :cond_0

    .line 1404
    const-string/jumbo p1, ""

    .line 1407
    :cond_0
    new-instance v1, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    invoke-direct {v1, p1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->setIsVideoCall(Z)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->setCallInitiationType(I)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 1412
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1413
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mClearSearchOnPause:Z

    .line 1400
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1527
    packed-switch p1, :pswitch_data_0

    .line 1545
    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/TransactionSafeActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1530
    :pswitch_0
    const/4 v1, 0x0

    .line 1531
    .local v1, "imsUseEnabled":Z
    if-nez p1, :cond_4

    const/4 v0, 0x1

    .line 1532
    .local v0, "enabled":Z
    :goto_1
    array-length v4, p3

    if-lez v4, :cond_1

    aget v4, p3, v3

    if-nez v4, :cond_1

    .line 1533
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1534
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    .line 1536
    .end local v1    # "imsUseEnabled":Z
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mConferenceDialButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 1537
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    if-eqz v4, :cond_7

    .line 1538
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v4}, Lcom/android/dialer/list/ListsFragment;->getCurrentTabIndex()I

    move-result v4

    .line 1539
    const/4 v5, 0x2

    .line 1538
    if-ne v4, v5, :cond_6

    const/4 v2, 0x1

    .line 1540
    .local v2, "isCurrentTabAllContacts":Z
    :goto_3
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity;->mConferenceDialButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1541
    if-eqz v2, :cond_3

    :cond_2
    const/16 v3, 0x8

    .line 1540
    :cond_3
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1531
    .end local v0    # "enabled":Z
    .end local v2    # "isCurrentTabAllContacts":Z
    .restart local v1    # "imsUseEnabled":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 1533
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 1538
    .end local v1    # "imsUseEnabled":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "isCurrentTabAllContacts":Z
    goto :goto_3

    .line 1537
    .end local v2    # "isCurrentTabAllContacts":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "isCurrentTabAllContacts":Z
    goto :goto_3

    .line 1527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 590
    invoke-super {p0}, Lcom/android/dialer/TransactionSafeActivity;->onRestart()V

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mIsRestarting:Z

    .line 589
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 526
    const-string/jumbo v2, "DialtactsActivity onResume"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 527
    invoke-super {p0}, Lcom/android/dialer/TransactionSafeActivity;->onResume()V

    .line 529
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mStateSaved:Z

    .line 530
    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    if-eqz v2, :cond_5

    .line 531
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/dialer/DialtactsActivity;->displayFragment(Landroid/content/Intent;)V

    .line 543
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 544
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v2}, Lcom/android/dialer/widget/ActionBarController;->onSearchBoxTapped()V

    .line 545
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mSearchView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iput-object v6, p0, Lcom/android/dialer/DialtactsActivity;->mVoiceSearchQuery:Ljava/lang/String;

    .line 549
    :cond_1
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    .line 551
    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mIsRestarting:Z

    if-eqz v2, :cond_3

    .line 554
    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    if-eqz v2, :cond_2

    .line 555
    invoke-static {v5, p0}, Lcom/android/dialer/logging/Logger;->logScreenView(ILandroid/app/Activity;)V

    .line 557
    :cond_2
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mIsRestarting:Z

    .line 560
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->prepareVoiceSearchButton()V

    .line 561
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mDialerDatabaseHelper:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->startSmartDialUpdateThread()V

    .line 562
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;

    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->getFabAlignment()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    .line 563
    invoke-virtual {p0, v4}, Lcom/android/dialer/DialtactsActivity;->setConferenceDialButtonImage(Z)V

    .line 564
    invoke-virtual {p0, v5}, Lcom/android/dialer/DialtactsActivity;->setConferenceDialButtonVisibility(Z)V

    .line 566
    const-string/jumbo v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 569
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 570
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_7

    .line 571
    const-string/jumbo v2, "android.provider.extra.CALL_TYPE_FILTER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 572
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/dialer/list/ListsFragment;->showTab(I)V

    .line 583
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->setSearchBoxHint()V

    .line 585
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 525
    return-void

    .line 532
    :cond_5
    invoke-direct {p0}, Lcom/android/dialer/DialtactsActivity;->phoneIsInUse()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    if-eqz v2, :cond_6

    .line 533
    invoke-virtual {p0, v4, v5}, Lcom/android/dialer/DialtactsActivity;->hideDialpadFragment(ZZ)V

    .line 534
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mInCallDialpadUp:Z

    goto :goto_0

    .line 535
    :cond_6
    iget-boolean v2, p0, Lcom/android/dialer/DialtactsActivity;->mShowDialpadOnResume:Z

    if-eqz v2, :cond_0

    .line 536
    invoke-direct {p0, v4}, Lcom/android/dialer/DialtactsActivity;->showDialpadFragment(Z)V

    .line 537
    iput-boolean v4, p0, Lcom/android/dialer/DialtactsActivity;->mShowDialpadOnResume:Z

    goto/16 :goto_0

    .line 574
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_7
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v2, v5}, Lcom/android/dialer/list/ListsFragment;->showTab(I)V

    goto :goto_1

    .line 576
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_8
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "EXTRA_SHOW_TAB"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 577
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "EXTRA_SHOW_TAB"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 578
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v2}, Lcom/android/dialer/list/ListsFragment;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 579
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v2, v1}, Lcom/android/dialer/list/ListsFragment;->showTab(I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 613
    invoke-super {p0, p1}, Lcom/android/dialer/TransactionSafeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 614
    const-string/jumbo v0, "search_query"

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string/jumbo v0, "in_regular_search_ui"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInRegularSearch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 616
    const-string/jumbo v0, "in_dialpad_search_ui"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mInDialpadSearch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 617
    const-string/jumbo v0, "first_launch"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mFirstLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 618
    const-string/jumbo v0, "is_dialpad_shown"

    iget-boolean v1, p0, Lcom/android/dialer/DialtactsActivity;->mIsDialpadShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 619
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mActionBarController:Lcom/android/dialer/widget/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/dialer/widget/ActionBarController;->saveInstanceState(Landroid/os/Bundle;)V

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/DialtactsActivity;->mStateSaved:Z

    .line 612
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1418
    const-string/jumbo v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported intent has come ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "). Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1495
    invoke-virtual {p0}, Lcom/android/dialer/DialtactsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHideOffset(I)V

    .line 1494
    return-void
.end method

.method public setConferenceDialButtonImage(Z)V
    .locals 2
    .param p1, "setAddParticipantButton"    # Z

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mConferenceDialButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity;->mConferenceDialButton:Landroid/widget/ImageButton;

    .line 1325
    if-eqz p1, :cond_1

    const v0, 0x7f0200b9

    .line 1324
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1315
    :cond_0
    return-void

    .line 1326
    :cond_1
    const v0, 0x7f0200c3

    goto :goto_0
.end method

.method public setConferenceDialButtonVisibility(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1296
    const/4 v0, 0x0

    .line 1297
    .local v0, "imsUseEnabled":Z
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 1299
    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    aput-object v5, v4, v3

    .line 1300
    if-eqz p1, :cond_0

    move v2, v3

    .line 1299
    :cond_0
    invoke-virtual {p0, v4, v2}, Lcom/android/dialer/DialtactsActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 1306
    .end local v0    # "imsUseEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mConferenceDialButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    .line 1307
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    if-eqz v2, :cond_7

    .line 1308
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v2}, Lcom/android/dialer/list/ListsFragment;->getCurrentTabIndex()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    const/4 v1, 0x1

    .line 1309
    .local v1, "isCurrentTabAllContacts":Z
    :goto_1
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity;->mConferenceDialButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 1310
    if-eqz v1, :cond_2

    :cond_1
    const/16 v3, 0x8

    .line 1309
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1295
    .end local v1    # "isCurrentTabAllContacts":Z
    :cond_3
    return-void

    .line 1303
    .restart local v0    # "imsUseEnabled":Z
    :cond_4
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1304
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    .local v0, "imsUseEnabled":Z
    goto :goto_0

    .line 1303
    .local v0, "imsUseEnabled":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 1308
    .end local v0    # "imsUseEnabled":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isCurrentTabAllContacts":Z
    goto :goto_1

    .line 1307
    .end local v1    # "isCurrentTabAllContacts":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "isCurrentTabAllContacts":Z
    goto :goto_1
.end method

.method public setDragDropController(Lcom/android/dialer/list/DragDropController;)V
    .locals 1
    .param p1, "dragController"    # Lcom/android/dialer/list/DragDropController;

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    .line 1371
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->getRemoveView()Lcom/android/dialer/list/RemoveView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dialer/list/RemoveView;->setDragDropController(Lcom/android/dialer/list/DragDropController;)V

    .line 1369
    return-void
.end method

.method public shouldShowActionBar()Z
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->shouldShowActionBar()Z

    move-result v0

    return v0
.end method

.method public showAllContactsTab()V
    .locals 2

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/ListsFragment;->showTab(I)V

    .line 1378
    :cond_0
    return-void
.end method

.method public showDialpad()V
    .locals 1

    .prologue
    .line 1389
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/DialtactsActivity;->showDialpadFragment(Z)V

    .line 1388
    return-void
.end method

.method public updateTabUnreadCounts()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity;->mListsFragment:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/ListsFragment;->updateTabUnreadCounts()V

    .line 772
    return-void
.end method
