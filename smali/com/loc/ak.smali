.class public Lcom/loc/ak;
.super Ljava/lang/Object;
.source "DynamicFileDBCreator.java"

# interfaces
.implements Lcom/loc/z;


# static fields
.field private static a:Lcom/loc/ak;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static declared-synchronized c()Lcom/loc/ak;
    .locals 2

    .prologue
    const-class v1, Lcom/loc/ak;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/loc/ak;->a:Lcom/loc/ak;

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    sget-object v0, Lcom/loc/ak;->a:Lcom/loc/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/ak;

    invoke-direct {v0}, Lcom/loc/ak;-><init>()V

    sput-object v0, Lcom/loc/ak;->a:Lcom/loc/ak;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "dynamicamapfile.db"

    .line 75
    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS file (_id integer primary key autoincrement, sdkname  varchar(20), filename varchar(100),md5 varchar(20),version varchar(20),dynamicversion varchar(20),status varchar(20),reservedfield varchar(20));"

    .line 104
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 81
    return v0
.end method
