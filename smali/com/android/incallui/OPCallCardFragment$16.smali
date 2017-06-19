.class Lcom/android/incallui/OPCallCardFragment$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/OPCallCardFragment;->setEndCallButtonAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/OPCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/OPCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/OPCallCardFragment;

    .prologue
    .line 2439
    iput-object p1, p0, Lcom/android/incallui/OPCallCardFragment$16;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$16;->this$0:Lcom/android/incallui/OPCallCardFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/OPCallCardFragment;->-set0(Lcom/android/incallui/OPCallCardFragment;Z)Z

    .line 2449
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$16;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/OPCallCardFragment;->-get3(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2450
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$16;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/OPCallCardFragment;->-get3(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020214

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2451
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$16;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/OPCallCardFragment;->-get3(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2452
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$16;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v0}, Lcom/android/incallui/OPCallCardFragment;->-get4(Lcom/android/incallui/OPCallCardFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020215

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2453
    const-string/jumbo v0, "CallCardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationEnd mFloatingActionButton isEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment$16;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/OPCallCardFragment;->-get3(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$16;->this$0:Lcom/android/incallui/OPCallCardFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/OPCallCardFragment;->-set0(Lcom/android/incallui/OPCallCardFragment;Z)Z

    .line 2442
    return-void
.end method
