.class public Lcom/loc/q;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/q$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 46
    sput-object v0, Lcom/loc/q;->a:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/q;->b:Z

    const-string/jumbo v0, ""

    .line 275
    sput-object v0, Lcom/loc/q;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 450
    sput-object v0, Lcom/loc/q;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 503
    sput-object v0, Lcom/loc/q;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 550
    sput-object v0, Lcom/loc/q;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    :try_start_0
    sget-object v0, Lcom/loc/q;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_0
    const-string/jumbo v0, "android.permission.WRITE_SETTINGS"

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    :goto_0
    sget-object v0, Lcom/loc/q;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    :cond_1
    :goto_1
    :try_start_1
    const-string/jumbo v0, "mounted"

    .line 193
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    move-result v0

    if-nez v0, :cond_6

    .line 218
    :cond_2
    :goto_2
    sget-object v0, Lcom/loc/q;->a:Ljava/lang/String;

    return-object v0

    :cond_3
    :try_start_2
    const-string/jumbo v0, ""

    .line 172
    sget-object v1, Lcom/loc/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/loc/q;->a:Ljava/lang/String;

    return-object v0

    .line 178
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/q;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    .line 185
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_3
    const-string/jumbo v0, ""

    .line 181
    sget-object v1, Lcom/loc/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    sget-object v0, Lcom/loc/q;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    .line 195
    :cond_6
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 203
    new-instance v2, Lcom/loc/q$a;

    invoke-direct {v2}, Lcom/loc/q$a;-><init>()V

    .line 204
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    .line 217
    :catch_1
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    .line 208
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 217
    :catch_2
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    .line 210
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 217
    :catch_3
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    .line 212
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 217
    :catch_4
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    .line 214
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 217
    :catch_5
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getUTDID"

    .line 216
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lcom/loc/q;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    .line 655
    :goto_0
    add-int/lit8 v0, v3, -0x1

    if-lt v2, v0, :cond_0

    .line 665
    return-object p0

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 656
    :goto_1
    sub-int v0, v3, v2

    if-lt v1, v0, :cond_1

    .line 655
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 658
    :cond_1
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-gt v4, v0, :cond_2

    .line 656
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 659
    :cond_2
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 660
    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 119
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    .line 141
    :goto_0
    return-void

    :cond_0
    const-class v0, Landroid/net/TrafficStats;

    const-string/jumbo v1, "setThreadStatsTag"

    const/4 v2, 0x1

    .line 120
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xa004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "setTraficTag"

    .line 125
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "setTraficTag"

    .line 128
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :catch_2
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "setTraficTag"

    .line 131
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :catch_3
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "setTraficTag"

    .line 134
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :catch_4
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "setTraficTag"

    .line 137
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 39
    sput-boolean p0, Lcom/loc/q;->b:Z

    return p0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 224
    if-nez p0, :cond_1

    .line 226
    :cond_0
    return-object v1

    :cond_1
    :try_start_0
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 224
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi"

    .line 229
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 231
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 239
    :goto_0
    return-object v0

    .line 232
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getWifiMacs"

    .line 237
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/loc/q;->b:Z

    return v0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    if-nez p0, :cond_1

    .line 247
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 245
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi"

    .line 250
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 252
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 272
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 253
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 254
    if-nez v0, :cond_5

    .line 255
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    invoke-static {v0}, Lcom/loc/q;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x1

    move v3, v2

    .line 259
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    const/4 v0, 0x7

    if-ge v3, v0, :cond_2

    .line 260
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 261
    if-nez v1, :cond_6

    const-string/jumbo v6, ";"

    .line 264
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :goto_2
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_6
    move v1, v2

    .line 262
    goto :goto_2

    .line 271
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getWifiMacs"

    .line 270
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    :try_start_0
    sget-object v0, Lcom/loc/q;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 283
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "wifi"

    .line 286
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 289
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/q;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_0
    sget-object v0, Lcom/loc/q;->c:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, ""

    .line 280
    sget-object v1, Lcom/loc/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Lcom/loc/q;->c:Ljava/lang/String;

    return-object v0

    .line 284
    :cond_2
    sget-object v0, Lcom/loc/q;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 292
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getDeviceMac"

    .line 291
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static e(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 299
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 301
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    return-object v0

    :cond_1
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 299
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "phone"

    .line 303
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 305
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 306
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v1, :cond_2

    .line 313
    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    .line 332
    :goto_0
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v6

    const-string/jumbo v1, ""

    aput-object v1, v0, v7

    return-object v0

    .line 307
    :cond_2
    :try_start_1
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 308
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 309
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    const/4 v2, 0x2

    .line 310
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "||"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string/jumbo v1, "gsm"

    aput-object v1, v2, v0

    return-object v2

    .line 314
    :cond_3
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 315
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 316
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 317
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 318
    if-gez v1, :cond_5

    :cond_4
    :goto_1
    const/4 v3, 0x2

    .line 322
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "||"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string/jumbo v1, "cdma"

    aput-object v1, v3, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 318
    :cond_5
    if-ltz v2, :cond_4

    if-ltz v0, :cond_4

    goto :goto_1

    .line 331
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "cellInfo"

    .line 330
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 370
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "phone"

    .line 374
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 376
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x3

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    .line 371
    :cond_1
    return-object v1

    .line 377
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ge v2, v3, :cond_0

    .line 379
    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getMNC"

    .line 384
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 395
    :try_start_0
    invoke-static {p0}, Lcom/loc/q;->r(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getNetWorkType"

    .line 399
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 401
    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 408
    :try_start_0
    invoke-static {p0}, Lcom/loc/q;->q(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getActiveNetWorkType"

    .line 411
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 414
    return v0
.end method

.method public static i(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 422
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "connectivity"

    .line 425
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 427
    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 431
    return-object v0

    .line 423
    :cond_0
    return-object v1

    .line 428
    :cond_1
    return-object v1
.end method

.method static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 436
    :try_start_0
    invoke-static {p0}, Lcom/loc/q;->i(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    .line 438
    :cond_0
    return-object v1

    .line 446
    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getNetworkExtraInfo"

    .line 444
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 454
    :try_start_0
    sget-object v0, Lcom/loc/q;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 457
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    .line 458
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 460
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 461
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 462
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 463
    if-gt v1, v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/loc/q;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_1
    sget-object v0, Lcom/loc/q;->d:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, ""

    .line 454
    sget-object v1, Lcom/loc/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    sget-object v0, Lcom/loc/q;->d:Ljava/lang/String;

    return-object v0

    .line 463
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getReslution"

    .line 467
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 507
    :try_start_0
    sget-object v0, Lcom/loc/q;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 510
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "phone"

    .line 513
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 515
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/q;->e:Ljava/lang/String;

    .line 516
    sget-object v0, Lcom/loc/q;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 522
    :goto_0
    sget-object v0, Lcom/loc/q;->e:Ljava/lang/String;

    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, ""

    .line 507
    sget-object v1, Lcom/loc/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    sget-object v0, Lcom/loc/q;->e:Ljava/lang/String;

    return-object v0

    .line 511
    :cond_2
    sget-object v0, Lcom/loc/q;->e:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string/jumbo v0, ""

    .line 517
    sput-object v0, Lcom/loc/q;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getDeviceID"

    .line 520
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, ""

    .line 528
    :try_start_0
    invoke-static {p0}, Lcom/loc/q;->o(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "getSubscriberId"

    .line 531
    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-object v0
.end method

.method static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 538
    :try_start_0
    invoke-static {p0}, Lcom/loc/q;->p(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfo"

    const-string/jumbo v2, "getNetworkOperatorName"

    .line 540
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    .line 543
    return-object v0
.end method

.method private static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    sget-object v0, Lcom/loc/q;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 557
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "phone"

    .line 560
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 562
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/q;->f:Ljava/lang/String;

    .line 563
    sget-object v0, Lcom/loc/q;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 566
    :goto_0
    sget-object v0, Lcom/loc/q;->f:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    .line 553
    sget-object v1, Lcom/loc/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    sget-object v0, Lcom/loc/q;->f:Ljava/lang/String;

    return-object v0

    .line 558
    :cond_2
    sget-object v0, Lcom/loc/q;->f:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string/jumbo v0, ""

    .line 564
    sput-object v0, Lcom/loc/q;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 572
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "phone"

    .line 575
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 577
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 582
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 573
    return-object v0

    .line 579
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static q(Landroid/content/Context;)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 606
    if-nez p0, :cond_1

    .line 608
    :cond_0
    return v1

    :cond_1
    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 606
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "connectivity"

    .line 610
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 612
    if-eqz v0, :cond_2

    .line 616
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_3

    .line 621
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 623
    return v0

    .line 613
    :cond_2
    return v1

    .line 618
    :cond_3
    return v1
.end method

.method private static r(Landroid/content/Context;)I
    .locals 1

    .prologue
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 640
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "phone"

    .line 643
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 645
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 647
    return v0

    :cond_0
    const/4 v0, -0x1

    .line 641
    return v0
.end method
