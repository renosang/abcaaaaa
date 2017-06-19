.class public Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogQueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/CallLogQueryHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;->this$0:Lcom/android/dialer/calllog/CallLogQueryHandler;

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 95
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/SecurityException;
    const-string/jumbo v5, "CallLogQueryHandler"

    const-string/jumbo v6, "No permission to access ContactsProvider."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 110
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "CallLogQueryHandler"

    const-string/jumbo v6, "ContactsProvider not present on device"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 109
    .local v0, "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string/jumbo v5, "CallLogQueryHandler"

    const-string/jumbo v6, "Exception on background worker thread"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    .end local v0    # "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_3
    move-exception v2

    .line 107
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string/jumbo v5, "CallLogQueryHandler"

    const-string/jumbo v6, "Exception on background worker thread"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 104
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_4
    move-exception v1

    .line 105
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string/jumbo v5, "CallLogQueryHandler"

    const-string/jumbo v6, "Exception on background worker thread"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
