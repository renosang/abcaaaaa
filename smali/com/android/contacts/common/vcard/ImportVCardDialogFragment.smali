.class public Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportVCardDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final ARG_SOURCE_DISPLAY_NAME:Ljava/lang/String; = "sourceDisplayName"

.field private static final ARG_SOURCE_URI:Ljava/lang/String; = "sourceUri"

.field static final TAG:Ljava/lang/String; = "importVCardDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "sourceDisplayName"    # Ljava/lang/String;

    .prologue
    .line 49
    instance-of v2, p0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;

    if-nez v2, :cond_0

    .line 50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity must implement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "sourceUri"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    const-string/jumbo v2, "sourceDisplayName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;-><init>()V

    .line 59
    .local v1, "dialog":Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "importVCardDialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;

    .line 96
    .local v0, "listener":Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;->onImportVCardDenied()V

    .line 93
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "sourceUri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 66
    .local v1, "sourceUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "sourceDisplayName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "sourceDisplayName":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    const v3, 0x1010355

    .line 68
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 70
    const v3, 0x7f0d00ce

    .line 68
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 71
    new-instance v3, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$1;-><init>(Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;Landroid/net/Uri;Ljava/lang/String;)V

    const v4, 0x1040013

    .line 68
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 80
    new-instance v3, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$2;-><init>(Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;)V

    const v4, 0x1040009

    .line 68
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
