.class public Lcom/amap/api/location/APSService;
.super Landroid/app/Service;
.source "APSService.java"


# instance fields
.field a:Landroid/os/Messenger;

.field b:Lcom/amap/api/location/APSServiceBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    :try_start_0
    const-string/jumbo v0, "apiKey"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    :goto_0
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v1}, Lcom/amap/api/location/APSServiceBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/location/APSService;->a:Landroid/os/Messenger;

    .line 35
    iget-object v0, p0, Lcom/amap/api/location/APSService;->a:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    invoke-static {v0}, Lcom/loc/n;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 39
    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0, p0}, Lcom/amap/api/location/APSService;->onCreate(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 6

    .prologue
    :try_start_0
    const-string/jumbo v0, "2.3.0"

    .line 44
    invoke-static {v0}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v1

    const-string/jumbo v2, "com.amap.api.location.APSServiceWrapper"

    const-class v3, Lcom/loc/d;

    const/4 v0, 0x1

    .line 45
    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/loc/af;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/APSServiceBase;

    iput-object v0, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v0}, Lcom/amap/api/location/APSServiceBase;->onCreate()V

    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    new-instance v0, Lcom/loc/d;

    invoke-direct {v0, p0}, Lcom/loc/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v0}, Lcom/amap/api/location/APSServiceBase;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/location/APSService;->b:Lcom/amap/api/location/APSServiceBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/location/APSServiceBase;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
