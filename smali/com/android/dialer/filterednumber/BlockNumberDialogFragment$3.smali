.class Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->blockNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

.field final synthetic val$actionTextColor:I

.field final synthetic val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/CharSequence;

.field final synthetic val$onUndoListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;Ljava/lang/CharSequence;ILcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;Landroid/content/Context;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;
    .param p2, "val$message"    # Ljava/lang/CharSequence;
    .param p3, "val$actionTextColor"    # I
    .param p4, "val$callback"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;
    .param p5, "val$context"    # Landroid/content/Context;
    .param p6, "val$onUndoListener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$message:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$actionTextColor:I

    iput-object p4, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    iput-object p5, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$onUndoListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockComplete(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 251
    new-instance v0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3$1;

    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$onUndoListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3$1;-><init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/net/Uri;)V

    .line 260
    .local v0, "undoListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    invoke-static {v1}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->-get1(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$message:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 261
    const v2, 0x7f0d0214

    .line 260
    invoke-virtual {v1, v2, v0}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 262
    iget v2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$actionTextColor:I

    .line 260
    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar;->setActionTextColor(I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 265
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    invoke-interface {v1}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;->onFilterNumberSuccess()V

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$context:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->hasRecentEmergencyCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->maybeNotifyCallBlockingDisabled(Landroid/content/Context;)V

    .line 250
    :cond_1
    return-void
.end method
