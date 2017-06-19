.class public Lcom/loc/aa;
.super Ljava/lang/Object;
.source "DBOperation.java"


# instance fields
.field private a:Lcom/loc/ac;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/loc/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/z;)V
    .locals 6

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    new-instance v0, Lcom/loc/ac;

    invoke-interface {p2}, Lcom/loc/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/loc/z;->b()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/ac;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/loc/z;)V

    iput-object v0, p0, Lcom/loc/aa;->a:Lcom/loc/ac;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    iput-object p2, p0, Lcom/loc/aa;->c:Lcom/loc/z;

    .line 32
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/loc/aa;->a:Lcom/loc/ac;

    invoke-virtual {v0}, Lcom/loc/ac;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 38
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "DBOperation"

    const-string/jumbo v2, "getReadAbleDataBase"

    .line 39
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    if-eqz p0, :cond_0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    .line 66
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    .line 62
    return-object v0

    .line 66
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    if-nez v1, :cond_2

    const-string/jumbo v5, " and "

    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1
    move v1, v0

    .line 76
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 70
    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/loc/ab;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/loc/ab",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 195
    if-nez p2, :cond_1

    .line 196
    :cond_0
    return-void

    .line 195
    :cond_1
    if-eqz p1, :cond_0

    .line 198
    invoke-interface {p2}, Lcom/loc/ab;->a()Landroid/content/ContentValues;

    move-result-object v0

    .line 199
    if-nez v0, :cond_3

    .line 200
    :cond_2
    return-void

    .line 199
    :cond_3
    invoke-interface {p2}, Lcom/loc/ab;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 202
    invoke-interface {p2}, Lcom/loc/ab;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 203
    return-void
.end method

.method private b(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/loc/aa;->a:Lcom/loc/ac;

    invoke-virtual {v0}, Lcom/loc/ac;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DBOperation"

    const-string/jumbo v2, "getReadAbleDataBase"

    .line 53
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/loc/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/loc/ab",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/loc/aa;->a(Lcom/loc/ab;Z)V

    .line 167
    return-void
.end method

.method public a(Lcom/loc/ab;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/loc/ab",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lcom/loc/aa;->c:Lcom/loc/z;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/loc/aa;->c(Ljava/lang/String;Lcom/loc/ab;)Ljava/util/List;

    move-result-object v0

    .line 151
    if-nez v0, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Lcom/loc/aa;->a(Lcom/loc/ab;)V

    .line 157
    :goto_0
    monitor-exit v1

    .line 159
    return-void

    .line 151
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, p2, p1}, Lcom/loc/aa;->b(Ljava/lang/String;Lcom/loc/ab;)V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/loc/ab;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/loc/ab",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lcom/loc/aa;->c:Lcom/loc/z;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 174
    :cond_0
    invoke-direct {p0, p2}, Lcom/loc/aa;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lcom/loc/aa;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/loc/ab;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    :try_start_2
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    .line 189
    :cond_1
    :goto_1
    monitor-exit v1

    .line 190
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 188
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "insertData"

    .line 182
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    :try_start_4
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 188
    :catchall_1
    move-exception v0

    .line 186
    :try_start_5
    iget-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_5

    .line 184
    :goto_2
    throw v0

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 185
    :cond_5
    iget-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    .line 186
    iput-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lcom/loc/ab;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ab",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lcom/loc/aa;->c:Lcom/loc/z;

    monitor-enter v1

    .line 86
    :try_start_0
    invoke-interface {p2}, Lcom/loc/ab;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    monitor-exit v1

    return-void

    .line 86
    :cond_1
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    .line 90
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loc/aa;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/loc/ab;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    :try_start_2
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 105
    :cond_3
    :goto_1
    monitor-exit v1

    .line 106
    return-void

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 93
    :cond_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 104
    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "deleteData"

    .line 98
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    :try_start_4
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 104
    :catchall_1
    move-exception v0

    .line 102
    :try_start_5
    iget-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_7

    .line 100
    :goto_2
    throw v0

    .line 101
    :cond_6
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 101
    :cond_7
    iget-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    .line 102
    iput-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lcom/loc/ab;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ab",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lcom/loc/aa;->c:Lcom/loc/z;

    monitor-enter v1

    .line 115
    if-nez p2, :cond_1

    .line 116
    :cond_0
    :try_start_0
    monitor-exit v1

    return-void

    .line 115
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/loc/ab;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {p2}, Lcom/loc/ab;->a()Landroid/content/ContentValues;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_4

    .line 122
    iget-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_5

    .line 123
    :cond_2
    invoke-direct {p0, p3}, Lcom/loc/aa;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    .line 129
    :try_start_1
    iget-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/loc/ab;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    :try_start_2
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    .line 143
    :cond_3
    :goto_1
    monitor-exit v1

    .line 144
    return-void

    .line 120
    :cond_4
    monitor-exit v1

    return-void

    .line 122
    :cond_5
    iget-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 126
    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 131
    if-eqz p3, :cond_7

    .line 135
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_7
    :try_start_5
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "updateData"

    .line 132
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 142
    :catchall_1
    move-exception v0

    .line 140
    :try_start_6
    iget-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_9

    .line 138
    :goto_3
    throw v0

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 139
    :cond_9
    iget-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    .line 140
    iput-object v2, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public b(Ljava/lang/String;Lcom/loc/ab;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ab",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 248
    iget-object v9, p0, Lcom/loc/aa;->c:Lcom/loc/z;

    monitor-enter v9

    .line 249
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 255
    :cond_0
    monitor-exit v9

    return-object v10

    .line 252
    :cond_1
    invoke-direct {p0, p3}, Lcom/loc/aa;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    .line 300
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 254
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lcom/loc/ab;->b()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 258
    :try_start_2
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/loc/ab;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 261
    if-eqz v1, :cond_5

    .line 266
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    .line 277
    if-nez v1, :cond_f

    .line 287
    :cond_3
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_10

    .line 299
    :cond_4
    :goto_3
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v10

    .line 262
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 277
    if-nez v1, :cond_d

    .line 287
    :cond_6
    :goto_4
    :try_start_6
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_e

    .line 264
    :cond_7
    :goto_5
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v10

    .line 267
    :cond_8
    :try_start_7
    invoke-interface {p2, v1}, Lcom/loc/ab;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 297
    :catch_0
    move-exception v0

    .line 271
    :goto_6
    if-eqz p3, :cond_a

    .line 277
    :goto_7
    if-nez v1, :cond_11

    .line 287
    :cond_9
    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_3

    .line 296
    move-exception v0

    .line 292
    if-nez p3, :cond_4

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 293
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :cond_a
    :try_start_9
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    .line 272
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    .line 297
    :catchall_1
    move-exception v0

    .line 277
    :goto_9
    if-nez v1, :cond_12

    .line 287
    :cond_b
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_13

    .line 276
    :cond_c
    :goto_b
    throw v0

    .line 278
    :cond_d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 285
    move-exception v0

    .line 281
    if-nez p3, :cond_6

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 282
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 288
    :cond_e
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_5

    .line 296
    move-exception v0

    .line 292
    if-nez p3, :cond_7

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 293
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 278
    :cond_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 285
    move-exception v0

    .line 281
    if-nez p3, :cond_3

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 282
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 288
    :cond_10
    iget-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_3

    .line 296
    move-exception v0

    .line 292
    if-nez p3, :cond_4

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 293
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 278
    :cond_11
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 285
    move-exception v0

    .line 281
    if-nez p3, :cond_9

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    .line 282
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 278
    :cond_12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 285
    move-exception v1

    .line 281
    if-nez p3, :cond_b

    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    .line 282
    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 288
    :cond_13
    iget-object v1, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v1, 0x0

    .line 289
    iput-object v1, p0, Lcom/loc/aa;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_b

    .line 296
    move-exception v1

    .line 292
    if-nez p3, :cond_c

    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    .line 293
    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_b

    .line 297
    :catchall_2
    move-exception v0

    move-object v1, v8

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v1, v8

    goto/16 :goto_6
.end method

.method public b(Ljava/lang/String;Lcom/loc/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ab",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/aa;->a(Ljava/lang/String;Lcom/loc/ab;Z)V

    .line 110
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/loc/ab;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ab",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/aa;->b(Ljava/lang/String;Lcom/loc/ab;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
