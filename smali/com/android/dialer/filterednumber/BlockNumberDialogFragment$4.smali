.class Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$4;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->unblockNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

.field final synthetic val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

.field final synthetic val$undoMessage:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;Ljava/lang/CharSequence;Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;
    .param p2, "val$undoMessage"    # Ljava/lang/CharSequence;
    .param p3, "val$callback"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$4;->this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$4;->val$undoMessage:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$4;->val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockComplete(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$4;->this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->-get1(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$4;->val$undoMessage:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 291
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$4;->val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$4;->val$callback:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;

    invoke-interface {v0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$Callback;->onChangeFilteredNumberUndo()V

    .line 289
    :cond_0
    return-void
.end method
