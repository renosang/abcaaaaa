.class Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$2;
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


# direct methods
.method constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$2;->this$0:Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$2;->this$0:Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;

    invoke-virtual {v1}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;

    .line 84
    .local v0, "listener":Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;
    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;->onImportVCardDenied()V

    .line 82
    :cond_0
    return-void
.end method
