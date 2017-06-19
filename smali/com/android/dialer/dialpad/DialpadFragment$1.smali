.class Lcom/android/dialer/dialpad/DialpadFragment$1;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/dialpad/DialpadFragment;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->-wrap1(Lcom/android/dialer/dialpad/DialpadFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$1;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;

    invoke-interface {v0}, Lcom/android/dialer/dialpad/DialpadFragment$HostInterface;->onDialpadSpacerTouchWithEmptyQuery()Z

    move-result v0

    return v0

    .line 434
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 436
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
