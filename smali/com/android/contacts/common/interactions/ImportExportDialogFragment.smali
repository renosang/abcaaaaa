.class public Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;,
        Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimSelectListener;,
        Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;,
        Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ImportFromSimSelectListener;
    }
.end annotation


# static fields
.field private static final ARG_CONTACTS_ARE_AVAILABLE:Ljava/lang/String; = "CONTACTS_ARE_AVAILABLE"

.field private static final DEBUG:Z = true

.field public static final EXPORT_MODE_ALL_CONTACTS:I = 0x1

.field public static final EXPORT_MODE_DEFAULT:I = -0x1

.field public static final EXPORT_MODE_FAVORITES:I = 0x0

.field private static final EXT_NOT_SHOW_SIM_FLAG:Ljava/lang/String; = "not_sim_show"

.field private static final KEY_RES_ID:Ljava/lang/String; = "resourceId"

.field private static final KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "subscriptionId"

.field public static final MAX_COUNT_ALLOW_SHARE_CONTACT:I = 0x7d0

.field static final PHONE_CONTACT_ID_COLUMN_INDEX:I = 0x5

.field static final PHONE_DISPLAY_NAME_COLUMN_INDEX:I = 0x4

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LABEL_COLUMN_INDEX:I = 0x2

.field static final PHONE_NUMBER_COLUMN_INDEX:I = 0x3

.field static final PHONE_TYPE_COLUMN_INDEX:I = 0x1

.field public static final SUBACTIVITY_EXPORT_CONTACTS:I = 0x64

.field public static final SUBACTIVITY_MULTI_PICK_CONTACT:I = 0x7

.field public static final SUBACTIVITY_SHARE_VISILBLE_CONTACTS:I = 0x65

.field public static final TAG:Ljava/lang/String; = "ImportExportDialogFragment"

.field private static final TOAST_CONTACT_NAME_TOO_LONG:I = 0x3

.field private static final TOAST_EXPORT_CANCELED:I = 0x4

.field private static final TOAST_EXPORT_FAILED:I = 0x0

.field private static final TOAST_EXPORT_FINISHED:I = 0x1

.field private static final TOAST_EXPORT_NO_PHONE_OR_EMAIL:I = 0x5

.field private static final TOAST_SIM_CARD_FULL:I = 0x2

.field private static final TOAST_SIM_CARD_NOT_LOAD_COMPLETE:I = 0x6

.field private static final TOAST_SIM_EXPORT_FAILED:I = 0x7

.field private static isExportingToSIM:Z

.field private static mExportMode:I

.field public static mExportSub:I

.field private static mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;


# instance fields
.field private final LOOKUP_PROJECTION:[Ljava/lang/String;

.field public listener:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ImportFromSimSelectListener;

.field private mActivity:Landroid/app/Activity;

.field private mSimContactsOperation:Lcom/android/contacts/common/SimContactsOperation;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportMode:I

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->isExportingToSIM:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Lcom/android/contacts/common/SimContactsOperation;)Lcom/android/contacts/common/SimContactsOperation;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSimContactsOperation:Lcom/android/contacts/common/SimContactsOperation;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;II)Z
    .locals 1
    .param p1, "resId"    # I
    .param p2, "subscriptionId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportRequest(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->doShareFavoriteContacts()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->doShareVisibleContacts()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleExportToSimRequest(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportFromSimRequest(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;)V
    .locals 0
    .param p1, "exportingToSimThread"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->setExportingToSimThread(Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportMode:I

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->isExportingToSIM:Z

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 116
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 115
    iput-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static destroyExportToSimThread()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    .line 182
    return-void
.end method

.method public static dismissExportToSIMProgressDialog()V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    invoke-virtual {v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->dismisExportProgressDialog()V

    .line 192
    :cond_0
    return-void
.end method

.method private displayImportExportDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0d00a3

    const/4 v6, 0x0

    .line 977
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    .line 978
    const-string/jumbo v5, "phone"

    .line 977
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 979
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    sparse-switch p1, :sswitch_data_0

    .line 999
    :goto_0
    return-object v8

    .line 981
    :sswitch_0
    new-instance v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ImportFromSimSelectListener;

    invoke-direct {v4, p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ImportFromSimSelectListener;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    iput-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->listener:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ImportFromSimSelectListener;

    .line 982
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->showSimSelectDialog()V

    goto :goto_0

    .line 986
    :sswitch_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 987
    .local v1, "items":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 988
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 989
    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0}, Lcom/android/contacts/common/MoreContactUtils;->getAcount(Landroid/content/Context;I)Landroid/accounts/Account;

    move-result-object v5

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 988
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 991
    :cond_0
    sput v6, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportSub:I

    .line 992
    new-instance v2, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimSelectListener;

    invoke-direct {v2, p0, v8}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimSelectListener;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimSelectListener;)V

    .line 993
    .local v2, "listener":Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimSelectListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 995
    const v5, 0x104000a

    .line 993
    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 979
    :sswitch_data_0
    .sparse-switch
        0x7f0d00a3 -> :sswitch_1
        0x7f0d00b1 -> :sswitch_0
    .end sparse-switch
.end method

.method private doShareFavoriteContacts()V
    .locals 12

    .prologue
    .line 358
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 360
    const-string/jumbo v5, "display_name COLLATE NOCASE ASC"

    .line 359
    const/4 v3, 0x0

    .line 360
    const/4 v4, 0x0

    .line 358
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 361
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 363
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 365
    const v1, 0x7f0d01c3

    .line 366
    const/4 v2, 0x0

    .line 364
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 367
    return-void

    .line 371
    :cond_0
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v11, "uriListBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 374
    .local v8, "index":I
    :cond_1
    if-eqz v8, :cond_2

    .line 375
    const/16 v0, 0x3a

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    add-int/lit8 v8, v8, 0x1

    .line 378
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    .line 381
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 383
    .local v10, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.SEND"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "text/x-vcard"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/contacts/common/util/ImplicitIntentsUtil;->startActivityOutsideApp(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 356
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "index":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "uriListBuilder":Ljava/lang/StringBuilder;
    :cond_3
    :goto_0
    return-void

    .line 388
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 388
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 392
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 393
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ImportExportDialogFragment"

    const-string/jumbo v1, "Sharing contacts failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$3;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private doShareVisibleContacts()V
    .locals 4

    .prologue
    .line 406
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.contacts.action.MULTI_PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "vnd.android.cursor.dir/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string/jumbo v2, "is_contact"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 409
    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 411
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    const-string/jumbo v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 412
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 405
    return-void
.end method

.method public static getExportingToSimThread()Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    return-object v0
.end method

.method private getSubDescription(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "record"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1065
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1066
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const v2, 0x7f0d017c

    invoke-virtual {p0, v2, v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1071
    :cond_0
    const v1, 0x7f0d017b

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1070
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 1072
    aput-object v0, v2, v3

    .line 1073
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1070
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private handleExportToSimRequest(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1038
    const/4 v2, 0x0

    .line 1040
    .local v2, "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1045
    .end local v2    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    if-nez v2, :cond_0

    .line 1046
    return-void

    .line 1041
    .restart local v2    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "ImportExportDialogFragment"

    const-string/jumbo v4, "SecurityException thrown, lack permission for getActiveSubscriptionInfoList"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1047
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v2    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 1049
    invoke-direct {p0, p1, v6}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->displayImportExportDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1037
    :goto_1
    return-void

    .line 1051
    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    sput v3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportSub:I

    .line 1052
    new-instance v1, Landroid/content/Intent;

    .line 1053
    const-string/jumbo v3, "com.android.contacts.action.MULTI_PICK"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1052
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1055
    .local v1, "pickPhoneIntent":Landroid/content/Intent;
    const-string/jumbo v3, "contactListFilter"

    .line 1057
    const/4 v4, -0x2

    .line 1056
    invoke-static {v4}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v4

    .line 1055
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1058
    const-string/jumbo v3, "not_sim_show"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1059
    const-string/jumbo v3, "is_contact"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1060
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x7

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private handleImportFromSimRequest(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 1019
    const/4 v1, 0x0

    .line 1021
    .local v1, "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1026
    .end local v1    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    if-nez v1, :cond_0

    .line 1027
    return-void

    .line 1022
    .restart local v1    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ImportExportDialogFragment"

    const-string/jumbo v3, "SecurityException thrown, lack permission for getActiveSubscriptionInfoList"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1028
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1029
    const v2, 0x7f0d00b1

    invoke-direct {p0, v2, v4}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->displayImportExportDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    .line 1018
    :goto_1
    return-void

    .line 1032
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->setImportSubscription(I)V

    .line 1033
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportRequest(II)Z

    goto :goto_1
.end method

.method private handleImportRequest(II)Z
    .locals 9
    .param p1, "resId"    # I
    .param p2, "subscriptionId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 425
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 426
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v1, v7}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 427
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 428
    .local v3, "size":I
    if-le v3, v7, :cond_0

    .line 430
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 431
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "resourceId"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 434
    sget-object v5, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    .line 433
    const v6, 0x7f0d0179

    .line 432
    invoke-static {v4, p0, v6, v5, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 440
    return v8

    .line 443
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    .line 444
    if-ne v3, v7, :cond_1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 445
    :goto_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMSIMCompatible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 443
    .end local p2    # "subscriptionId":I
    :goto_1
    invoke-static {v5, p1, v4, p2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/app/Activity;ILcom/android/contacts/common/model/account/AccountWithDataSet;I)V

    .line 446
    return v7

    .line 444
    .restart local p2    # "subscriptionId":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 445
    :cond_2
    const/4 p2, -0x1

    goto :goto_1
.end method

.method public static isExportingToSIM()Z
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->isExportingToSIM:Z

    return v0
.end method

.method private setExportingToSimThread(Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;)V
    .locals 0
    .param p1, "exportingToSimThread"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    .prologue
    .line 171
    sput-object p1, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    .line 170
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;ZLjava/lang/Class;I)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "contactsAreAvailable"    # Z
    .param p2, "callingActivity"    # Ljava/lang/Class;
    .param p3, "exportMode"    # I

    .prologue
    .line 204
    new-instance v1, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;-><init>()V

    .line 205
    .local v1, "fragment":Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "CONTACTS_ARE_AVAILABLE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    const-string/jumbo v2, "CALLING_ACTIVITY"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 209
    const-string/jumbo v2, "ImportExportDialogFragment"

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 210
    sput p3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportMode:I

    .line 203
    return-void
.end method

.method public static showExportToSIMProgressDialog(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    sget-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;->showExportProgressDialog(Landroid/app/Activity;)V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public createExportToSimThread(ILjava/util/ArrayList;Landroid/app/Activity;)Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;
    .locals 1
    .param p1, "subscription"    # I
    .param p3, "mActivity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;"
        }
    .end annotation

    .prologue
    .line 159
    .local p2, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    sget-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;ILjava/util/ArrayList;Landroid/app/Activity;)V

    sput-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    .line 162
    :cond_0
    sget-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    invoke-direct {p0, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->setExportingToSimThread(Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;)V

    .line 163
    sget-object v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportThread:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ExportToSimThread;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 455
    const-string/jumbo v2, "subscriptionId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 454
    invoke-static {v0, v1, p1, v2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/app/Activity;ILcom/android/contacts/common/model/account/AccountWithDataSet;I)V

    .line 459
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->dismiss()V

    .line 453
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->dismiss()V

    .line 463
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 221
    invoke-static {p0}, Lcom/android/contacts/commonbind/analytics/AnalyticsUtil;->sendScreenView(Landroid/app/Fragment;)V

    .line 219
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    .line 228
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 229
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 230
    const-string/jumbo v10, "layout_inflater"

    .line 229
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 231
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "CONTACTS_ARE_AVAILABLE"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 232
    .local v3, "contactsAreAvailable":Z
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 233
    const-string/jumbo v10, "CALLING_ACTIVITY"

    .line 232
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "callingActivity":Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;

    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 237
    const v10, 0x7f0400dc

    .line 236
    invoke-direct {v0, p0, v9, v10, v4}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 249
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 250
    .local v6, "manager":Landroid/telephony/TelephonyManager;
    const v9, 0x7f090008

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 251
    new-instance v9, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v10, 0x7f0d017d

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 252
    const v11, 0x7f0d017d

    .line 251
    invoke-direct {v9, v10, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 255
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMSIMCompatible()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 256
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 257
    if-eqz v6, :cond_1

    const v9, 0x7f09000f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 258
    const/4 v8, 0x0

    .line 260
    .local v8, "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 265
    .end local v8    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 266
    new-instance v9, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v10, 0x7f0d00a6

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 267
    const v11, 0x7f0d00a6

    .line 266
    invoke-direct {v9, v10, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 268
    new-instance v9, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v10, 0x7f0d00a3

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 269
    const v11, 0x7f0d00a3

    .line 268
    invoke-direct {v9, v10, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 282
    :cond_1
    :goto_1
    const v9, 0x7f090010

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 283
    if-eqz v3, :cond_2

    .line 284
    new-instance v9, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v10, 0x7f0d01ae

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 285
    const v11, 0x7f0d01ae

    .line 284
    invoke-direct {v9, v10, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 288
    :cond_2
    const v9, 0x7f090011

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    .line 289
    sget v9, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportMode:I

    if-nez v9, :cond_5

    .line 291
    new-instance v9, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v10, 0x7f0d01bd

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 292
    const v11, 0x7f0d01be

    .line 291
    invoke-direct {v9, v10, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 302
    :cond_3
    :goto_2
    new-instance v2, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 347
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v10, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    if-eqz v3, :cond_6

    .line 349
    const v9, 0x7f0d01c0

    .line 347
    :goto_3
    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 351
    const/4 v10, -0x1

    .line 347
    invoke-virtual {v9, v0, v10, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 261
    .end local v2    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v8    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v5

    .line 262
    .local v5, "e":Ljava/lang/SecurityException;
    const-string/jumbo v9, "ImportExportDialogFragment"

    const-string/jumbo v10, "SecurityException thrown, lack permission for getActiveSubscriptionInfoList"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 273
    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v8    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 274
    const v9, 0x7f09000f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 273
    if-eqz v9, :cond_1

    .line 275
    new-instance v9, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v10, 0x7f0d00a6

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 276
    const v11, 0x7f0d00a6

    .line 275
    invoke-direct {v9, v10, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 277
    new-instance v9, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v10, 0x7f0d00a3

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 278
    const v11, 0x7f0d00a3

    .line 277
    invoke-direct {v9, v10, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 296
    :cond_5
    new-instance v9, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v10, 0x7f0d01be

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 297
    const v11, 0x7f0d01be

    .line 296
    invoke-direct {v9, v10, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 350
    .restart local v2    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_6
    const v9, 0x7f0d01c1

    goto :goto_3
.end method

.method public showSimSelectDialog()V
    .locals 7

    .prologue
    const v5, 0x7f0d00a6

    const/4 v6, 0x0

    .line 1003
    iget-object v3, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    .line 1004
    const-string/jumbo v4, "phone"

    .line 1003
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1005
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/contacts/common/util/AccountSelectionUtil;->setImportSubscription(I)V

    .line 1007
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 1008
    .local v1, "items":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1010
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v0}, Lcom/android/contacts/common/MoreContactUtils;->getAcount(Landroid/content/Context;I)Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1009
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1014
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->listener:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ImportFromSimSelectListener;

    const v5, 0x104000a

    .line 1012
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1015
    iget-object v4, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->listener:Lcom/android/contacts/common/interactions/ImportExportDialogFragment$ImportFromSimSelectListener;

    .line 1012
    invoke-virtual {v3, v1, v6, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1002
    return-void
.end method
