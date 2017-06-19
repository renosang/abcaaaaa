.class public Lcom/android/dialer/list/SpeedDialFragment;
.super Landroid/app/Fragment;
.source "SpeedDialFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;
.implements Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;
.implements Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;,
        Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;,
        Lcom/android/dialer/list/SpeedDialFragment$HostInterface;,
        Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;
    }
.end annotation


# static fields
.field private static LOADER_ID_CONTACT_TILE:I


# instance fields
.field private mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

.field private mAnimationDuration:I

.field private mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

.field private final mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mContactTileFrame:Landroid/view/View;

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

.field private final mItemIdLeftMap:Ljava/util/HashMap;
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

.field private final mItemIdTopMap:Ljava/util/HashMap;
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

.field private mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

.field private mParentView:Landroid/view/View;

.field private mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

.field private final mScrollListener:Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/list/SpeedDialFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mAnimationDuration:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/dialer/list/SpeedDialFragment;[JJ)Z
    .locals 2
    .param p1, "ids"    # [J
    .param p2, "target"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/list/SpeedDialFragment;->containsId([JJ)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    sput v0, Lcom/android/dialer/list/SpeedDialFragment;->LOADER_ID_CONTACT_TILE:I

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    .line 175
    new-instance v0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;)V

    .line 174
    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    .line 177
    new-instance v0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;)V

    .line 176
    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 178
    new-instance v0, Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;)V

    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mScrollListener:Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;

    .line 65
    return-void
.end method

.method private varargs animateGridView([J)V
    .locals 2
    .param p1, "idsInPlace"    # [J

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 386
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/android/dialer/list/SpeedDialFragment$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/dialer/list/SpeedDialFragment$1;-><init>(Lcom/android/dialer/list/SpeedDialFragment;Landroid/view/ViewTreeObserver;[J)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 377
    return-void
.end method

.method private containsId([JJ)Z
    .locals 4
    .param p1, "ids"    # [J
    .param p2, "target"    # J

    .prologue
    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 458
    aget-wide v2, p1, v0

    cmp-long v1, v2, p2

    if-nez v1, :cond_0

    .line 459
    const/4 v1, 0x1

    return v1

    .line 457
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private saveOffsets(I)V
    .locals 10
    .param p1, "removedItemHeight"    # I

    .prologue
    .line 350
    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v6}, Lcom/android/dialer/list/PhoneFavoriteListView;->getFirstVisiblePosition()I

    move-result v1

    .line 354
    .local v1, "firstVisiblePosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v6}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 355
    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v6, v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 356
    .local v0, "child":Landroid/view/View;
    add-int v3, v1, v2

    .line 360
    .local v3, "position":I
    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v6, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->isIndexInBound(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 354
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    :cond_0
    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v6, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemId(I)J

    move-result-wide v4

    .line 368
    .local v4, "itemId":J
    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 371
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "position":I
    .end local v4    # "itemId":J
    :cond_1
    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;

    const-wide v8, 0x7fffffffffffffffL

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method


# virtual methods
.method public cacheOffsetsForDatasetChange()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/list/SpeedDialFragment;->saveOffsets(I)V

    .line 471
    return-void
.end method

.method public hasFrequents()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 270
    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    if-nez v1, :cond_0

    return v0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getNumFrequents()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 188
    new-instance v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;)V

    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    .line 190
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 181
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    const-string/jumbo v0, "SpeedDialFragment onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 197
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mAnimationDuration:I

    .line 200
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 194
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 231
    const-string/jumbo v2, "SpeedDialFragment onCreateView"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 232
    const v2, 0x7f0400e1

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mParentView:Landroid/view/View;

    .line 234
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mParentView:Landroid/view/View;

    const v3, 0x7f0e0200

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/list/PhoneFavoriteListView;

    iput-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    .line 235
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v2, p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 236
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v2, v4}, Lcom/android/dialer/list/PhoneFavoriteListView;->setVerticalScrollBarEnabled(Z)V

    .line 237
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/dialer/list/PhoneFavoriteListView;->setVerticalScrollbarPosition(I)V

    .line 238
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Lcom/android/dialer/list/PhoneFavoriteListView;->setScrollBarStyle(I)V

    .line 239
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->getDragDropController()Lcom/android/dialer/list/DragDropController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v2, v3}, Lcom/android/dialer/list/DragDropController;->addOnDragDropListener(Lcom/android/dialer/list/OnDragDropListener;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e0158

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 243
    .local v1, "dragShadowOverlay":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v2, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->setDragShadowOverlay(Landroid/widget/ImageView;)V

    .line 245
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mParentView:Landroid/view/View;

    const v3, 0x7f0e0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/widget/EmptyContentView;

    iput-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    .line 246
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v3, 0x7f0200b5

    invoke-virtual {v2, v3}, Lcom/android/dialer/widget/EmptyContentView;->setImage(I)V

    .line 247
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v2, p0}, Lcom/android/dialer/widget/EmptyContentView;->setActionClickedListener(Lcom/android/dialer/widget/EmptyContentView$OnEmptyViewActionButtonClickedListener;)V

    .line 249
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mParentView:Landroid/view/View;

    const v3, 0x7f0e01ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileFrame:Landroid/view/View;

    .line 251
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    .line 252
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 251
    invoke-direct {v0, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 253
    .local v0, "controller":Landroid/view/animation/LayoutAnimationController;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 254
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v2, v0}, Lcom/android/dialer/list/PhoneFavoriteListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 255
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v2, v3}, Lcom/android/dialer/list/PhoneFavoriteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mScrollListener:Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;

    invoke-virtual {v2, v3}, Lcom/android/dialer/list/PhoneFavoriteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 258
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v2, v4}, Lcom/android/dialer/list/PhoneFavoriteListView;->setFastScrollEnabled(Z)V

    .line 259
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v2, v4}, Lcom/android/dialer/list/PhoneFavoriteListView;->setFastScrollAlwaysVisible(Z)V

    .line 262
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v2, v4}, Lcom/android/dialer/list/PhoneFavoriteListView;->setAccessibilityLiveRegion(I)V

    .line 263
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-static {v2}, Lcom/android/dialer/list/ContentChangedFilter;->addToParent(Landroid/view/View;)V

    .line 265
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 266
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mParentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs onDataSetChangedForAnimation([J)V
    .locals 0
    .param p1, "idsInPlace"    # [J

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/android/dialer/list/SpeedDialFragment;->animateGridView([J)V

    .line 466
    return-void
.end method

.method public onEmptyViewActionButtonClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 481
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 482
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 483
    return-void

    .line 486
    :cond_0
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v1, v4}, Landroid/support/v13/app/FragmentCompat;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)V

    .line 480
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 491
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    check-cast v0, Lcom/android/dialer/list/SpeedDialFragment$HostInterface;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0}, Lcom/android/dialer/list/SpeedDialFragment$HostInterface;->showAllContactsTab()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v0

    .line 337
    .local v0, "contactTileAdapterCount":I
    if-gt p3, v0, :cond_0

    .line 338
    const-string/jumbo v1, "SpeedDialFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onItemClick() event for unexpected position. The position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 339
    const-string/jumbo v3, " is before \"all\" section. Ignored."

    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 498
    if-ne p1, v2, :cond_0

    .line 499
    array-length v0, p3

    if-ne v0, v2, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->notifyPermissionGranted(Landroid/content/Context;Ljava/lang/String;)V

    .line 497
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    const-string/jumbo v0, "SpeedDialFragment onResume"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 206
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 207
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->refreshContactsPreferences()V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/dialer/list/SpeedDialFragment;->LOADER_ID_CONTACT_TILE:I

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/dialer/list/SpeedDialFragment;->LOADER_ID_CONTACT_TILE:I

    .line 213
    iget-object v2, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 212
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d02b1

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 220
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d02b2

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    .line 225
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 204
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/dialer/list/SpeedDialFragment;->LOADER_ID_CONTACT_TILE:I

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d02fc

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setDescription(I)V

    .line 223
    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    const v1, 0x7f0d02fa

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/EmptyContentView;->setActionLabel(I)V

    goto :goto_1
.end method

.method public onStart()V
    .locals 8

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 293
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 296
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-object v4, v0

    iput-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/android/dialer/list/OnDragDropListener;

    move-object v3, v0

    .line 304
    .local v3, "listener":Lcom/android/dialer/list/OnDragDropListener;
    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v4}, Lcom/android/dialer/list/PhoneFavoriteListView;->getDragDropController()Lcom/android/dialer/list/DragDropController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/dialer/list/DragDropController;->addOnDragDropListener(Lcom/android/dialer/list/OnDragDropListener;)V

    .line 305
    move-object v0, v1

    check-cast v0, Lcom/android/dialer/list/SpeedDialFragment$HostInterface;

    move-object v4, v0

    iget-object v5, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v5}, Lcom/android/dialer/list/PhoneFavoriteListView;->getDragDropController()Lcom/android/dialer/list/DragDropController;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/dialer/list/SpeedDialFragment$HostInterface;->setDragDropController(Lcom/android/dialer/list/DragDropController;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :try_start_2
    move-object v0, v1

    check-cast v0, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-object v4, v0

    iput-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 321
    invoke-static {v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    sget v5, Lcom/android/dialer/list/SpeedDialFragment;->LOADER_ID_CONTACT_TILE:I

    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 290
    :goto_0
    return-void

    .line 297
    .end local v3    # "listener":Lcom/android/dialer/list/OnDragDropListener;
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 299
    const-string/jumbo v6, " must implement OnListFragmentScrolledListener"

    .line 298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 307
    .restart local v2    # "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 308
    const-string/jumbo v6, " must implement OnDragDropListener and HostInterface"

    .line 307
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v3    # "listener":Lcom/android/dialer/list/OnDragDropListener;
    :catch_2
    move-exception v2

    .line 314
    .restart local v2    # "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 315
    const-string/jumbo v6, " must implement PhoneFavoritesFragment.listener"

    .line 314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 324
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/dialer/list/SpeedDialFragment;->setEmptyViewVisibility(Z)V

    goto :goto_0
.end method

.method setEmptyViewVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 275
    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v4}, Lcom/android/dialer/widget/EmptyContentView;->getVisibility()I

    move-result v3

    .line 276
    .local v3, "previousVisibility":I
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 277
    .local v0, "emptyViewVisibility":I
    :goto_0
    if-eqz p1, :cond_2

    const/16 v1, 0x8

    .line 279
    .local v1, "listViewVisibility":I
    :goto_1
    if-eq v3, v0, :cond_0

    .line 280
    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 282
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p1, :cond_3

    const/4 v4, -0x2

    :goto_2
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 283
    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileFrame:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Lcom/android/dialer/widget/EmptyContentView;

    invoke-virtual {v4, v0}, Lcom/android/dialer/widget/EmptyContentView;->setVisibility(I)V

    .line 285
    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v4, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->setVisibility(I)V

    .line 274
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void

    .line 276
    .end local v0    # "emptyViewVisibility":I
    .end local v1    # "listViewVisibility":I
    :cond_1
    const/16 v0, 0x8

    .restart local v0    # "emptyViewVisibility":I
    goto :goto_0

    .line 277
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "listViewVisibility":I
    goto :goto_1

    .line 282
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    const/4 v4, -0x1

    goto :goto_2
.end method
