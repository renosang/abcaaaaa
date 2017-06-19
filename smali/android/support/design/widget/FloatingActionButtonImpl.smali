.class abstract Landroid/support/design/widget/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    }
.end annotation


# static fields
.field static final ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I


# instance fields
.field mAnimState:I

.field final mAnimatorCreator:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

.field mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

.field mElevation:F

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mPressedTranslationZ:F

.field mRippleDrawable:Landroid/graphics/drawable/Drawable;

.field final mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

.field mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field final mView:Landroid/support/design/widget/VisibilityAwareImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const v1, 0x101009e

    .line 36
    sget-object v0, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 61
    const v0, 0x10100a7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 63
    const v0, 0x101009c

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    .line 66
    new-array v0, v2, [I

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V
    .locals 1
    .param p1, "view"    # Landroid/support/design/widget/VisibilityAwareImageButton;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;
    .param p3, "animatorCreator"    # Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 77
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 78
    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 79
    iput-object p3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimatorCreator:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    .line 76
    return-void
.end method

.method private ensurePreDrawListener()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImpl$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$1;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method abstract getPadding(Landroid/graphics/Rect;)V
.end method

.method abstract hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method isOrWillBeHidden()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 204
    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 207
    :cond_1
    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method isOrWillBeShown()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 197
    :cond_1
    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    if-eq v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method abstract jumpDrawableToCurrentState()V
.end method

.method onAttachedToWindow()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->requirePreDrawListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->ensurePreDrawListener()V

    .line 137
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 134
    :cond_0
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 144
    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 141
    :cond_0
    return-void
.end method

.method abstract onDrawableStateChanged([I)V
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 132
    return-void
.end method

.method onPreDraw()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method abstract setBackgroundTintList(Landroid/content/res/ColorStateList;)V
.end method

.method abstract setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method abstract show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method final updatePadding()V
    .locals 6

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 125
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onPaddingUpdated(Landroid/graphics/Rect;)V

    .line 127
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/support/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 123
    return-void
.end method
