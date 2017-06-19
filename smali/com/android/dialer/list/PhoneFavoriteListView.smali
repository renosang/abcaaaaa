.class public Lcom/android/dialer/list/PhoneFavoriteListView;
.super Landroid/widget/GridView;
.source "PhoneFavoriteListView.java"

# interfaces
.implements Lcom/android/dialer/list/OnDragDropListener;
.implements Lcom/android/dialer/list/DragDropController$DragItemContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/PhoneFavoriteListView$1;,
        Lcom/android/dialer/list/PhoneFavoriteListView$2;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final BOUND_GAP_RATIO:F

.field private final DRAG_SCROLL_PX_UNIT:I

.field private final DRAG_SHADOW_ALPHA:F

.field private final SCROLL_HANDLER_DELAY_MILLIS:J

.field private mAnimationDuration:I

.field private mBottomScrollBound:I

.field private mDragDropController:Lcom/android/dialer/list/DragDropController;

.field private final mDragScroller:Ljava/lang/Runnable;

.field private mDragShadowBitmap:Landroid/graphics/Bitmap;

.field private mDragShadowLeft:I

.field private final mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDragShadowOverlay:Landroid/widget/ImageView;

.field private mDragShadowParent:Landroid/view/View;

.field private mDragShadowTop:I

.field private mIsDragScrollerRunning:Z

.field private mLastDragY:I

.field final mLocationOnScreen:[I

.field private mScrollHandler:Landroid/os/Handler;

.field private mTopScrollBound:I

.field private mTouchDownForDragStartX:I

.field private mTouchDownForDragStartY:I

.field private mTouchOffsetToChildLeft:I

.field private mTouchOffsetToChildTop:I

.field private mTouchSlop:F


# direct methods
.method static synthetic -get0(Lcom/android/dialer/list/PhoneFavoriteListView;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mBottomScrollBound:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/dialer/list/PhoneFavoriteListView;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLastDragY:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/dialer/list/PhoneFavoriteListView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/dialer/list/PhoneFavoriteListView;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTopScrollBound:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/dialer/list/PhoneFavoriteListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/PhoneFavoriteListView;->LOG_TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/list/PhoneFavoriteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/list/PhoneFavoriteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->SCROLL_HANDLER_DELAY_MILLIS:J

    .line 55
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->DRAG_SCROLL_PX_UNIT:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    .line 76
    new-instance v0, Lcom/android/dialer/list/DragDropController;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/DragDropController;-><init>(Lcom/android/dialer/list/DragDropController$DragItemContainer;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    .line 78
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->DRAG_SHADOW_ALPHA:F

    .line 84
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->BOUND_GAP_RATIO:F

    .line 86
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteListView$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteListView$1;-><init>(Lcom/android/dialer/list/PhoneFavoriteListView;)V

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteListView$2;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/PhoneFavoriteListView$2;-><init>(Lcom/android/dialer/list/PhoneFavoriteListView;)V

    .line 98
    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mAnimationDuration:I

    .line 122
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    .line 123
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {v0, p0}, Lcom/android/dialer/list/DragDropController;->addOnDragDropListener(Lcom/android/dialer/list/OnDragDropListener;)V

    .line 119
    return-void
.end method

.method private createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 293
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 296
    .local v1, "cache":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 297
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 299
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 306
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 307
    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 309
    return-object v0

    .line 300
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/android/dialer/list/PhoneFavoriteListView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to copy bitmap from Drawing cache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureScrollHandler()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    .line 219
    :cond_0
    return-void
.end method

.method private getViewAtPosition(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildCount()I

    move-result v2

    .line 209
    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 210
    invoke-virtual {p0, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 213
    return-object v0

    .line 209
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public getDragDropController()Lcom/android/dialer/list/DragDropController;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    return-object v0
.end method

.method public getViewForLocation(II)Lcom/android/dialer/list/PhoneFavoriteSquareTileView;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 314
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {p0, v3}, Lcom/android/dialer/list/PhoneFavoriteListView;->getLocationOnScreen([I)V

    .line 316
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v1, p1, v3

    .line 317
    .local v1, "viewX":I
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int v2, p2, v3

    .line 318
    .local v2, "viewY":I
    invoke-direct {p0, v1, v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->getViewAtPosition(II)Landroid/view/View;

    move-result-object v0

    .line 320
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    if-nez v3, :cond_0

    .line 321
    const/4 v3, 0x0

    return-object v3

    .line 324
    :cond_0
    check-cast v0, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    .end local v0    # "child":Landroid/view/View;
    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/GridView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    .line 127
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 148
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 149
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 150
    .local v2, "eX":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 151
    .local v3, "eY":I
    packed-switch v0, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    return v8

    .line 153
    :pswitch_0
    const-string/jumbo v4, "PHONE_FAVORITE_TILE"

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    return v6

    .line 158
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {v4, p0, v2, v3}, Lcom/android/dialer/list/DragDropController;->handleDragStarted(Landroid/view/View;II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    return v6

    .line 164
    :pswitch_1
    iput v3, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLastDragY:I

    .line 165
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {v4, p0, v2, v3}, Lcom/android/dialer/list/DragDropController;->handleDragHovered(Landroid/view/View;II)V

    .line 167
    iget-boolean v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    if-nez v4, :cond_0

    .line 169
    iget v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLastDragY:I

    iget v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchSlop:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 170
    iput-boolean v8, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    .line 171
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->ensureScrollHandler()V

    .line 172
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    const-wide/16 v6, 0x5

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 176
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 177
    .local v1, "boundGap":I
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getTop()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTopScrollBound:I

    .line 178
    invoke-virtual {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->getBottom()I

    move-result v4

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mBottomScrollBound:I

    goto :goto_0

    .line 183
    .end local v1    # "boundGap":I
    :pswitch_3
    invoke-direct {p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->ensureScrollHandler()V

    .line 184
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mScrollHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragScroller:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iput-boolean v6, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mIsDragScrollerRunning:Z

    .line 187
    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 188
    :cond_2
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragDropController:Lcom/android/dialer/list/DragDropController;

    invoke-virtual {v4, v2, v3, v6}, Lcom/android/dialer/list/DragDropController;->handleDragFinished(IIZ)V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDragFinished(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 282
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 283
    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mAnimationDuration:I

    int-to-long v2, v1

    .line 282
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 279
    :cond_0
    return-void
.end method

.method public onDragHovered(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "tileView"    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 269
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildLeft:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    .line 270
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildTop:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    .line 272
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 274
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 266
    :cond_0
    return-void
.end method

.method public onDragStarted(IILcom/android/dialer/list/PhoneFavoriteSquareTileView;)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "tileView"    # Lcom/android/dialer/list/PhoneFavoriteSquareTileView;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 236
    invoke-direct {p0, p3}, Lcom/android/dialer/list/PhoneFavoriteListView;->createDraggedChildBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    .line 237
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 238
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {p3, v0}, Lcom/android/dialer/list/PhoneFavoriteSquareTileView;->getLocationOnScreen([I)V

    .line 242
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    .line 243
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    .line 250
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildLeft:I

    .line 251
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchOffsetToChildTop:I

    .line 253
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 254
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    .line 255
    iget v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mLocationOnScreen:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    .line 257
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 261
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowLeft:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 262
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowTop:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 230
    return-void
.end method

.method public onDroppedOnRemove()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartX:I

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mTouchDownForDragStartY:I

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDragShadowOverlay(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "overlay"    # Landroid/widget/ImageView;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    .line 200
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteListView;->mDragShadowParent:Landroid/view/View;

    .line 198
    return-void
.end method
