.class Lcom/android/incallui/InCallActivity$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->startViewAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;
    .param p2, "val$flag"    # Z

    .prologue
    .line 1754
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    iput-boolean p2, p0, Lcom/android/incallui/InCallActivity$9;->val$flag:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 1765
    const-string/jumbo v0, "ViewAnimation onAnimationEnd"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1766
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity$9;->val$flag:Z

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->-set0(Lcom/android/incallui/InCallActivity;Z)Z

    .line 1768
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 1769
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->handleFinish()V

    .line 1764
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1758
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity$9;->val$flag:Z

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->-set0(Lcom/android/incallui/InCallActivity;Z)Z

    .line 1757
    :cond_0
    return-void
.end method
