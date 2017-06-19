.class Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5$1;
.super Ljava/lang/Object;
.source "BlockNumberDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5;->onUnblockComplete(ILandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5;

.field final synthetic val$onUndoListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5;Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5;
    .param p2, "val$onUndoListener"    # Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;
    .param p3, "val$values"    # Landroid/content/ContentValues;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5$1;->this$1:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5$1;->val$onUndoListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

    iput-object p3, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5$1;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 304
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->logInteraction(I)V

    .line 305
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5$1;->this$1:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5;

    iget-object v0, v0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5;->this$0:Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;->-get0(Lcom/android/dialer/filterednumber/BlockNumberDialogFragment;)Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5$1;->val$onUndoListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;

    iget-object v2, p0, Lcom/android/dialer/filterednumber/BlockNumberDialogFragment$5$1;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->blockNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnBlockNumberListener;Landroid/content/ContentValues;)V

    .line 302
    return-void
.end method
