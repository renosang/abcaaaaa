.class Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2$1;
.super Ljava/lang/Object;
.source "MigrateBlockedNumbersDialogFragment.java"

# interfaces
.implements Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;
    .param p2, "val$alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2$1;->this$1:Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;

    iput-object p2, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 95
    iget-object v0, p0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2$1;->this$1:Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;

    iget-object v0, v0, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment$2;->this$0:Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;->-get1(Lcom/android/dialer/filterednumber/MigrateBlockedNumbersDialogFragment;)Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersMigrator$Listener;->onComplete()V

    .line 93
    return-void
.end method
