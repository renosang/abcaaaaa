.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "ImportExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I
    .param p4, "val$dialogInflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iput-object p4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 237
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 240
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    check-cast v0, Landroid/widget/TextView;

    .line 243
    .local v0, "result":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    iget-object v1, v1, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-object v0

    .line 241
    .end local v0    # "result":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400dc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
