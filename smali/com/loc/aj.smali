.class public Lcom/loc/aj;
.super Ljava/lang/Object;
.source "DynamicExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/loc/aj;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Lcom/loc/v;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/loc/v;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aj;->c:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/loc/aj;->d:Lcom/loc/v;

    .line 47
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aj;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 48
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 50
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/loc/v;)Lcom/loc/aj;
    .locals 2

    .prologue
    const-class v1, Lcom/loc/aj;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/loc/aj;->a:Lcom/loc/aj;

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    sget-object v0, Lcom/loc/aj;->a:Lcom/loc/aj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/aj;

    invoke-direct {v0, p0, p1}, Lcom/loc/aj;-><init>(Landroid/content/Context;Lcom/loc/v;)V

    sput-object v0, Lcom/loc/aj;->a:Lcom/loc/aj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 63
    invoke-static {p2}, Lcom/loc/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/aj;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_2

    .line 89
    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v1, "amapdynamic"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/loc/aa;

    iget-object v1, p0, Lcom/loc/aj;->c:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ak;->c()Lcom/loc/ak;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/loc/aa;-><init>(Landroid/content/Context;Lcom/loc/z;)V

    .line 71
    iget-object v1, p0, Lcom/loc/aj;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/aj;->d:Lcom/loc/v;

    invoke-static {v0, v1, v2}, Lcom/loc/ah;->a(Lcom/loc/aa;Landroid/content/Context;Lcom/loc/v;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/loc/aj;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
