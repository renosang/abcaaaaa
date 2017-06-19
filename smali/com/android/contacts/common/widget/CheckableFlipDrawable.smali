.class public Lcom/android/contacts/common/widget/CheckableFlipDrawable;
.super Lcom/android/contacts/common/widget/FlipDrawable;
.source "CheckableFlipDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;,
        Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;
    }
.end annotation


# static fields
.field private static final CHECKMARK_ALPHA_BEGIN_VALUE:F = 0.0f

.field private static final CHECKMARK_SCALE_BEGIN_VALUE:F = 0.2f

.field private static final END_VALUE:F = 1.0f

.field private static final POST_FLIP_DURATION_MS:I = 0x96


# instance fields
.field private final mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mCheckmarkDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;

.field private final mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

.field private final mFrontDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;II)V
    .locals 11
    .param p1, "front"    # Landroid/graphics/drawable/Drawable;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "checkBackgroundColor"    # I
    .param p4, "flipDurationMs"    # I

    .prologue
    const/4 v10, 0x2

    .line 38
    new-instance v1, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;

    invoke-direct {v1, p1}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;

    invoke-direct {v2, p2, p3}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 39
    const/4 v4, 0x0

    const/16 v5, 0x96

    move-object v0, p0

    move v3, p4

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/widget/FlipDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V

    .line 41
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;

    iput-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mFrontDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;

    .line 42
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;

    iput-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;

    .line 53
    iget v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mPreFlipDurationMs:I

    iget v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mFlipDurationMs:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-long v6, v0

    .line 55
    .local v6, "animationDelay":J
    iget v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mFlipDurationMs:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mPostFlipDurationMs:I

    add-int/2addr v0, v1

    int-to-long v8, v0

    .line 57
    .local v8, "animationDuration":J
    new-array v0, v10, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

    .line 59
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 60
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    new-array v0, v10, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 64
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 65
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    return-void

    .line 57
    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    .line 62
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public flip()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/contacts/common/widget/FlipDrawable;->flip()V

    .line 100
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 102
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 97
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->getSideFlippingTowards()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 106
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 109
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method

.method public getFrontDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mFrontDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;

    invoke-virtual {v0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->getInnerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 119
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->setScaleAnimatorValue(F)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->setAlphaAnimatorValue(F)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 84
    invoke-super {p0}, Lcom/android/contacts/common/widget/FlipDrawable;->reset()V

    .line 85
    iget-object v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 90
    iget-object v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->getSideFlippingTowards()Z

    move-result v0

    .line 92
    .local v0, "side":Z
    iget-object v3, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;

    if-eqz v0, :cond_2

    const v1, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->setScaleAnimatorValue(F)V

    .line 93
    iget-object v1, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->setAlphaAnimatorValue(F)V

    .line 83
    return-void

    :cond_2
    move v1, v2

    .line 92
    goto :goto_0
.end method

.method public setCheckMarkBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$CheckmarkDrawable;->setBackgroundColor(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->invalidateSelf()V

    .line 73
    return-void
.end method

.method public setFront(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "front"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->mFrontDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/widget/CheckableFlipDrawable$FrontDrawable;->setInnerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->invalidateSelf()V

    .line 68
    return-void
.end method
