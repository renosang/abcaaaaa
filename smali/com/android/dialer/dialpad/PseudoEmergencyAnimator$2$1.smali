.class Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2$1;
.super Ljava/lang/Object;
.source "PseudoEmergencyAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2$1;->this$1:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2$1;->this$1:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;

    iget-object v1, v1, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator$2;->this$0:Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;->-wrap1(Lcom/android/dialer/dialpad/PseudoEmergencyAnimator;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
