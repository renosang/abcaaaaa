.class Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;
.super Ljava/lang/Object;
.source "PseudoEmergencyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;->this$0:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 88
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;->this$0:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    invoke-static {v2}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->-wrap0(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;)Landroid/view/View;

    move-result-object v2

    .line 106
    const v3, 0x7f0e013d

    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "floatingActionButtonContainer":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 111
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2$1;-><init>(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;)V

    .line 119
    const-wide/16 v4, 0x3e8

    .line 111
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "floatingActionButtonContainer":Landroid/view/View;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;->this$0:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->-wrap1(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 100
    return-void
.end method
