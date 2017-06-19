.class public Lcom/android/contacts/common/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccountSelectionUtil"

.field private static mImportSub:I

.field public static mPath:Landroid/net/Uri;

.field public static mVCardShare:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/common/util/AccountSelectionUtil;->mVCardShare:Z

    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/util/AccountSelectionUtil;->mImportSub:I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doImport(Landroid/app/Activity;ILcom/android/contacts/common/model/account/AccountWithDataSet;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resId"    # I
    .param p2, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p3, "subscriptionId"    # I

    .prologue
    .line 212
    sparse-switch p1, :sswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 214
    :sswitch_0
    invoke-static {p0, p2, p3}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;I)V

    goto :goto_0

    .line 218
    :sswitch_1
    invoke-static {p0, p2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImportFromVcfFile(Landroid/app/Activity;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 212
    :sswitch_data_0
    .sparse-switch
        0x7f0d00a6 -> :sswitch_0
        0x7f0d017d -> :sswitch_1
    .end sparse-switch
.end method

.method public static doImportFromSim(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountWithDataSet;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "subscriptionId"    # I

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.MULTI_PICK_SIM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "importIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 228
    const-string/jumbo v1, "account_name"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string/jumbo v1, "account_type"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void

    .line 236
    :cond_1
    const-string/jumbo v1, "slot"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static doImportFromVcfFile(Landroid/app/Activity;Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v0, "importIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 244
    const-string/jumbo v1, "account_name"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string/jumbo v1, "account_type"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :cond_0
    sget-boolean v1, Lcom/android/contacts/common/util/AccountSelectionUtil;->mVCardShare:Z

    if-eqz v1, :cond_1

    .line 250
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    sget-object v1, Lcom/android/contacts/common/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 253
    :cond_1
    sput-boolean v3, Lcom/android/contacts/common/util/AccountSelectionUtil;->mVCardShare:Z

    .line 254
    sput-object v4, Lcom/android/contacts/common/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    .line 255
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    return-void
.end method

.method public static getSelectAccountDialog(Landroid/app/Activity;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-static {p0, p1, v0, v0}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 120
    const/4 v0, 0x1

    .line 119
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/Dialog;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "includeSIM"    # Z

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v5

    .line 131
    .local v5, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v5, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 132
    .local v3, "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    if-eqz p4, :cond_2

    .line 133
    invoke-virtual {v5, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 139
    :goto_0
    const-string/jumbo v1, "AccountSelectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The number of available accounts: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v8, Landroid/view/ContextThemeWrapper;

    .line 145
    const v1, 0x103000c

    .line 144
    invoke-direct {v8, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 147
    .local v8, "dialogContext":Landroid/content/Context;
    const-string/jumbo v1, "layout_inflater"

    .line 146
    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 149
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/common/util/AccountSelectionUtil$1;

    .line 150
    const v2, 0x7f04001e

    move-object v1, p0

    move-object v6, p0

    .line 149
    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/util/AccountSelectionUtil$1;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/common/model/AccountTypeManager;Landroid/app/Activity;)V

    .line 184
    .local v0, "accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    if-nez p2, :cond_3

    .line 186
    new-instance v7, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-direct {v7, p0, v3, p1}, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    .line 187
    .local v7, "accountSelectedListener":Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
    move-object p2, v7

    .line 196
    .end local v7    # "accountSelectedListener":Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
    :cond_0
    :goto_1
    if-nez p3, :cond_1

    .line 197
    new-instance p3, Lcom/android/contacts/common/util/AccountSelectionUtil$2;

    .end local p3    # "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    invoke-direct {p3}, Lcom/android/contacts/common/util/AccountSelectionUtil$2;-><init>()V

    .line 203
    .restart local p3    # "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    const v2, 0x7f0d0179

    .line 203
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 205
    const/4 v2, 0x0

    .line 203
    invoke-virtual {v1, v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 135
    .end local v0    # "accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v4    # "dialogInflater":Landroid/view/LayoutInflater;
    .end local v8    # "dialogContext":Landroid/content/Context;
    :cond_2
    invoke-virtual {v5, v1, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(ZI)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 188
    .restart local v0    # "accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v4    # "dialogInflater":Landroid/view/LayoutInflater;
    .restart local v8    # "dialogContext":Landroid/content/Context;
    :cond_3
    instance-of v1, p2, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 194
    check-cast v1, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-virtual {v1, v3}, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->setAccountList(Ljava/util/List;)V

    goto :goto_1
.end method

.method public static getWriteableWithoutSimAccounts(Lcom/android/contacts/common/model/AccountTypeManager;)Ljava/util/List;
    .locals 5
    .param p0, "accountTypes"    # Lcom/android/contacts/common/model/AccountTypeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/AccountTypeManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 260
    .local v1, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const/4 v2, 0x0

    .line 261
    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 262
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 263
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    const-string/jumbo v3, "com.android.sim"

    iget-object v4, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 266
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_1
    return-object v1
.end method

.method public static setImportSubscription(I)V
    .locals 0
    .param p0, "subscription"    # I

    .prologue
    .line 104
    sput p0, Lcom/android/contacts/common/util/AccountSelectionUtil;->mImportSub:I

    .line 103
    return-void
.end method
