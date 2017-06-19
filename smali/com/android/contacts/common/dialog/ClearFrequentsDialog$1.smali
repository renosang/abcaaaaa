.class Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;
.super Ljava/lang/Object;
.source "ClearFrequentsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/dialog/ClearFrequentsDialog;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    iput-object p2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    iget-object v2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/util/PermissionsUtil;->hasContactsPermissions(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    invoke-virtual {v2}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->this$0:Lcom/android/contacts/common/dialog/ClearFrequentsDialog;

    const v4, 0x7f0d011b

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    .line 54
    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;->show(Landroid/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;

    move-result-object v0

    .line 57
    .local v0, "progressDialog":Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;
    new-instance v1, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;

    iget-object v2, p0, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1$1;-><init>(Lcom/android/contacts/common/dialog/ClearFrequentsDialog$1;Landroid/content/ContentResolver;Lcom/android/contacts/common/dialog/IndeterminateProgressDialog;)V

    .line 70
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method
