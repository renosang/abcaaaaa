.class public Lcom/android/contacts/common/vcard/SelectAccountActivity;
.super Landroid/app/Activity;
.source "SelectAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final DATA_SET:Ljava/lang/String; = "data_set"

.field private static final LOG_TAG:Ljava/lang/String; = "SelectAccountActivity"


# instance fields
.field private mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0d017d

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v4, 0x7f0d017d

    .line 60
    .local v4, "resId":I
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    .line 61
    .local v2, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v2, v6, v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZI)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 64
    const-string/jumbo v5, "SelectAccountActivity"

    const-string/jumbo v6, "Account does not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->finish()V

    .line 66
    return-void

    .line 67
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 68
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 69
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "account_name"

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string/jumbo v5, "account_type"

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string/jumbo v5, "data_set"

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->finish()V

    .line 75
    return-void

    .line 78
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v5, "SelectAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The number of available accounts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v5, Lcom/android/contacts/common/vcard/SelectAccountActivity$1;

    invoke-direct {v5, p0, p0, v1, v8}, Lcom/android/contacts/common/vcard/SelectAccountActivity$1;-><init>(Lcom/android/contacts/common/vcard/SelectAccountActivity;Landroid/app/Activity;Ljava/util/List;I)V

    .line 81
    iput-object v5, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    .line 96
    invoke-virtual {p0, v8}, Lcom/android/contacts/common/vcard/SelectAccountActivity;->showDialog(I)V

    .line 97
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 102
    const v0, 0x7f0d017d

    if-ne p1, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    .line 105
    const-string/jumbo v1, "mAccountSelectionListener must not be null."

    .line 104
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/SelectAccountActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    new-instance v1, Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/SelectAccountActivity;Lcom/android/contacts/common/vcard/SelectAccountActivity$CancelListener;)V

    const/4 v2, 0x0

    .line 107
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 110
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
