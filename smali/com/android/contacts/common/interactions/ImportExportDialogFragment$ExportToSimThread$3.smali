.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$3;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->showExportProgressDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$3;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 951
    const-string/jumbo v0, "ImportExportDialogFragment"

    const-string/jumbo v1, "Cancel exporting contacts by click button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread$3;->this$1:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->-set0(Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;Z)Z

    .line 949
    return-void
.end method
