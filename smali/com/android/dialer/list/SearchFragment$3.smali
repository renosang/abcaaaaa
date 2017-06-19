.class Lcom/android/dialer/list/SearchFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/list/SearchFragment;->updatePosition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/SearchFragment;

.field final synthetic val$slideUp:Z


# direct methods
.method constructor <init>(Lcom/android/dialer/list/SearchFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/SearchFragment;
    .param p2, "val$slideUp"    # Z

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/dialer/list/SearchFragment$3;->this$0:Lcom/android/dialer/list/SearchFragment;

    iput-boolean p2, p0, Lcom/android/dialer/list/SearchFragment$3;->val$slideUp:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/dialer/list/SearchFragment$3;->val$slideUp:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/dialer/list/SearchFragment$3;->this$0:Lcom/android/dialer/list/SearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/SearchFragment;->resizeListView()V

    .line 324
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/dialer/list/SearchFragment$3;->val$slideUp:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/dialer/list/SearchFragment$3;->this$0:Lcom/android/dialer/list/SearchFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/SearchFragment;->resizeListView()V

    .line 317
    :cond_0
    return-void
.end method
