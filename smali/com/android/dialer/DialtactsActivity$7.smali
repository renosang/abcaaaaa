.class Lcom/android/dialer/DialtactsActivity$7;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/DialtactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;

.field final synthetic val$floatingActionButtonContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/DialtactsActivity;
    .param p2, "val$floatingActionButtonContainer"    # Landroid/view/View;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    iput-object p2, p0, Lcom/android/dialer/DialtactsActivity$7;->val$floatingActionButtonContainer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 499
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$7;->val$floatingActionButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 500
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 501
    return-void

    .line 503
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 504
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->-get7(Lcom/android/dialer/DialtactsActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v1

    .line 505
    .local v1, "screenWidth":I
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->-get2(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/widget/FloatingActionButtonController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setScreenWidth(I)V

    .line 506
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->-get2(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/widget/FloatingActionButtonController;

    move-result-object v2

    .line 507
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$7;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v3}, Lcom/android/dialer/DialtactsActivity;->-wrap1(Lcom/android/dialer/DialtactsActivity;)I

    move-result v3

    const/4 v4, 0x0

    .line 506
    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->align(IZ)V

    .line 497
    return-void
.end method
