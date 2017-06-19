.class public Lcom/loc/i;
.super Ljava/lang/Object;
.source "LastLocationManager.java"


# static fields
.field private static e:Lcom/loc/i;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/SharedPreferences;

.field c:Landroid/content/SharedPreferences$Editor;

.field private d:Ljava/lang/String;

.field private f:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/loc/i;->d:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/loc/i;->b:Landroid/content/SharedPreferences;

    .line 54
    iput-object v0, p0, Lcom/loc/i;->c:Landroid/content/SharedPreferences$Editor;

    .line 41
    iput-object p1, p0, Lcom/loc/i;->a:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/loc/i;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "MD5"

    .line 43
    iget-object v1, p0, Lcom/loc/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/i;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/loc/i;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/loc/i;->e:Lcom/loc/i;

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    sget-object v0, Lcom/loc/i;->e:Lcom/loc/i;

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lcom/loc/i;

    invoke-direct {v0, p0}, Lcom/loc/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/i;->e:Lcom/loc/i;

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 120
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    :goto_0
    return-void

    .line 102
    :cond_0
    return-void

    .line 106
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/loc/i;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/loc/i;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    :try_start_1
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "apply"

    const/4 v2, 0x0

    .line 108
    new-array v2, v2, [Ljava/lang/Class;

    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/i;->f:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/loc/i;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-static {p1}, Lcom/loc/bw;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 64
    iget-object v0, p0, Lcom/loc/i;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/loc/i;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_4

    .line 71
    :goto_1
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    :goto_3
    return-void

    .line 62
    :cond_2
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/loc/i;->a:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/i;->b:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/loc/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/i;->c:Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 79
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/loc/i;->d:Ljava/lang/String;

    .line 78
    invoke-static {v0, v2}, Lcom/loc/bh;->c([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_4
    invoke-static {v0}, Lcom/loc/r;->a([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 82
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_4

    .line 87
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lastfix"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/loc/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/loc/i;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p0, Lcom/loc/i;->c:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/loc/i;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_3
.end method
