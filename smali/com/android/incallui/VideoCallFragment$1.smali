.class Lcom/android/incallui/VideoCallFragment$1;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/VideoCallFragment;->inflateVideoCallViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VideoCallFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/VideoCallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/VideoCallFragment;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 865
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v2}, Lcom/android/incallui/VideoCallFragment;->-get0(Lcom/android/incallui/VideoCallFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e0205

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 866
    .local v0, "displayVideo":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 867
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v2, v0}, Lcom/android/incallui/VideoCallFragment;->-wrap0(Lcom/android/incallui/VideoCallFragment;Landroid/view/View;)V

    .line 869
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/VideoCallFragment;->-set0(Lcom/android/incallui/VideoCallFragment;Z)Z

    .line 872
    iget-object v2, p0, Lcom/android/incallui/VideoCallFragment$1;->this$0:Lcom/android/incallui/VideoCallFragment;

    invoke-static {v2}, Lcom/android/incallui/VideoCallFragment;->-get0(Lcom/android/incallui/VideoCallFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 873
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 874
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 862
    :cond_1
    return-void
.end method
