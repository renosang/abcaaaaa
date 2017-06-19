.class Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$1;
.super Ljava/lang/Object;
.source "MigrateBlockedNumbersDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$1;->this$0:Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    move-object v0, p1

    .line 72
    check-cast v0, Landroid/app/AlertDialog;

    .line 73
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$1;->this$0:Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;

    invoke-static {v2, v0}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->-wrap0(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method
