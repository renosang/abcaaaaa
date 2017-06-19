.class Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimSelectListener;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExportToSimSelectListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimSelectListener;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimSelectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimSelectListener;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 470
    if-ltz p2, :cond_1

    .line 471
    sput p2, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportSub:I

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 473
    new-instance v0, Landroid/content/Intent;

    .line 474
    const-string/jumbo v1, "com.android.contacts.action.MULTI_PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 473
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 476
    .local v0, "pickPhoneIntent":Landroid/content/Intent;
    const-string/jumbo v1, "contactListFilter"

    .line 478
    const/4 v2, -0x2

    .line 477
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    .line 476
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 479
    const-string/jumbo v1, "not_sim_show"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    const-string/jumbo v1, "is_contact"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimSelectListener;->this$0:Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-static {v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->-get0(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)Landroid/app/Activity;

    move-result-object v1

    .line 482
    const/4 v2, 0x7

    .line 481
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
