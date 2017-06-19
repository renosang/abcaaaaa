.class Landroid/support/design/widget/FloatingActionButtonGingerbread;
.super Landroid/support/design/widget/FloatingActionButtonImpl;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;,
        Landroid/support/design/widget/FloatingActionButtonGingerbread$ResetElevationAnimation;,
        Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
    }
.end annotation


# instance fields
.field mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

.field private final mStateListAnimator:Landroid/support/design/widget/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V
    .locals 3
    .param p1, "view"    # Landroid/support/design/widget/VisibilityAwareImageButton;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;
    .param p3, "animatorCreator"    # Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButtonImpl;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V

    .line 44
    new-instance v0, Landroid/support/design/widget/StateListAnimator;

    invoke-direct {v0}, Landroid/support/design/widget/StateListAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    .line 47
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->PRESSED_ENABLED_STATE_SET:[I

    .line 48
    new-instance v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 49
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->FOCUSED_ENABLED_STATE_SET:[I

    .line 50
    new-instance v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 52
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->ENABLED_STATE_SET:[I

    .line 53
    new-instance v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$ResetElevationAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ResetElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 55
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    sget-object v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->EMPTY_STATE_SET:[I

    .line 56
    new-instance v2, Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;

    invoke-direct {v2, p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/StateListAnimator;->addState([ILandroid/support/design/widget/ValueAnimatorCompat;)V

    .line 41
    return-void
.end method

.method private createAnimator(Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;)Landroid/support/design/widget/ValueAnimatorCompat;
    .locals 4
    .param p1, "impl"    # Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 209
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mAnimatorCreator:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    invoke-interface {v1}, Landroid/support/design/widget/ValueAnimatorCompat$Creator;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v0

    .line 210
    .local v0, "animator":Landroid/support/design/widget/ValueAnimatorCompat;
    sget-object v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 211
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(J)V

    .line 212
    invoke-virtual {v0, p1}, Landroid/support/design/widget/ValueAnimatorCompat;->addListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListener;)V

    .line 213
    invoke-virtual {v0, p1}, Landroid/support/design/widget/ValueAnimatorCompat;->addUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 214
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 215
    return-object v0
.end method


# virtual methods
.method getPadding(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShadowDrawable:Landroid/support/design/widget/ShadowDrawableWrapper;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/ShadowDrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    .line 204
    return-void
.end method

.method hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fromUser"    # Z

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->isOrWillBeHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mAnimState:I

    .line 156
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$anim;->design_fab_out:I

    .line 155
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 157
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 159
    new-instance v1, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/FloatingActionButtonGingerbread$1;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;ZLandroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 169
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    return-void
.end method

.method jumpDrawableToCurrentState()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0}, Landroid/support/design/widget/StateListAnimator;->jumpToCurrentState()V

    .line 142
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mStateListAnimator:Landroid/support/design/widget/StateListAnimator;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/StateListAnimator;->setState([I)V

    .line 137
    return-void
.end method

.method setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 104
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 100
    :cond_1
    return-void
.end method

.method setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mShapeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 110
    :cond_0
    return-void
.end method

.method show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fromUser"    # Z

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonGingerbread;->isOrWillBeShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mAnimState:I

    .line 181
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 183
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$anim;->design_fab_in:I

    .line 182
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 184
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 185
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 186
    new-instance v1, Landroid/support/design/widget/FloatingActionButtonGingerbread$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/FloatingActionButtonGingerbread$2;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 195
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    return-void
.end method
