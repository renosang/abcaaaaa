.class Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$1;
.super Ljava/lang/Object;
.source "ImportVCardDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;

.field final synthetic val$sourceDisplayName:Ljava/lang/String;

.field final synthetic val$sourceUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;
    .param p2, "val$sourceUri"    # Landroid/net/Uri;
    .param p3, "val$sourceDisplayName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$1;->val$sourceUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$1;->val$sourceDisplayName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$1;->this$0:Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;

    .line 75
    .local v0, "listener":Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$1;->val$sourceUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$1;->val$sourceDisplayName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;->onImportVCardConfirmed(Landroid/net/Uri;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method
