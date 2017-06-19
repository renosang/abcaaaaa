.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .prologue
    .line 302
    .local p2, "val$adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;>;"
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 305
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    iget v2, v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->mChoiceResourceId:I

    .line 306
    .local v2, "resId":I
    sparse-switch v2, :sswitch_data_0

    .line 340
    :goto_0
    const-string/jumbo v3, "ImportExportDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 341
    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v5}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    .line 340
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 304
    return-void

    .line 308
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-static {v3, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-wrap4(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;I)V

    goto :goto_1

    .line 312
    :sswitch_1
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    iget v3, v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;->mSubscriptionId:I

    invoke-static {v4, v2, v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-wrap0(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;II)Z

    goto :goto_1

    .line 316
    :sswitch_2
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-static {v3, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-wrap3(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;I)V

    goto :goto_1

    .line 320
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.contacts.action.MULTI_PICK"

    .line 321
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 320
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 322
    .local v0, "exportIntent":Landroid/content/Intent;
    const-string/jumbo v3, "is_contact"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-static {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-get0(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 323
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    .line 325
    .local v1, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    const-string/jumbo v3, "contactListFilter"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 327
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-virtual {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 328
    const/16 v4, 0x64

    .line 327
    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 332
    .end local v0    # "exportIntent":Landroid/content/Intent;
    .end local v1    # "filter":Lcom/android/contacts/common/list/ContactListFilter;
    :sswitch_4
    invoke-static {}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-get1()I

    move-result v3

    if-nez v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-static {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-wrap1(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    goto/16 :goto_0

    .line 335
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-static {v3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-wrap2(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    goto :goto_1

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00a3 -> :sswitch_2
        0x7f0d00a6 -> :sswitch_0
        0x7f0d017d -> :sswitch_1
        0x7f0d01ae -> :sswitch_3
        0x7f0d01be -> :sswitch_4
    .end sparse-switch
.end method
