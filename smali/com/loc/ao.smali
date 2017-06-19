.class public Lcom/loc/ao;
.super Ljava/lang/Object;
.source "FileLogUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/loc/ao;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    :goto_0
    sget-object v0, Lcom/loc/ao;->a:Ljava/lang/String;

    return-object v0

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/ao;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v2, 0x0

    .line 148
    cmp-long v0, p0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "0000-00-00-00-00-00"

    goto :goto_1
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const-class v1, Lcom/loc/ao;

    monitor-enter v1

    .line 112
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0xc8

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2, v3, v4}, Lcom/loc/ao;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "#"

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/loc/ao;->a(Ljava/lang/String;[BZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "FileLogUtils"

    const-string/jumbo v3, "writeLog3"

    .line 123
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;[BZ)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v4, Lcom/loc/ao;

    monitor-enter v4

    .line 35
    :try_start_0
    invoke-static {}, Lcom/loc/ao;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 45
    :goto_0
    if-eqz v0, :cond_4

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 51
    :goto_1
    if-eqz v0, :cond_6

    .line 55
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v2, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 57
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 58
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 60
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 91
    if-nez v3, :cond_7

    .line 79
    :goto_2
    if-nez v2, :cond_8

    :cond_1
    :goto_3
    monitor-exit v4

    .line 94
    return-void

    .line 35
    :cond_2
    if-nez p2, :cond_0

    monitor-exit v4

    .line 36
    return-void

    .line 43
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    goto :goto_0

    :cond_4
    monitor-exit v4

    .line 46
    return-void

    .line 49
    :cond_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    goto :goto_1

    :cond_6
    monitor-exit v4

    .line 52
    return-void

    .line 92
    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_4
    :try_start_5
    const-string/jumbo v3, "FileLogUtils"

    const-string/jumbo v5, "writeLog"

    .line 64
    invoke-static {v0, v3, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 91
    if-nez v2, :cond_9

    .line 79
    :goto_5
    if-eqz v1, :cond_1

    .line 81
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 85
    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v1, "FileLogUtils"

    const-string/jumbo v2, "writeLog2"

    .line 84
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 92
    :catch_2
    move-exception v0

    move-object v3, v1

    :goto_6
    :try_start_8
    const-string/jumbo v2, "FileLogUtils"

    const-string/jumbo v5, "writeLog"

    .line 66
    invoke-static {v0, v2, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 91
    if-nez v3, :cond_a

    .line 79
    :goto_7
    if-eqz v1, :cond_1

    .line 81
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 85
    :catch_3
    move-exception v0

    :try_start_a
    const-string/jumbo v1, "FileLogUtils"

    const-string/jumbo v2, "writeLog2"

    .line 84
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 92
    :catch_4
    move-exception v0

    move-object v3, v1

    :goto_8
    :try_start_b
    const-string/jumbo v2, "FileLogUtils"

    const-string/jumbo v5, "writeLog"

    .line 68
    invoke-static {v0, v2, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 91
    if-nez v3, :cond_b

    .line 79
    :goto_9
    if-eqz v1, :cond_1

    .line 81
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 85
    :catch_5
    move-exception v0

    :try_start_d
    const-string/jumbo v1, "FileLogUtils"

    const-string/jumbo v2, "writeLog2"

    .line 84
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 92
    :catchall_1
    move-exception v0

    move-object v3, v1

    .line 91
    :goto_a
    if-nez v3, :cond_c

    .line 79
    :goto_b
    if-nez v1, :cond_d

    .line 71
    :goto_c
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 73
    :cond_7
    :try_start_e
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 77
    :catch_6
    move-exception v0

    :try_start_f
    const-string/jumbo v1, "FileLogUtils"

    const-string/jumbo v3, "writeLog1"

    .line 76
    invoke-static {v0, v1, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 81
    :cond_8
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_3

    .line 85
    :catch_7
    move-exception v0

    :try_start_11
    const-string/jumbo v1, "FileLogUtils"

    const-string/jumbo v2, "writeLog2"

    .line 84
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_3

    .line 73
    :cond_9
    :try_start_12
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_5

    .line 77
    :catch_8
    move-exception v0

    :try_start_13
    const-string/jumbo v2, "FileLogUtils"

    const-string/jumbo v3, "writeLog1"

    .line 76
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_5

    .line 73
    :cond_a
    :try_start_14
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_7

    .line 77
    :catch_9
    move-exception v0

    :try_start_15
    const-string/jumbo v2, "FileLogUtils"

    const-string/jumbo v3, "writeLog1"

    .line 76
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_7

    .line 73
    :cond_b
    :try_start_16
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_9

    .line 77
    :catch_a
    move-exception v0

    :try_start_17
    const-string/jumbo v2, "FileLogUtils"

    const-string/jumbo v3, "writeLog1"

    .line 76
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_9

    .line 73
    :cond_c
    :try_start_18
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_b

    .line 77
    :catch_b
    move-exception v2

    :try_start_19
    const-string/jumbo v3, "FileLogUtils"

    const-string/jumbo v5, "writeLog1"

    .line 76
    invoke-static {v2, v3, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_b

    .line 81
    :cond_d
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_c

    .line 85
    :catch_c
    move-exception v1

    :try_start_1b
    const-string/jumbo v2, "FileLogUtils"

    const-string/jumbo v3, "writeLog2"

    .line 84
    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_c

    .line 92
    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_a

    :catchall_5
    move-exception v0

    goto :goto_a

    :catch_d
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_8

    :catch_e
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    :catch_f
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_6

    :catch_10
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6

    :catch_11
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_4

    :catch_12
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_4
.end method

.method private static b()Z
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
