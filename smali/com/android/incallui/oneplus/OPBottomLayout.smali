.class public Lcom/android/incallui/oneplus/OPBottomLayout;
.super Landroid/widget/RelativeLayout;
.source "OPBottomLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;,
        Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;
    }
.end annotation


# instance fields
.field private isTouch:Z

.field private mContext:Landroid/content/Context;

.field private mIgnoreBottomView:Lcom/android/incallui/oneplus/OPBottomView;

.field private mIgnoreImage:Landroid/widget/ImageView;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mListener:Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;

.field private mMessageBottomView:Lcom/android/incallui/oneplus/OPBottomView;

.field private mMessageImage:Landroid/widget/ImageView;

.field private mMinCircleSize:F

.field private mTargeRadius:F

.field private mTargetedView:Landroid/view/View;

.field private mTipText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/oneplus/OPBottomLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->isTouch:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/oneplus/OPBottomLayout;)Lcom/android/incallui/oneplus/OPBottomView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mTargetedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mTipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/oneplus/OPBottomLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mInitialTouchX:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/incallui/oneplus/OPBottomLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mInitialTouchY:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/incallui/oneplus/OPBottomLayout;)Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mListener:Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/incallui/oneplus/OPBottomLayout;)Lcom/android/incallui/oneplus/OPBottomView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/incallui/oneplus/OPBottomLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMinCircleSize:F

    return v0
.end method

.method static synthetic -get9(Lcom/android/incallui/oneplus/OPBottomLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mTargeRadius:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/incallui/oneplus/OPBottomLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->isTouch:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/incallui/oneplus/OPBottomLayout;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mInitialTouchX:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/incallui/oneplus/OPBottomLayout;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mInitialTouchY:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/incallui/oneplus/OPBottomLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mTargetedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/oneplus/OPBottomLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/OPBottomLayout;->handleUp(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/oneplus/OPBottomLayout;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/OPBottomLayout;->resetBottomView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/oneplus/OPBottomLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/oneplus/OPBottomLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mListener:Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;

    .line 67
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/OPBottomLayout;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private handleUp(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mTipText:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v1, 0x7f0a03ad

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPBottomLayout;->setBackgroundResource(I)V

    .line 115
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPBottomLayout;->setClipToOutline(Z)V

    .line 116
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e01a6

    if-ne v1, v2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    invoke-virtual {v1}, Lcom/android/incallui/oneplus/OPBottomView;->cancelAnimator()V

    .line 118
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    invoke-virtual {v1, p0}, Lcom/android/incallui/oneplus/OPBottomView;->getRevealAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 119
    .local v0, "animator":Landroid/animation/Animator;
    new-instance v1, Lcom/android/incallui/oneplus/OPBottomLayout$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/oneplus/OPBottomLayout$1;-><init>(Lcom/android/incallui/oneplus/OPBottomLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 112
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e01a9

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    invoke-virtual {v1}, Lcom/android/incallui/oneplus/OPBottomView;->cancelAnimator()V

    .line 135
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    invoke-virtual {v1, p0}, Lcom/android/incallui/oneplus/OPBottomView;->getRevealAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 136
    .restart local v0    # "animator":Landroid/animation/Animator;
    new-instance v1, Lcom/android/incallui/oneplus/OPBottomLayout$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/oneplus/OPBottomLayout$2;-><init>(Lcom/android/incallui/oneplus/OPBottomLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 149
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040095

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    const v1, 0x7f0e01a5

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPBottomLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/oneplus/OPBottomView;

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    .line 75
    const v1, 0x7f0e01a8

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPBottomLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/oneplus/OPBottomView;

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    .line 76
    const v1, 0x7f0e01a7

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPBottomLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mTipText:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0e01a6

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPBottomLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreImage:Landroid/widget/ImageView;

    .line 78
    const v1, 0x7f0e01a9

    invoke-virtual {p0, v1}, Lcom/android/incallui/oneplus/OPBottomLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageImage:Landroid/widget/ImageView;

    .line 79
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;-><init>(Lcom/android/incallui/oneplus/OPBottomLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;-><init>(Lcom/android/incallui/oneplus/OPBottomLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMinCircleSize:F

    .line 82
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mTargeRadius:F

    .line 71
    return-void
.end method

.method private resetBottomView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mTipText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01a6

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPBottomView;->reset()V

    .line 105
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreImage:Landroid/widget/ImageView;

    const v1, 0x7f020220

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01a9

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPBottomView;->reset()V

    .line 108
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageImage:Landroid/widget/ImageView;

    const v1, 0x7f020228

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mTipText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreImage:Landroid/widget/ImageView;

    const v1, 0x7f020220

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageImage:Landroid/widget/ImageView;

    const v1, 0x7f020228

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPBottomView;->reset()V

    .line 96
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mIgnoreBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPBottomView;->cancelAnimator()V

    .line 97
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPBottomView;->reset()V

    .line 98
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageBottomView:Lcom/android/incallui/oneplus/OPBottomView;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPBottomView;->cancelAnimator()V

    .line 91
    return-void
.end method

.method public setFunctionListner(Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;)V
    .locals 0
    .param p1, "li"    # Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mListener:Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;

    .line 53
    return-void
.end method

.method public updateMessageView(Z)V
    .locals 2
    .param p1, "withSms"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPBottomLayout;->mMessageImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    :cond_0
    return-void

    .line 87
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
