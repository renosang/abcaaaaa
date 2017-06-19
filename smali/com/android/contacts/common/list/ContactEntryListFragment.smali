.class public abstract Lcom/android/contacts/common/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactEntryListFragment$1;,
        Lcom/android/contacts/common/list/ContactEntryListFragment$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_CODE_PICKER:I = 0x1

.field private static final DEFAULT_DIRECTORY_RESULT_LIMIT:I = 0x14

.field private static final DIRECTORY_ID_ARG_KEY:Ljava/lang/String; = "directoryId"

.field private static final DIRECTORY_LOADER_ID:I = -0x1

.field private static final DIRECTORY_SEARCH_DELAY_MILLIS:I = 0x12c

.field private static final DIRECTORY_SEARCH_MESSAGE:I = 0x1

.field private static final FAST_SCROLL_BAR_VISIBLE_LIMIT:F = 1.0f

.field private static final KEY_ADJUST_SELECTION_BOUNDS_ENABLED:Ljava/lang/String; = "adjustSelectionBoundsEnabled"

.field private static final KEY_DARK_THEME:Ljava/lang/String; = "darkTheme"

.field private static final KEY_DIRECTORY_RESULT_LIMIT:Ljava/lang/String; = "directoryResultLimit"

.field private static final KEY_DIRECTORY_SEARCH_MODE:Ljava/lang/String; = "directorySearchMode"

.field private static final KEY_INCLUDE_PROFILE:Ljava/lang/String; = "includeProfile"

.field private static final KEY_LEGACY_COMPATIBILITY:Ljava/lang/String; = "legacyCompatibility"

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "liststate"

.field private static final KEY_PHOTO_LOADER_ENABLED:Ljava/lang/String; = "photoLoaderEnabled"

.field private static final KEY_QUERY_STRING:Ljava/lang/String; = "queryString"

.field private static final KEY_QUICK_CONTACT_ENABLED:Ljava/lang/String; = "quickContactEnabled"

.field private static final KEY_REQUEST:Ljava/lang/String; = "request"

.field private static final KEY_SCROLLBAR_POSITION:Ljava/lang/String; = "scrollbarPosition"

.field private static final KEY_SEARCH_MODE:Ljava/lang/String; = "searchMode"

.field private static final KEY_SECTION_HEADER_DISPLAY_ENABLED:Ljava/lang/String; = "sectionHeaderDisplayEnabled"

.field private static final KEY_SELECTION_VISIBLE:Ljava/lang/String; = "selectionVisible"

.field private static final KEY_SUPPORT_DISPLAY_SETTING:Ljava/lang/String; = "supportDisplaySetting"

.field private static final KEY_VISIBLE_SCROLLBAR_ENABLED:Ljava/lang/String; = "visibleScrollbarEnabled"

.field private static final STATUS_LOADED:I = 0x2

.field private static final STATUS_LOADING:I = 0x1

.field private static final STATUS_NOT_LOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactEntryListFragment"

.field private static mOtherExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private defaultVerticalScrollbarPosition:I

.field private mAccountIconManager:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

.field private mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAdjustSelectionBoundsEnabled:Z

.field private mAutoDisplayEmptyViewEnabled:Z

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mContentNeedVisibleScrollbar:Z

.field private mContext:Landroid/content/Context;

.field private mDarkTheme:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field private mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

.field private mEnabled:Z

.field private mForceLoad:Z

.field private mIncludeProfile:Z

.field private mIsNeedReInitEmptyViewContent:Z

.field private mIsPhoneNumbersOnly:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mListViewTopIndex:I

.field private mListViewTopOffset:I

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/oneplus/contacts/common/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mShowEmptyListForEmptyQuery:Z

.field private mSortOrder:I

.field private mSupportDisplaySetting:Z

.field protected mUserProfileExists:Z

.field private mVerticalScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleItemCount:I

.field private mVisibleScrollbarEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mOtherExecutor:Ljava/util/concurrent/Executor;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 67
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 108
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    .line 114
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDefaultVerticalScrollbarPosition()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 116
    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 119
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSupportDisplaySetting:Z

    .line 149
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 168
    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 182
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 1031
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    .line 1030
    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    .line 67
    return-void
.end method

.method private configureScrollbarVisibility(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 574
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 575
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 576
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 573
    :cond_0
    return-void
.end method

.method private configureVerticalScrollbar()V
    .locals 3

    .prologue
    .line 592
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    .line 594
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 596
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 597
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 598
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 591
    :cond_0
    return-void

    .line 592
    :cond_1
    const/4 v0, 0x0

    .local v0, "hasScrollbar":Z
    goto :goto_0
.end method

.method private getDefaultVerticalScrollbarPosition()I
    .locals 3

    .prologue
    .line 1040
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1041
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 1042
    .local v0, "layoutDirection":I
    packed-switch v0, :pswitch_data_0

    .line 1047
    const/4 v2, 0x2

    return v2

    .line 1044
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 1042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 963
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 962
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 964
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 960
    return-void
.end method

.method private initEmptyView(Landroid/view/View;)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 1063
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const v1, 0x7f0e0094

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1064
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    if-eqz v1, :cond_0

    .line 1065
    check-cast v0, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    .line 1066
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->initEmptyViewContent()V

    .line 1062
    :goto_0
    return-void

    .line 1068
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    goto :goto_0
.end method

.method private initEmptyViewContent()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1073
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    if-nez v0, :cond_0

    .line 1074
    return-void

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    invoke-virtual {v0, p0}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setActionClickedListener(Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    .line 1077
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getEmptyViewImageResId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setImage(I)V

    .line 1078
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getEmptyViewDescriptionResId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setDescription(I)V

    .line 1079
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getEmptyViewActionLabelResId(IZ)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setActionLabel(II)V

    .line 1081
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getEmptyViewActionLabelResId(IZ)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setActionLabel(II)V

    .line 1083
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    invoke-virtual {p0, v4, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getEmptyViewActionLabelResId(IZ)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setActionLabel(II)V

    .line 1072
    return-void
.end method

.method private isNeedShowScrollbar(I)Z
    .locals 4
    .param p1, "totalItemCount"    # I

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 913
    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleItemCount:I

    if-eqz v1, :cond_0

    .line 914
    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleItemCount:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 913
    :cond_0
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContentNeedVisibleScrollbar:Z

    .line 915
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContentNeedVisibleScrollbar:Z

    return v0
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/common/list/DirectoryPartition;

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x1

    .line 428
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 429
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 430
    const/4 v2, 0x0

    .line 429
    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 431
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 427
    return-void
.end method

.method private recordVisibleItemCount(II)V
    .locals 4
    .param p1, "visibleItemCount"    # I
    .param p2, "totalItemCount"    # I

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 919
    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleItemCount:I

    if-eqz v1, :cond_0

    .line 920
    return-void

    .line 922
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 923
    .local v0, "isNeedShowScrollbar":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 924
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleItemCount:I

    .line 918
    :cond_2
    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .prologue
    .line 447
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    return-void
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6
    .param p1, "partitionIndex"    # I

    .prologue
    .line 406
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 407
    .local v1, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 408
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 409
    .local v2, "directoryId":J
    iget-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_1

    .line 410
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 411
    invoke-virtual {p0, p1, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V

    .line 405
    :goto_0
    return-void

    .line 413
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/common/list/DirectoryPartition;)V

    goto :goto_0

    .line 416
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 417
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "directoryId"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 418
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method


# virtual methods
.method protected completeRestoreInstanceState()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 1012
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1014
    iput-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 1011
    :cond_0
    return-void
.end method

.method protected configureAccountIconLoader()V
    .locals 2

    .prologue
    .line 872
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAccountIconManager:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAccountIconManager:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAccountIconManager:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setAccountIconLoader(Lcom/oneplus/contacts/common/list/ContactAccountIconManager;)V

    .line 871
    :cond_1
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 884
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    .line 885
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 889
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setAdjustSelectionBoundsEnabled(Z)V

    .line 890
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 891
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    .line 893
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 894
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 895
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 896
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 897
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 898
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    .line 899
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 900
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSupportDisplaySetting:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSupportDisplaySetting(Z)V

    .line 883
    return-void
.end method

.method protected configurePhotoLoader()V
    .locals 2

    .prologue
    .line 856
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/oneplus/contacts/common/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/oneplus/contacts/common/ContactPhotoManager;

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 864
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/oneplus/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/oneplus/contacts/common/ContactPhotoManager;)V

    .line 855
    :cond_2
    return-void
.end method

.method public createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x0

    .line 390
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/common/list/ContactEntryListFragment$3;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected finish()V
    .locals 0

    .prologue
    .line 545
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 732
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDirectoryLoaderId()I
    .locals 1

    .prologue
    .line 712
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 716
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method protected getEmptyViewActionLabelResId(IZ)I
    .locals 1
    .param p1, "actionButtonPos"    # I
    .param p2, "isSearchMode"    # Z

    .prologue
    .line 1096
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getEmptyViewDescriptionResId(Z)I
    .locals 1
    .param p1, "isSearchMode"    # Z

    .prologue
    .line 1092
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getEmptyViewImageResId(Z)I
    .locals 1
    .param p1, "isSearchMode"    # Z

    .prologue
    .line 1088
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 743
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 262
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected isAutoDisplayEmptyViewEnabled()Z
    .locals 1

    .prologue
    .line 1055
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAutoDisplayEmptyViewEnabled:Z

    return v0
.end method

.method public isIncludeProfile()Z
    .locals 1

    .prologue
    .line 638
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 724
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 501
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    return v1

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    return v1

    .line 509
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingDirectoryList()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v2, :cond_0

    .line 515
    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v2, v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 515
    goto :goto_0

    :cond_2
    move v0, v1

    .line 513
    goto :goto_0
.end method

.method public isPhoneNumbersOnly()Z
    .locals 1

    .prologue
    .line 754
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIsPhoneNumbersOnly:Z

    return v0
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .prologue
    .line 608
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public final isSearchMode()Z
    .locals 1

    .prologue
    .line 678
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 559
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 615
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isSupportDisplaySetting()Z
    .locals 1

    .prologue
    .line 1126
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSupportDisplaySetting:Z

    return v0
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 581
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/common/list/DirectoryPartition;

    .prologue
    .line 438
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 439
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 440
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 437
    return-void
.end method

.method protected loadPreferences()Z
    .locals 4

    .prologue
    .line 766
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 767
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 768
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    .line 769
    const/4 v0, 0x1

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getSortOrder()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 773
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSortOrder(I)V

    .line 774
    const/4 v0, 0x1

    .line 777
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->isPhoneNumbersOnly()Z

    move-result v1

    .line 778
    .local v1, "isPhoneNumbersOnly":Z
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhoneNumbersOnly()Z

    move-result v2

    if-eq v2, v1, :cond_2

    .line 779
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setPhoneNumbersOnly(Z)V

    .line 780
    const/4 v0, 0x1

    .line 782
    :cond_2
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 213
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 212
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 295
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    .line 298
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 294
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const-wide/16 v4, 0x0

    .line 368
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    .line 369
    new-instance v3, Lcom/android/contacts/common/list/DirectoryListLoader;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/contacts/common/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 370
    .local v3, "loader":Lcom/android/contacts/common/list/DirectoryListLoader;
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDirectorySearchMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    .line 372
    const/4 v4, 0x0

    .line 371
    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    .line 373
    return-object v3

    .line 375
    .end local v3    # "loader":Lcom/android/contacts/common/list/DirectoryListLoader;
    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v6, "directoryId"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 376
    const-string/jumbo v6, "directoryId"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 379
    .local v0, "directoryId":J
    :goto_0
    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 380
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v2

    .line 384
    .local v2, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-object v4, v2

    check-cast v4, Lcom/oneplus/contacts/common/ICursorLoader;

    invoke-virtual {v5, v4, v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureLoader(Lcom/oneplus/contacts/common/ICursorLoader;J)V

    .line 385
    return-object v2

    .end local v0    # "directoryId":J
    .end local v2    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_1
    move-wide v0, v4

    .line 377
    goto :goto_0

    .line 382
    .restart local v0    # "directoryId":J
    :cond_2
    new-instance v2, Lcom/oneplus/contacts/common/OneplusCursorLoader;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/contacts/common/list/ContactEntryListFragment;->mOtherExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v4, v5}, Lcom/oneplus/contacts/common/OneplusCursorLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .restart local v2    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 788
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 790
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    .line 791
    .local v0, "searchMode":Z
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 792
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 793
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/oneplus/contacts/common/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/oneplus/contacts/common/ContactPhotoManager;)V

    .line 794
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 796
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 798
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 801
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 805
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    .line 807
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    .line 808
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 809
    new-instance v0, Ljava/lang/RuntimeException;

    .line 810
    const-string/jumbo v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    .line 809
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->initEmptyView(Landroid/view/View;)V

    .line 823
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 824
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 825
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 826
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 831
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 834
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 836
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 837
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 838
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAccountIconLoader()V

    .line 840
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFragmentRootView(Landroid/view/View;)V

    .line 842
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    .line 804
    return-void
.end method

.method public onEmptyViewActionButtonClicked(I)V
    .locals 0
    .param p1, "actionButtonName"    # I

    .prologue
    .line 1100
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 972
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 973
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 971
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .param p1, "hidden"    # Z

    .prologue
    .line 847
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 848
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    goto :goto_0
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 942
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 944
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 945
    .local v0, "adjPosition":I
    if-ltz v0, :cond_0

    .line 946
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(IJ)V

    .line 941
    :cond_0
    return-void
.end method

.method protected onItemLongClick(IJ)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 208
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 952
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 954
    .local v0, "adjPosition":I
    if-ltz v0, :cond_0

    .line 955
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemLongClick(IJ)Z

    move-result v1

    return v1

    .line 957
    :cond_0
    return v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 452
    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v2, :cond_0

    .line 453
    return-void

    .line 456
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 457
    .local v1, "loaderId":I
    if-ne v1, v4, :cond_2

    .line 458
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 459
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 460
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 451
    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 464
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    .line 465
    .local v0, "directorySearchMode":I
    if-eqz v0, :cond_1

    .line 466
    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_3

    .line 467
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 468
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 470
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 474
    .end local v0    # "directorySearchMode":I
    :cond_4
    iput v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 475
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "loader"    # Landroid/content/Loader;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 451
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 484
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 487
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setProfileHeader()V

    .line 493
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isAutoDisplayEmptyViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->areAllPartitionsEmpty()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setEmptyViewVisibility(Z)V

    .line 483
    return-void

    .line 497
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x0

    .line 991
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopIndex:I

    .line 992
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 993
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    iput v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopOffset:I

    .line 995
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 996
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 989
    return-void

    .line 993
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 1027
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Picker result handler is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1001
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1005
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopIndex:I

    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1000
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 271
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    const-string/jumbo v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    const-string/jumbo v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    const-string/jumbo v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    const-string/jumbo v0, "adjustSelectionBoundsEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    const-string/jumbo v0, "includeProfile"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    const-string/jumbo v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    const-string/jumbo v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    const-string/jumbo v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const-string/jumbo v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    const-string/jumbo v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 282
    const-string/jumbo v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    const-string/jumbo v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string/jumbo v0, "darkTheme"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    const-string/jumbo v0, "supportDisplaySetting"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSupportDisplaySetting:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 289
    const-string/jumbo v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 906
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-direct {p0, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListFragment;->recordVisibleItemCount(II)V

    .line 907
    invoke-direct {p0, p4}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isNeedShowScrollbar(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureScrollbarVisibility(Z)V

    .line 905
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 931
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/oneplus/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/ContactPhotoManager;->pause()V

    .line 933
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAccountIconManager:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->pause()V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/oneplus/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/ContactPhotoManager;->resume()V

    .line 936
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAccountIconManager:Lcom/oneplus/contacts/common/list/ContactAccountIconManager;

    invoke-virtual {v0}, Lcom/oneplus/contacts/common/list/ContactAccountIconManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 328
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 332
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 337
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 327
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 520
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 522
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    .line 519
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 982
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    .line 983
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 985
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected reloadData()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 526
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 527
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->onDataReload()V

    .line 528
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 529
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    .line 530
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 525
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    if-nez p1, :cond_0

    .line 303
    return-void

    .line 306
    :cond_0
    const-string/jumbo v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 307
    const-string/jumbo v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 308
    const-string/jumbo v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 309
    const-string/jumbo v0, "adjustSelectionBoundsEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    .line 310
    const-string/jumbo v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 311
    const-string/jumbo v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    .line 312
    const-string/jumbo v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 313
    const-string/jumbo v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 314
    const-string/jumbo v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 315
    const-string/jumbo v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 316
    const-string/jumbo v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 317
    const-string/jumbo v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 318
    const-string/jumbo v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 319
    const-string/jumbo v0, "darkTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 320
    const-string/jumbo v0, "supportDisplaySetting"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSupportDisplaySetting:Z

    .line 323
    const-string/jumbo v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 301
    return-void
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 627
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    .line 626
    return-void
.end method

.method protected setAutoDisplayEmptyViewEnabled(Z)V
    .locals 0
    .param p1, "autoDisplayEmptyViewEnabled"    # Z

    .prologue
    .line 1059
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAutoDisplayEmptyViewEnabled:Z

    .line 1058
    return-void
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1
    .param p1, "displayOrder"    # I

    .prologue
    .line 736
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    .line 737
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 735
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAccountIconLoader()V

    .line 221
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1019
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 1020
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 1018
    :cond_0
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 762
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 761
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 720
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 719
    return-void
.end method

.method protected setEmptyViewVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 1105
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez v3, :cond_1

    .line 1106
    :cond_0
    return-void

    .line 1108
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIsNeedReInitEmptyViewContent:Z

    if-eqz v3, :cond_2

    .line 1109
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->initEmptyViewContent()V

    .line 1110
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIsNeedReInitEmptyViewContent:Z

    .line 1112
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    invoke-virtual {v3}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->getVisibility()I

    move-result v2

    .line 1113
    .local v2, "previousVisibility":I
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 1114
    .local v0, "emptyViewVisibility":I
    :goto_0
    if-eqz p1, :cond_5

    const/16 v1, 0x8

    .line 1115
    .local v1, "listViewVisibility":I
    :goto_1
    if-eq v2, v0, :cond_3

    .line 1116
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEmptyView:Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;

    invoke-virtual {v3, v0}, Lcom/oneplus/contacts/common/widget/OnePlusEmptyContentView;->setVisibility(I)V

    .line 1117
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1104
    :cond_3
    return-void

    .line 1113
    .end local v0    # "emptyViewVisibility":I
    .end local v1    # "listViewVisibility":I
    :cond_4
    const/16 v0, 0x8

    .restart local v0    # "emptyViewVisibility":I
    goto :goto_0

    .line 1114
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "listViewVisibility":I
    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 232
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 233
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    .line 234
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 235
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setIncludeProfile(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 631
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 632
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 630
    :cond_0
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 728
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 727
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;

    .prologue
    .line 248
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 247
    return-void
.end method

.method public setPhoneNumbersOnly(Z)V
    .locals 0
    .param p1, "phoneNumbersOnly"    # Z

    .prologue
    .line 758
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIsPhoneNumbersOnly:Z

    .line 757
    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 603
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 604
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 602
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 538
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mUserProfileExists:Z

    .line 537
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "delaySelection"    # Z

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x0

    .line 686
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 697
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 698
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 700
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    .line 685
    :cond_1
    return-void

    .line 691
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 698
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 623
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 622
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 648
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v0, p1, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIsNeedReInitEmptyViewContent:Z

    .line 649
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v0, p1, :cond_5

    .line 650
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    .line 651
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 653
    if-nez p1, :cond_1

    .line 654
    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 655
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 661
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    .line 662
    if-nez p1, :cond_2

    .line 666
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removeDirectoriesAfterDefault()V

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v2, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 671
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    .line 672
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContentNeedVisibleScrollbar:Z

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 647
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 648
    goto :goto_0
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 549
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    .line 550
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 551
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 554
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 548
    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 619
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 618
    return-void
.end method

.method public setShowEmptyListForNullQuery(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 708
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    .line 707
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .param p1, "sortOrder"    # I

    .prologue
    .line 747
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    .line 748
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 746
    :cond_0
    return-void
.end method

.method public setSupportDisplaySetting(Z)V
    .locals 0
    .param p1, "supportDisplaySetting"    # Z

    .prologue
    .line 1130
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSupportDisplaySetting:Z

    .line 1129
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 585
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 586
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 587
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 584
    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 570
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContentNeedVisibleScrollbar:Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureScrollbarVisibility(Z)V

    .line 562
    return-void

    .line 570
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startLoading()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 341
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v4, :cond_0

    .line 343
    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 347
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    .line 348
    .local v3, "partitionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 349
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 350
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 351
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 352
    .local v0, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_1

    .line 353
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-eqz v4, :cond_2

    .line 348
    .end local v0    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .restart local v0    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    goto :goto_1

    .line 358
    .end local v0    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, v1, v6, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1

    .line 363
    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_4
    iput-boolean v5, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 340
    return-void
.end method
