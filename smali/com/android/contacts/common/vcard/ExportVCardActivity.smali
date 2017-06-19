.class public Lcom/android/contacts/common/vcard/ExportVCardActivity;
.super Landroid/app/Activity;
.source "ExportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field protected static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "VCardExport"

.field private static final REQUEST_CREATE_DOCUMENT:I = 0x64

.field private static final mBidiFormatter:Landroid/text/BidiFormatter;


# instance fields
.field protected mConnected:Z

.field private mErrorReason:Ljava/lang/String;

.field private volatile mProcessOngoing:Z

.field protected mService:Lcom/android/contacts/common/vcard/VCardService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 49
    return-void
.end method

.method private connectVCardService()V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 94
    const-string/jumbo v3, "CALLING_ACTIVITY"

    .line 93
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "callingActivity":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "CALLING_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    .line 99
    const-string/jumbo v2, "VCardExport"

    const-string/jumbo v3, "Failed to start vCard service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showErrorDialog()V

    .line 101
    return-void

    .line 104
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    const-string/jumbo v2, "VCardExport"

    const-string/jumbo v3, "Failed to connect to vCard service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showErrorDialog()V

    .line 92
    :cond_1
    return-void
.end method

.method private getCreateDocIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string/jumbo v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "android.intent.extra.TITLE"

    sget-object v2, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 130
    const v3, 0x7f0d009b

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 129
    invoke-virtual {v2, v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    return-object v0
.end method

.method private getCreateOneplusDocIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ONEPLUS_CREATE_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v1, "android.intent.extra.TITLE"

    sget-object v2, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 138
    const v3, 0x7f0d009b

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 137
    invoke-virtual {v2, v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    return-object v0
.end method

.method static getOpenableUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 257
    if-nez p1, :cond_0

    return-object v2

    .line 258
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 260
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    const-string/jumbo v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 264
    if-eqz v6, :cond_1

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_1
    return-object v0

    .line 264
    :cond_2
    if-eqz v6, :cond_3

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_3
    return-object v2

    .line 263
    :catchall_0
    move-exception v0

    .line 264
    if-eqz v6, :cond_4

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_4
    throw v0
.end method

.method private hasExportIntentHandler()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getCreateDocIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 114
    const/high16 v4, 0x10000

    .line 113
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private hasOneplusExportIntentHandler()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getCreateOneplusDocIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 121
    const/high16 v4, 0x10000

    .line 120
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private showErrorDialog()V
    .locals 1

    .prologue
    .line 143
    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    .line 144
    const v0, 0x7f0e0015

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showDialog(I)V

    .line 142
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 149
    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    .line 150
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    if-eqz v2, :cond_0

    .line 151
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 154
    .local v1, "targetFileName":Landroid/net/Uri;
    new-instance v0, Lcom/android/contacts/common/vcard/ExportRequest;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;)V

    .line 156
    .local v0, "request":Lcom/android/contacts/common/vcard/ExportRequest;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    new-instance v3, Lcom/android/contacts/common/vcard/NotificationImportExportListener;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/common/vcard/VCardService;->handleExportRequest(Lcom/android/contacts/common/vcard/ExportRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    .line 165
    .end local v0    # "request":Lcom/android/contacts/common/vcard/ExportRequest;
    .end local v1    # "targetFileName":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 148
    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 242
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindAndFinish()V

    .line 236
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {p0}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->connectVCardService()V

    .line 76
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 212
    const v0, 0x7f0e0015

    if-ne p1, v0, :cond_1

    .line 213
    iput-boolean v3, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 214
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    const v1, 0x7f0d0199

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 216
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    :goto_0
    aput-object v0, v2, v3

    .line 216
    const v0, 0x7f0d019a

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    const v1, 0x104000a

    .line 214
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 228
    const v0, 0x7f0e0015

    if-ne p1, v0, :cond_0

    .line 229
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    iget-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mErrorReason:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    :goto_0
    return-void

    .line 231
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    .line 172
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    .line 173
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 175
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->hasOneplusExportIntentHandler()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    :try_start_1
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getCreateOneplusDocIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 170
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "VCardExport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected startActivityForResult e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showErrorDialog()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 183
    :cond_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->hasExportIntentHandler()Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showErrorDialog()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->getCreateDocIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 189
    :catch_1
    move-exception v1

    .line 190
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v2, "VCardExport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected startActivityForResult e1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showErrorDialog()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    monitor-enter p0

    .line 201
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    .line 203
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v0, "VCardExport"

    const-string/jumbo v1, "Disconnected from service during the process ongoing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->showErrorDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 199
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized unbindAndFinish()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 272
    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mConnected:Z

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 271
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ExportVCardActivity;->mProcessOngoing:Z

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 249
    return-void
.end method
