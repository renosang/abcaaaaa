.class public Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;
.super Ljava/lang/Object;
.source "PseudoEmergencyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;
    }
.end annotation


# instance fields
.field private mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

.field private mViewProvider:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;


# direct methods
.method static synthetic -wrap0(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->vibrate(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;)V
    .locals 0
    .param p1, "viewProvider"    # Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mViewProvider:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;

    .line 51
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->getView()Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mViewProvider:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mViewProvider:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;

    invoke-interface {v0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private vibrate(J)V
    .locals 3
    .param p1, "milliseconds"    # J

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 155
    .local v1, "vibrator":Landroid/os/Vibrator;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 150
    .end local v1    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->end()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mViewProvider:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$ViewProvider;

    .line 55
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 135
    :cond_0
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 61
    iget-object v2, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_0

    .line 62
    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 63
    .local v0, "colorFrom":Ljava/lang/Integer;
    const/high16 v2, -0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 64
    .local v1, "colorTo":Ljava/lang/Integer;
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    .line 66
    iget-object v2, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$1;-><init>(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    iget-object v2, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;

    invoke-direct {v3, p0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;-><init>(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    iget-object v2, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    iget-object v2, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 128
    iget-object v2, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 130
    .end local v0    # "colorFrom":Ljava/lang/Integer;
    .end local v1    # "colorTo":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->mPseudoEmergencyColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 60
    :cond_1
    return-void
.end method
