.class Lcom/android/incallui/OPCallCardFragment$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/OPCallCardFragment;->animationTopView(Landroid/view/View;ZZFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/OPCallCardFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/OPCallCardFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/OPCallCardFragment;
    .param p2, "val$view"    # Landroid/view/View;

    .prologue
    .line 2332
    iput-object p1, p0, Lcom/android/incallui/OPCallCardFragment$15;->this$0:Lcom/android/incallui/OPCallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/OPCallCardFragment$15;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 2341
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment$15;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v2, v1}, Lcom/android/incallui/OPCallCardFragment;->-set1(Lcom/android/incallui/OPCallCardFragment;Z)Z

    .line 2342
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment$15;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/OPCallCardFragment;->-get9(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment$15;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/OPCallCardFragment;->-get9(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/OPCallCardFragment$15;->val$view:Landroid/view/View;

    if-ne v2, v3, :cond_1

    .line 2343
    iget-object v2, p0, Lcom/android/incallui/OPCallCardFragment$15;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/OPCallCardFragment;->-get9(Lcom/android/incallui/OPCallCardFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/OPCallCardFragment$15;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v3}, Lcom/android/incallui/OPCallCardFragment;->-get2(Lcom/android/incallui/OPCallCardFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2340
    :cond_1
    return-void

    .line 2343
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/OPCallCardFragment$15;->this$0:Lcom/android/incallui/OPCallCardFragment;

    invoke-static {v3}, Lcom/android/incallui/OPCallCardFragment;->-get0(Lcom/android/incallui/OPCallCardFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/android/incallui/OPCallCardFragment$15;->this$0:Lcom/android/incallui/OPCallCardFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/OPCallCardFragment;->-set1(Lcom/android/incallui/OPCallCardFragment;Z)Z

    .line 2335
    return-void
.end method
