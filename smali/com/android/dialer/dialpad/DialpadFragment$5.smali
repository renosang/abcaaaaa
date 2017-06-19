.class Lcom/android/dialer/dialpad/DialpadFragment$5;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment;->showNoSpeedNumberDialog(I)V
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
    .line 1910
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$5;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1914
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$5;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/dialer/SpeedDialListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1915
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$5;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1912
    return-void
.end method
