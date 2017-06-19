.class Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;
.super Ljava/lang/Object;
.source "MigrateBlockedNumbersDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->newPositiveButtonOnClickListener(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;
    .param p2, "val$alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;->this$0:Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;->this$0:Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->-get0(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;)Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2$1;

    iget-object v2, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2$1;-><init>(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator;->migrate(Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;)Z

    .line 88
    return-void
.end method
