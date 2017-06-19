.class Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$1;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

.field final synthetic val$isBlocked:Z


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;
    .param p2, "val$isBlocked"    # Z

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$1;->this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    iput-boolean p2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$1;->val$isBlocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$1;->val$isBlocked:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$1;->this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->-wrap1(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;)V

    .line 180
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$1;->this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->-wrap0(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;)V

    goto :goto_0
.end method
