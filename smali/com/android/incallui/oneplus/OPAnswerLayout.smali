.class public Lcom/android/incallui/oneplus/OPAnswerLayout;
.super Landroid/widget/FrameLayout;
.source "OPAnswerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/oneplus/OPAnswerLayout$1;,
        Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;,
        Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;
    }
.end annotation


# instance fields
.field private animationRunning:Z

.field private isTouch:Z

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mFunctionListener:Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;

.field private mGreenLight:Lcom/android/incallui/oneplus/OPBlingLight;

.field private mHander:Landroid/os/Handler;

.field private mHangUpView:Landroid/widget/ImageView;

.field private mLastX:F

.field private mReceiveView:Landroid/widget/ImageView;

.field private mRedLight:Lcom/android/incallui/oneplus/OPBlingLight;

.field private mTouchContainer:Landroid/widget/FrameLayout;

.field private mTouchTargeX:F

.field private mTouchTransX:F


# direct methods
.method static synthetic -get0(Lcom/android/incallui/oneplus/OPAnswerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->isTouch:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/oneplus/OPAnswerLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/oneplus/OPAnswerLayout;)Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mFunctionListener:Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/oneplus/OPAnswerLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/incallui/oneplus/OPAnswerLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mLastX:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/incallui/oneplus/OPAnswerLayout;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mTouchContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/incallui/oneplus/OPAnswerLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mTouchTargeX:F

    return v0
.end method

.method static synthetic -get7(Lcom/android/incallui/oneplus/OPAnswerLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mTouchTransX:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/incallui/oneplus/OPAnswerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->isTouch:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/incallui/oneplus/OPAnswerLayout;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mLastX:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/oneplus/OPAnswerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->resetArrow()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/oneplus/OPAnswerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->startDelayAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/oneplus/OPAnswerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->stopAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/oneplus/OPAnswerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/oneplus/OPAnswerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mFunctionListener:Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->animationRunning:Z

    .line 55
    new-instance v0, Lcom/android/incallui/oneplus/OPAnswerLayout$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/oneplus/OPAnswerLayout$1;-><init>(Lcom/android/incallui/oneplus/OPAnswerLayout;)V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mHander:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/OPAnswerLayout;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method private createAnimator()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mAnimator:Landroid/animation/AnimatorSet;

    .line 166
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mRedLight:Lcom/android/incallui/oneplus/OPBlingLight;

    const-string/jumbo v2, "red"

    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mRedLight:Lcom/android/incallui/oneplus/OPBlingLight;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/oneplus/OPBlingLight;->getAnimation(Ljava/lang/String;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mGreenLight:Lcom/android/incallui/oneplus/OPBlingLight;

    const-string/jumbo v2, "green"

    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mGreenLight:Lcom/android/incallui/oneplus/OPBlingLight;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/oneplus/OPBlingLight;->getAnimation(Ljava/lang/String;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 167
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 168
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/incallui/oneplus/OPAnswerLayout$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/oneplus/OPAnswerLayout$2;-><init>(Lcom/android/incallui/oneplus/OPAnswerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 94
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040093

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    const v1, 0x7f0e01a0

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPAnswerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mTouchContainer:Landroid/widget/FrameLayout;

    .line 96
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mTouchContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;-><init>(Lcom/android/incallui/oneplus/OPAnswerLayout;Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    const v1, 0x7f0e019d

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPAnswerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/oneplus/OPBlingLight;

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mRedLight:Lcom/android/incallui/oneplus/OPBlingLight;

    .line 98
    const v1, 0x7f0e019e

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPAnswerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/oneplus/OPBlingLight;

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mGreenLight:Lcom/android/incallui/oneplus/OPBlingLight;

    .line 99
    const v1, 0x7f0e019b

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPAnswerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mHangUpView:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e019f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mReceiveView:Landroid/widget/ImageView;

    .line 101
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mTouchTargeX:F

    .line 102
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mTouchTransX:F

    .line 92
    return-void
.end method

.method private isAnimationRunning()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->animationRunning:Z

    return v0
.end method

.method private resetArrow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mRedLight:Lcom/android/incallui/oneplus/OPBlingLight;

    invoke-virtual {v0, v1}, Lcom/android/incallui/oneplus/OPBlingLight;->setTranslationX(F)V

    .line 180
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mGreenLight:Lcom/android/incallui/oneplus/OPBlingLight;

    invoke-virtual {v0, v1}, Lcom/android/incallui/oneplus/OPBlingLight;->setTranslationX(F)V

    .line 178
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    const-string/jumbo v0, "OPAnswerLayout"

    const-string/jumbo v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mRedLight:Lcom/android/incallui/oneplus/OPBlingLight;

    invoke-virtual {v0, v2}, Lcom/android/incallui/oneplus/OPBlingLight;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mGreenLight:Lcom/android/incallui/oneplus/OPBlingLight;

    invoke-virtual {v0, v2}, Lcom/android/incallui/oneplus/OPBlingLight;->setVisibility(I)V

    .line 196
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->startDelayAnimation()V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->animationRunning:Z

    .line 191
    :cond_0
    return-void
.end method

.method private startDelayAnimation()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 184
    const-string/jumbo v0, "OPAnswerLayout"

    const-string/jumbo v1, "startDelayAnimation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->createAnimator()V

    .line 186
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mRedLight:Lcom/android/incallui/oneplus/OPBlingLight;

    invoke-virtual {v0, v2}, Lcom/android/incallui/oneplus/OPBlingLight;->setAlpha(F)V

    .line 187
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mGreenLight:Lcom/android/incallui/oneplus/OPBlingLight;

    invoke-virtual {v0, v2}, Lcom/android/incallui/oneplus/OPBlingLight;->setAlpha(F)V

    .line 188
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 183
    return-void
.end method

.method private stopAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 202
    const-string/jumbo v0, "OPAnswerLayout"

    const-string/jumbo v1, "stopAnimation"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mHander:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mRedLight:Lcom/android/incallui/oneplus/OPBlingLight;

    invoke-virtual {v0, v3}, Lcom/android/incallui/oneplus/OPBlingLight;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mGreenLight:Lcom/android/incallui/oneplus/OPBlingLight;

    invoke-virtual {v0, v3}, Lcom/android/incallui/oneplus/OPBlingLight;->setVisibility(I)V

    .line 210
    iput-boolean v2, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->animationRunning:Z

    .line 211
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->resetArrow()V

    .line 201
    :cond_1
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mTouchContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 222
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->stopAnimation()V

    .line 220
    return-void
.end method

.method public restartAnimation()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mTouchContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 217
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->startAnimation()V

    .line 215
    return-void
.end method

.method public setFunctionListner(Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;)V
    .locals 0
    .param p1, "li"    # Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout;->mFunctionListener:Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;

    .line 74
    return-void
.end method
