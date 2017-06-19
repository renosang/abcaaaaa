.class public Lcom/android/contacts/common/widget/FlipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FlipDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final END_VALUE:F = 2.0f


# instance fields
.field protected final mBack:Landroid/graphics/drawable/Drawable;

.field private final mFlipAnimator:Landroid/animation/ValueAnimator;

.field protected final mFlipDurationMs:I

.field private mFlipFraction:F

.field private mFlipToSide:Z

.field protected mFront:Landroid/graphics/drawable/Drawable;

.field protected final mPostFlipDurationMs:I

.field protected final mPreFlipDurationMs:I


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/widget/FlipDrawable;)F
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipFraction:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/contacts/common/widget/FlipDrawable;F)F
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipFraction:F

    return p1
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 4
    .param p1, "front"    # Landroid/graphics/drawable/Drawable;
    .param p2, "back"    # Landroid/graphics/drawable/Drawable;
    .param p3, "flipDurationMs"    # I
    .param p4, "preFlipDurationMs"    # I
    .param p5, "postFlipDurationMs"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipFraction:F

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipToSide:Z

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Front and back drawables must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object p2, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 96
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 98
    iput p3, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipDurationMs:I

    .line 99
    iput p4, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPreFlipDurationMs:I

    .line 100
    iput p5, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPostFlipDurationMs:I

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 103
    iget v1, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPreFlipDurationMs:I

    iget v2, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipDurationMs:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPostFlipDurationMs:I

    add-int/2addr v1, v2

    int-to-long v2, v1

    .line 102
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    .line 104
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/contacts/common/widget/FlipDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/widget/FlipDrawable$1;-><init>(Lcom/android/contacts/common/widget/FlipDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/FlipDrawable;->reset()V

    .line 88
    return-void

    .line 102
    nop

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 133
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/FlipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 134
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/FlipDrawable;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 135
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/FlipDrawable;->getSideShown()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v4, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    .line 140
    .local v4, "inner":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v8, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPreFlipDurationMs:I

    iget v9, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipDurationMs:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPostFlipDurationMs:I

    add-int/2addr v8, v9

    int-to-float v7, v8

    .line 143
    .local v7, "totalDurationMs":F
    iget v8, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipFraction:F

    div-float/2addr v8, v10

    iget v9, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPreFlipDurationMs:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 145
    const/high16 v6, 0x3f800000    # 1.0f

    .line 159
    .local v6, "scaleX":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    invoke-virtual {p1, v6, v11, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 162
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    return-void

    .line 138
    .end local v4    # "inner":Landroid/graphics/drawable/Drawable;
    .end local v6    # "scaleX":F
    .end local v7    # "totalDurationMs":F
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .restart local v4    # "inner":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 146
    .restart local v7    # "totalDurationMs":F
    :cond_3
    iget v8, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipFraction:F

    div-float/2addr v8, v10

    iget v9, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPostFlipDurationMs:I

    int-to-float v9, v9

    sub-float v9, v7, v9

    div-float/2addr v9, v7

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    .line 148
    const/high16 v6, 0x3f800000    # 1.0f

    .restart local v6    # "scaleX":F
    goto :goto_1

    .line 151
    .end local v6    # "scaleX":F
    :cond_4
    iget v8, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipFraction:F

    div-float v2, v8, v10

    .line 152
    .local v2, "flipFraction":F
    iget v8, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPreFlipDurationMs:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 153
    iget v9, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPostFlipDurationMs:I

    int-to-float v9, v9

    sub-float v9, v7, v9

    div-float/2addr v9, v7

    .line 152
    add-float/2addr v8, v9

    div-float v3, v8, v10

    .line 154
    .local v3, "flipMiddle":F
    sub-float v8, v2, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 155
    .local v1, "distFraction":F
    iget v8, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPreFlipDurationMs:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    sub-float v8, v3, v8

    div-float v5, v11, v8

    .line 156
    .local v5, "multiplier":F
    mul-float v6, v1, v5

    .restart local v6    # "scaleX":F
    goto :goto_1
.end method

.method public flip()V
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipToSide:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipToSide:Z

    .line 240
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 238
    :goto_1
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipToSide:Z

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1
.end method

.method public flipTo(Z)V
    .locals 1
    .param p1, "side"    # Z

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipToSide:Z

    if-eq v0, p1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/FlipDrawable;->flip()V

    .line 256
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/widget/FlipDrawable;->resolveOpacity(II)I

    move-result v0

    return v0
.end method

.method public getSideFlippingTowards()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipToSide:Z

    return v0
.end method

.method public getSideShown()Z
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 220
    iget v2, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPreFlipDurationMs:I

    iget v3, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipDurationMs:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPostFlipDurationMs:I

    add-int/2addr v2, v3

    int-to-float v1, v2

    .line 221
    .local v1, "totalDurationMs":F
    iget v2, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPreFlipDurationMs:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 222
    iget v3, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mPostFlipDurationMs:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    div-float/2addr v3, v1

    .line 221
    add-float/2addr v2, v3

    div-float v0, v2, v4

    .line 223
    .local v0, "middleFraction":F
    iget v2, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipFraction:F

    div-float/2addr v2, v4

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/FlipDrawable;->invalidateSelf()V

    .line 189
    return-void
.end method

.method public isFlipping()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipFraction:F

    .line 209
    .local v0, "old":F
    iget-object v1, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 210
    iget-boolean v1, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipToSide:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipFraction:F

    .line 211
    iget v1, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFlipFraction:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/FlipDrawable;->invalidateSelf()V

    .line 207
    :cond_0
    return-void

    .line 210
    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 195
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/contacts/common/widget/FlipDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 194
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 169
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 167
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 173
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 288
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 286
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 282
    iget-object v0, p0, Lcom/android/contacts/common/widget/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 280
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 200
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/widget/FlipDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method
