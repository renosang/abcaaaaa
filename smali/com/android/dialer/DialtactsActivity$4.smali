.class Lcom/android/dialer/DialtactsActivity$4;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$4;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$4;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->isInSearchUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$4;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->-get0(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/widget/ActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/widget/ActionBarController;->onSearchBoxTapped()V

    .line 359
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$4;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$4;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v1}, Lcom/android/dialer/DialtactsActivity;->-get10(Lcom/android/dialer/DialtactsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 360
    const/4 v3, 0x1

    .line 359
    invoke-static {v0, v2, v1, v3}, Lcom/android/dialer/DialtactsActivity;->-wrap2(Lcom/android/dialer/DialtactsActivity;ZLjava/lang/String;Z)V

    .line 356
    :cond_0
    return-void
.end method
