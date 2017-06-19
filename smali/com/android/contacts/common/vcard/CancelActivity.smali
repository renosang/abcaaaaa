.class public Lcom/android/contacts/common/vcard/CancelActivity;
.super Landroid/app/Activity;
.source "CancelActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;,
        Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;
    }
.end annotation


# static fields
.field static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field static final JOB_ID:Ljava/lang/String; = "job_id"

.field static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

.field private mDisplayName:Ljava/lang/String;

.field private mJobId:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const-string/jumbo v0, "VCardCancel"

    iput-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity;->LOG_TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/CancelActivity;Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    .line 36
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/CancelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 77
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "job_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mJobId:I

    .line 78
    const-string/jumbo v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    .line 79
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mType:I

    .line 80
    const v1, 0x7f0e0012

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/CancelActivity;->showDialog(I)V

    .line 74
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x104000a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    const v2, 0x7f0e0012

    if-ne p1, v2, :cond_1

    .line 87
    iget v2, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mType:I

    if-ne v2, v3, :cond_0

    .line 88
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0d017f

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/vcard/CancelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "message":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 94
    new-instance v3, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;-><init>(Lcom/android/contacts/common/vcard/CancelActivity;Lcom/android/contacts/common/vcard/CancelActivity$RequestCancelListener;)V

    .line 92
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    .line 92
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    const/high16 v4, 0x1040000

    .line 92
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 90
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0d0180

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/vcard/CancelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0e0013

    if-ne p1, v2, :cond_2

    .line 99
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    const v3, 0x7f0d0181

    .line 99
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 101
    const v3, 0x1010355

    .line 99
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 102
    const v3, 0x7f0d0182

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/CancelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    .line 99
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mCancelListener:Lcom/android/contacts/common/vcard/CancelActivity$CancelListener;

    .line 99
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 107
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    const-string/jumbo v2, "VCardCancel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown dialog id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 114
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v1

    .line 117
    .local v1, "service":Lcom/android/contacts/common/vcard/VCardService;
    :try_start_0
    new-instance v0, Lcom/android/contacts/common/vcard/CancelRequest;

    iget v2, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mJobId:I

    iget-object v3, p0, Lcom/android/contacts/common/vcard/CancelActivity;->mDisplayName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/android/contacts/common/vcard/CancelRequest;-><init>(ILjava/lang/String;)V

    .line 118
    .local v0, "request":Lcom/android/contacts/common/vcard/CancelRequest;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/vcard/VCardService;->handleCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {p0, p0}, Lcom/android/contacts/common/vcard/CancelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/CancelActivity;->finish()V

    .line 113
    return-void

    .line 119
    .end local v0    # "request":Lcom/android/contacts/common/vcard/CancelRequest;
    :catchall_0
    move-exception v2

    .line 120
    invoke-virtual {p0, p0}, Lcom/android/contacts/common/vcard/CancelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 119
    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 127
    return-void
.end method
