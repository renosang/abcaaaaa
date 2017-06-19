.class Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;
.super Landroid/os/AsyncTask;
.source "VoicemailAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->archiveVoicemailContent(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;Landroid/net/Uri;)V
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
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

.field final synthetic val$listener:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;Landroid/net/Uri;Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;
    .param p2, "val$voicemailUri"    # Landroid/net/Uri;
    .param p3, "val$listener"    # Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->val$voicemailUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->val$listener:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 172
    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    iget-object v8, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->val$voicemailUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-wrap1(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 175
    .local v0, "archivedVoicemailUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 176
    return-object v0

    .line 180
    :cond_0
    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    iget-object v8, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->val$voicemailUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-wrap0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;Landroid/net/Uri;)Landroid/content/ContentValues;

    move-result-object v6

    .line 181
    .local v6, "values":Landroid/content/ContentValues;
    if-nez v6, :cond_1

    .line 182
    return-object v9

    .line 185
    :cond_1
    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-static {v7}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-get0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;)Landroid/content/ContentResolver;

    move-result-object v7

    .line 186
    sget-object v8, Lcom/android/dialer/database/VoicemailArchiveContract$VoicemailArchive;->CONTENT_URI:Landroid/net/Uri;

    .line 185
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 187
    .local v4, "insertedVoicemailUri":Landroid/net/Uri;
    if-nez v4, :cond_2

    .line 188
    return-object v9

    .line 192
    :cond_2
    const/4 v1, 0x0

    .line 193
    .local v1, "copiedFile":Z
    const/4 v3, 0x0

    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .local v5, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-static {v7}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-get0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;)Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->val$voicemailUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 195
    .local v3, "inputStream":Ljava/io/InputStream;
    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-static {v7}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-get0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    .line 196
    .local v5, "outputStream":Ljava/io/OutputStream;
    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    .line 197
    invoke-static {v3, v5}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 198
    const/4 v1, 0x1

    .line 209
    if-eqz v5, :cond_3

    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v8, v9

    :goto_0
    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move-object v7, v8

    :cond_5
    :goto_1
    if-eqz v7, :cond_7

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v7, "VoicemailAsyncTaskUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to copy voicemail content to new file: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 203
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    .line 202
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    if-nez v1, :cond_6

    .line 207
    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-static {v7}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-get0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 210
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    :goto_2
    return-object v9

    .line 209
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    goto :goto_0

    :catch_2
    move-exception v7

    if-eqz v8, :cond_5

    if-eq v8, v7, :cond_4

    :try_start_5
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v7, v8

    goto :goto_1

    .line 205
    :cond_7
    if-nez v1, :cond_8

    .line 207
    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-static {v7}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-get0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    :cond_8
    return-object v4

    .line 209
    :cond_9
    if-eqz v5, :cond_a

    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    move-object v8, v9

    :goto_3
    if-eqz v3, :cond_b

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    move-object v7, v8

    :cond_c
    :goto_4
    if-eqz v7, :cond_13

    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 204
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v7

    .line 205
    if-nez v1, :cond_d

    .line 207
    iget-object v8, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-static {v8}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-get0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    :cond_d
    throw v7

    .line 209
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v7

    if-eqz v8, :cond_c

    if-eq v8, v7, :cond_b

    :try_start_9
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v7, v8

    goto :goto_4

    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :catch_5
    move-exception v7

    :try_start_a
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_5
    if-eqz v5, :cond_e

    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    move-object v10, v8

    :cond_f
    :goto_6
    if-eqz v3, :cond_10

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_10
    move-object v8, v10

    :cond_11
    :goto_7
    if-eqz v8, :cond_12

    :try_start_d
    throw v8

    :catch_6
    move-exception v10

    if-eqz v8, :cond_f

    if-eq v8, v10, :cond_e

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v8

    goto :goto_6

    :catch_7
    move-exception v8

    if-eqz v10, :cond_11

    if-eq v10, v8, :cond_10

    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v10

    goto :goto_7

    :cond_12
    throw v7
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 205
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "outputStream":Ljava/io/OutputStream;
    :cond_13
    if-nez v1, :cond_6

    .line 207
    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->this$0:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-static {v7}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->-get0(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 209
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v8, v9

    goto :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "archivedVoicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->val$listener:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;

    invoke-interface {v0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;->onArchiveVoicemail(Landroid/net/Uri;)V

    .line 214
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "archivedVoicemailUri"    # Ljava/lang/Object;

    .prologue
    .line 214
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "archivedVoicemailUri":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$3;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
