.class Lcom/android/dialer/SpeedDialListActivity$3;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/SpeedDialListActivity;->showAddSpeedDialDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/SpeedDialListActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/SpeedDialListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/SpeedDialListActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/dialer/SpeedDialListActivity$3;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$3;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    invoke-static {v0}, Lcom/android/dialer/SpeedDialListActivity;->-get0(Lcom/android/dialer/SpeedDialListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$3;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    invoke-static {v0}, Lcom/android/dialer/SpeedDialListActivity;->-wrap0(Lcom/android/dialer/SpeedDialListActivity;)V

    .line 261
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$3;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    invoke-static {v0}, Lcom/android/dialer/SpeedDialListActivity;->-wrap2(Lcom/android/dialer/SpeedDialListActivity;)V

    .line 264
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$3;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    invoke-static {v0}, Lcom/android/dialer/SpeedDialListActivity;->-wrap0(Lcom/android/dialer/SpeedDialListActivity;)V

    .line 258
    return-void
.end method
