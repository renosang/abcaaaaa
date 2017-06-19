.class public Lcom/android/contacts/common/list/PinnedHeaderListView;
.super Lcom/android/contacts/common/list/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;,
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final BOTTOM:I = 0x1

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x14

.field private static final DEFAULT_SMOOTH_SCROLL_DURATION:I = 0x64

.field private static final FADING:I = 0x2

.field private static final MAX_ALPHA:I = 0xff

.field private static final TOP:I


# instance fields
.field private mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mHeaderPaddingStart:I

.field private mHeaderTouched:Z

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mScrollToSectionOnHeaderTouch:Z

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/list/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 105
    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 108
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    .line 124
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 125
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 122
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "header"    # Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .param p3, "currentTime"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 551
    iget-boolean v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v4, :cond_0

    .line 552
    iget-wide v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v4, p3

    long-to-int v1, v4

    .line 553
    .local v1, "timeLeft":I
    if-gtz v1, :cond_3

    .line 554
    iget v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 555
    iget-boolean v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 556
    iput-boolean v6, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 562
    .end local v1    # "timeLeft":I
    :cond_0
    :goto_0
    iget-boolean v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_2

    .line 563
    iget-object v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 564
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 565
    .local v0, "saveCount":I
    invoke-static {p0}, Lcom/android/contacts/common/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 566
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v2, v4, v5

    .line 568
    .local v2, "translateX":I
    :goto_1
    int-to-float v4, v2

    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 569
    iget v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 570
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 571
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v6, 0x1f

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 573
    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 574
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 550
    .end local v0    # "saveCount":I
    .end local v2    # "translateX":I
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void

    .line 558
    .restart local v1    # "timeLeft":I
    :cond_3
    iget v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v6, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v1

    .line 559
    iget v6, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    .line 558
    div-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0

    .line 567
    .end local v1    # "timeLeft":I
    .restart local v0    # "saveCount":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_4
    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    goto :goto_1
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 8
    .param p1, "viewIndex"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 356
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iget-object v3, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 357
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 358
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 362
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v5, :cond_1

    .line 364
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 363
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 370
    .local v4, "widthSpec":I
    :goto_0
    if-eqz v2, :cond_2

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_2

    .line 372
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 371
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 376
    .local v1, "heightSpec":I
    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    .line 377
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 378
    .local v0, "height":I
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iput v0, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    .line 379
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3, v6, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 355
    .end local v0    # "height":I
    .end local v1    # "heightSpec":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "widthSpec":I
    :cond_0
    return-void

    .line 367
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    .line 366
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .restart local v4    # "widthSpec":I
    goto :goto_0

    .line 374
    :cond_2
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "heightSpec":I
    goto :goto_1
.end method

.method private invalidateIfAnimating()V
    .locals 2

    .prologue
    .line 476
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    .line 477
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 479
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    .line 480
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidate()V

    .line 481
    return-void

    .line 477
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_1
    return-void
.end method

.method private smoothScrollToPartition(I)Z
    .locals 6
    .param p1, "partition"    # I

    .prologue
    const/4 v5, 0x0

    .line 455
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-nez v4, :cond_0

    .line 456
    return v5

    .line 458
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v4, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v3

    .line 459
    .local v3, "position":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 460
    return v5

    .line 463
    :cond_1
    const/4 v2, 0x0

    .line 464
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 465
    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v4, v1

    .line 466
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_2

    .line 467
    iget v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v4

    .line 464
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    .end local v0    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    .line 471
    const/16 v5, 0x64

    .line 470
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPositionFromTop(III)V

    .line 472
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 488
    iget-boolean v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    if-eqz v12, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 490
    .local v2, "currentTime":J
    :goto_0
    const/4 v11, 0x0

    .line 491
    .local v11, "top":I
    const/4 v10, 0x0

    .line 492
    .local v10, "right":I
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result v0

    .line 493
    .local v0, "bottom":I
    const/4 v6, 0x0

    .line 494
    .local v6, "hasVisibleHeaders":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v8, v12, :cond_4

    .line 495
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v12, v8

    .line 496
    .local v7, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v12, :cond_0

    .line 497
    const/4 v6, 0x1

    .line 498
    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v12, v0, :cond_2

    .line 499
    iget v0, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 494
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 488
    .end local v0    # "bottom":I
    .end local v2    # "currentTime":J
    .end local v6    # "hasVisibleHeaders":Z
    .end local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v8    # "i":I
    .end local v10    # "right":I
    .end local v11    # "top":I
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "currentTime":J
    goto :goto_0

    .line 500
    .restart local v0    # "bottom":I
    .restart local v6    # "hasVisibleHeaders":Z
    .restart local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .restart local v8    # "i":I
    .restart local v10    # "right":I
    .restart local v11    # "top":I
    :cond_2
    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v12, :cond_3

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 501
    :cond_3
    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v13, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v9, v12, v13

    .line 502
    .local v9, "newTop":I
    if-le v9, v11, :cond_0

    .line 503
    move v11, v9

    goto :goto_2

    .line 509
    .end local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v9    # "newTop":I
    :cond_4
    if-eqz v6, :cond_5

    .line 510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 513
    :cond_5
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 515
    if-eqz v6, :cond_c

    .line 516
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 521
    iget v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-lez v12, :cond_6

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v12

    if-nez v12, :cond_6

    .line 522
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 523
    .local v1, "firstChild":Landroid/view/View;
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    const/4 v13, 0x0

    aget-object v4, v12, v13

    .line 525
    .local v4, "firstHeader":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    if-eqz v4, :cond_6

    .line 526
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 527
    .local v5, "firstHeaderTop":I
    :goto_3
    iget v12, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 532
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v4    # "firstHeader":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v5    # "firstHeaderTop":I
    :cond_6
    iget v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_a

    .line 533
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v12, v8

    .line 534
    .restart local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v12, :cond_7

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v12, :cond_8

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    .line 535
    :cond_8
    invoke-direct {p0, p1, v7, v2, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_4

    .line 526
    .end local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v4    # "firstHeader":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "firstHeaderTop":I
    goto :goto_3

    .line 539
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v4    # "firstHeader":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v5    # "firstHeaderTop":I
    :cond_a
    const/4 v8, 0x0

    :goto_5
    iget v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v8, v12, :cond_c

    .line 540
    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v12, v8

    .line 541
    .restart local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v12, :cond_b

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 542
    invoke-direct {p0, p1, v7, v2, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    .line 539
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 547
    .end local v7    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_c
    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 487
    return-void
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1
    .param p1, "viewIndex"    # I

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 249
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPositionAt(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->pointToPosition(II)I

    move-result v0

    .line 402
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 403
    return v0

    .line 407
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 408
    if-gtz p1, :cond_0

    .line 409
    return v2
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 387
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 388
    iget-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v2, v1

    .line 389
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 390
    iget v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    return v2

    .line 393
    .end local v0    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_1
    return v3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 414
    iput-boolean v7, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 415
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 416
    return v8

    .line 419
    :cond_0
    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollState:I

    if-nez v5, :cond_3

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 421
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 422
    .local v3, "x":I
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    .local v1, "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 423
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v5, v1

    .line 426
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingLeft()I

    move-result v2

    .line 427
    .local v2, "padding":I
    iget-boolean v5, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-gt v5, v4, :cond_1

    iget v5, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v6, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v5, v6

    if-le v5, v4, :cond_1

    .line 428
    if-lt v3, v2, :cond_1

    iget-object v5, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    if-lt v5, v3, :cond_1

    .line 429
    iput-boolean v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 430
    iget-boolean v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    if-eqz v5, :cond_2

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 432
    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPartition(I)Z

    move-result v5

    return v5

    .line 434
    :cond_2
    return v8

    .line 440
    .end local v0    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .end local v1    # "i":I
    .end local v2    # "padding":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_3
    return v7
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 209
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v7

    .line 211
    .local v7, "height":I
    const/4 v11, 0x0

    .line 212
    .local v11, "windowTop":I
    move v10, v7

    .line 214
    .local v10, "windowBottom":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v8, v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v6, v0, v8

    .line 216
    .local v6, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v0, :cond_0

    .line 217
    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v0, :cond_1

    .line 218
    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v11, v0, v1

    .line 214
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget v10, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 226
    .end local v6    # "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 227
    .local v9, "selectedView":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 228
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v11, :cond_5

    .line 229
    invoke-virtual {p0, p3, v11}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    .line 235
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 208
    :cond_4
    return-void

    .line 230
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v10, :cond_3

    .line 231
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {p0, p3, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 130
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/AutoScrollListView;->onLayout(ZIIII)V

    .line 131
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    .line 132
    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    .line 129
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 241
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 160
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v3, :cond_4

    .line 161
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v0

    .line 162
    .local v0, "count":I
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-eq v0, v3, :cond_0

    .line 163
    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    .line 164
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    if-nez v3, :cond_2

    .line 165
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    .line 173
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v2, v3, :cond_3

    .line 174
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    new-instance v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    invoke-direct {v4, v6}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;)V

    aput-object v4, v3, v2

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v4, v2, v5, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    array-length v3, v3

    iget v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v3, v4, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    .line 168
    .local v1, "headers":[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    .line 169
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 180
    .end local v1    # "headers":[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .restart local v2    # "i":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 181
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V

    .line 182
    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 184
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_5

    .line 185
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 159
    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 197
    iput p2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollState:I

    .line 198
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 196
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 445
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    .line 449
    :cond_0
    return v1

    .line 451
    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    move-object v0, p1

    .line 137
    check-cast v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 138
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 8
    .param p1, "viewIndex"    # I
    .param p2, "position"    # I
    .param p3, "fade"    # Z

    .prologue
    const/16 v7, 0xff

    .line 309
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 311
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 312
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v6, p1

    .line 315
    .local v2, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 316
    const/4 v6, 0x2

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    .line 317
    iput v7, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 318
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 320
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v5

    .line 321
    .local v5, "top":I
    iput v5, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 322
    if-eqz p3, :cond_1

    .line 323
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v6, v5

    .line 324
    .local v0, "bottom":I
    iget v3, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    .line 325
    .local v3, "headerHeight":I
    if-ge v0, v3, :cond_1

    .line 326
    sub-int v4, v0, v3

    .line 327
    .local v4, "portion":I
    add-int v6, v3, v4

    mul-int/lit16 v6, v6, 0xff

    div-int/2addr v6, v3

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 328
    add-int v6, v5, v4

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 308
    .end local v0    # "bottom":I
    .end local v3    # "headerHeight":I
    .end local v4    # "portion":I
    :cond_1
    return-void
.end method

.method public setHeaderInvisible(IZ)V
    .locals 5
    .param p1, "viewIndex"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 340
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 341
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v1, v3, :cond_2

    .line 342
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 343
    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_1

    .line 344
    iput-boolean v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 345
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 347
    :cond_1
    iput-boolean v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 348
    iget-wide v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 349
    iput-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 339
    :goto_0
    return-void

    .line 351
    :cond_2
    iput-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    goto :goto_0
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 4
    .param p1, "viewIndex"    # I
    .param p2, "y"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 278
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 279
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 280
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    iput v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    .line 281
    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 282
    iget-wide v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 283
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 284
    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 277
    :goto_0
    return-void

    .line 285
    :cond_0
    if-eqz p3, :cond_1

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne v1, p2, :cond_2

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    .line 297
    :cond_1
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 298
    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0

    .line 286
    :cond_2
    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_3

    .line 287
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 292
    :goto_1
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 293
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 294
    iget-wide v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 295
    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_0

    .line 289
    :cond_3
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 290
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_1
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 3
    .param p1, "viewIndex"    # I
    .param p2, "y"    # I
    .param p3, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 261
    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 262
    .local v0, "header":Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 263
    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    .line 264
    iput v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    .line 267
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 259
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 150
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 148
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 144
    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 142
    return-void
.end method

.method public setScrollToSectionOnHeaderTouch(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    .line 153
    return-void
.end method
