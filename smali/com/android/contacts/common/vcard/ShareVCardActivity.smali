.class public Lcom/android/contacts/common/vcard/ShareVCardActivity;
.super Lcom/android/contacts/common/vcard/ExportVCardActivity;
.source "ShareVCardActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardShare"


# instance fields
.field private final A_DAY_IN_MILLIS:J

.field private final EXPORT_FILE_PREFIX:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ExportVCardActivity;-><init>()V

    .line 38
    const-string/jumbo v0, "vcards_"

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ShareVCardActivity;->EXPORT_FILE_PREFIX:Ljava/lang/String;

    .line 39
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/contacts/common/vcard/ShareVCardActivity;->A_DAY_IN_MILLIS:J

    .line 36
    return-void
.end method

.method private clearExportFiles()V
    .locals 10

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ShareVCardActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 79
    .local v2, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 80
    .local v0, "ageInMillis":J
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "vcards_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x5265c00

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 78
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "ageInMillis":J
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private getLocalFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 87
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 88
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "currentDateString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vcards_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".vcf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "localFilename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ShareVCardActivity;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    .line 44
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/contacts/common/vcard/ShareVCardActivity;->mConnected:Z

    .line 45
    check-cast p2, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .end local p2    # "binder":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/common/vcard/VCardService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/common/vcard/ShareVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    .line 47
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ShareVCardActivity;->clearExportFiles()V

    .line 49
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ShareVCardActivity;->getLocalFile()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 51
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    const v4, 0x7f0d01f7

    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/vcard/ShareVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {p0, v4, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    .local v0, "contentUri":Landroid/net/Uri;
    new-instance v3, Lcom/android/contacts/common/vcard/ExportRequest;

    invoke-direct {v3, v0}, Lcom/android/contacts/common/vcard/ExportRequest;-><init>(Landroid/net/Uri;)V

    .line 64
    .local v3, "request":Lcom/android/contacts/common/vcard/ExportRequest;
    iget-object v4, p0, Lcom/android/contacts/common/vcard/ShareVCardActivity;->mService:Lcom/android/contacts/common/vcard/VCardService;

    new-instance v5, Lcom/android/contacts/common/vcard/NotificationImportExportListener;

    invoke-direct {v5, p0}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v3, v5}, Lcom/android/contacts/common/vcard/VCardService;->handleExportRequest(Lcom/android/contacts/common/vcard/ExportRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ShareVCardActivity;->unbindAndFinish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 42
    return-void

    .line 52
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v3    # "request":Lcom/android/contacts/common/vcard/ExportRequest;
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v4, "VCardShare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to create .vcf file, because: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ShareVCardActivity;->unbindAndFinish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 55
    return-void

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
