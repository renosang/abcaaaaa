.class Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3$1;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->onBlockComplete(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;

.field final synthetic val$onUndoListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;
    .param p2, "val$onUndoListener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;
    .param p3, "val$uri"    # Landroid/net/Uri;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3$1;->this$1:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3$1;->val$onUndoListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    iput-object p3, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 255
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->logInteraction(I)V

    .line 256
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3$1;->this$1:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;

    iget-object v0, v0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3;->this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->-get0(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;)Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3$1;->val$onUndoListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;

    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$3$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->unblock(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnUnblockNumberListener;Landroid/net/Uri;)V

    .line 253
    return-void
.end method
