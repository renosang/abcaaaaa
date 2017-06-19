.class public Lcom/android/incallui/oneplus/OPBottomView;
.super Landroid/view/View;
.source "OPBottomView.java"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mButtonDimen:F

.field private mCenterX:F

.field private mCenterY:F

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCircleRadius:F

.field private mContext:Landroid/content/Context;

.field private mIsLeft:Z

.field private mMaxCircleSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/oneplus/OPBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/oneplus/OPBottomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPBottomView;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/OPBottomView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 80
    const-string/jumbo v0, "OPBottomView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCircleRadius getWidth(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPBottomView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", getHeight(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPBottomView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mButtonDimen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mButtonDimen:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 82
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mIsLeft:Z

    if-eqz v0, :cond_1

    .line 83
    iget v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mButtonDimen:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterX:F

    .line 84
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPBottomView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/oneplus/OPBottomView;->mButtonDimen:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterY:F

    .line 89
    :goto_0
    iget v1, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterX:F

    iget v2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterY:F

    iget v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCircleRadius:F

    iget v3, p0, Lcom/android/incallui/oneplus/OPBottomView;->mMaxCircleSize:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mMaxCircleSize:F

    :goto_1
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    :cond_0
    const-string/jumbo v0, "OPBottomView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMaxCircleSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mMaxCircleSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCenterX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCenterY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPBottomView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/oneplus/OPBottomView;->mButtonDimen:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterX:F

    .line 87
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPBottomView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/incallui/oneplus/OPBottomView;->mButtonDimen:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterY:F

    goto :goto_0

    .line 89
    :cond_2
    iget v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCircleRadius:F

    goto :goto_1
.end method

.method private getMaxCircleSize()F
    .locals 8

    .prologue
    .line 67
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPBottomView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 68
    .local v2, "winManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 69
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 70
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCirclePaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCirclePaint:Landroid/graphics/Paint;

    const v1, -0x9e3b01    # -3.0009916E38f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPBottomView;->getMaxCircleSize()F

    move-result v0

    iput v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mMaxCircleSize:F

    .line 63
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mButtonDimen:F

    .line 57
    return-void
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 109
    :cond_0
    return-void
.end method

.method public getRevealAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 102
    const-string/jumbo v0, "OPBottomView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCircleRadius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCircleRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mMaxCircleSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mMaxCircleSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCenterX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCenterY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCenterY:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCircleRadius:F

    iget v3, p0, Lcom/android/incallui/oneplus/OPBottomView;->mMaxCircleSize:F

    .line 103
    invoke-static {p1, v0, v1, v2, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mAnimator:Landroid/animation/Animator;

    .line 105
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 106
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 74
    const-string/jumbo v0, "OPBottomView"

    const-string/jumbo v1, "onDraw"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/OPBottomView;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCircleRadius:F

    .line 117
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPBottomView;->invalidate()V

    .line 115
    return-void
.end method

.method public setCircleRadius(FZ)V
    .locals 3
    .param p1, "circleRadius"    # F
    .param p2, "isLeft"    # Z

    .prologue
    .line 95
    const-string/jumbo v0, "OPBottomView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCircleRadius circleRadius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isLeft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput p1, p0, Lcom/android/incallui/oneplus/OPBottomView;->mCircleRadius:F

    .line 97
    iput-boolean p2, p0, Lcom/android/incallui/oneplus/OPBottomView;->mIsLeft:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPBottomView;->invalidate()V

    .line 94
    return-void
.end method
