.class Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;
.super Landroid/os/AsyncTask;
.source "VoicemailAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->getVoicemailFilePath(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

.field final synthetic val$listener:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;Landroid/net/Uri;Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;
    .param p2, "val$voicemailUri"    # Landroid/net/Uri;
    .param p3, "val$listener"    # Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;->val$voicemailUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;->val$listener:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 111
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-get0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;->val$voicemailUri:Landroid/net/Uri;

    .line 112
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_data"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 113
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    .local v6, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-static {v0, v6}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-wrap2(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const-string/jumbo v0, "_data"

    .line 115
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 118
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    throw v7

    :catch_0
    move-exception v7

    goto :goto_0

    .line 115
    :cond_1
    return-object v0

    .line 118
    :cond_2
    if-eqz v6, :cond_3

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_7

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    if-eqz v6, :cond_4

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    if-eqz v1, :cond_6

    throw v1

    :catch_3
    move-exception v2

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_3

    :cond_5
    if-eq v1, v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    throw v0

    .line 119
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_7
    return-object v7

    .line 118
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, Ljava/lang/String;

    .end local p1    # "filePath":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$1;->val$listener:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;->onGetArchivedVoicemailFilePath(Ljava/lang/String;)V

    .line 123
    return-void
.end method
