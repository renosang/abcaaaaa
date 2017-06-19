.class public Lcom/yulore/helper/YuloreProviderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field private static e:Lcom/yulore/helper/YuloreProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://com.yulore.framework.YuloreIdentifyNumberProvider"

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yulore/helper/YuloreProviderHelper;->a:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.yulore.framework.YuloreSettingsProvider"

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yulore/helper/YuloreProviderHelper;->b:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.yulore.framework.YuloreLogoProvider"

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yulore/helper/YuloreProviderHelper;->c:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.yulore.framework.YuloreAttributionProvider"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yulore/helper/YuloreProviderHelper;->d:Landroid/net/Uri;

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "YuloreProviderHelper"

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "telNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , netWorkReleaseType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "identify_number"

    .line 371
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "network_type"

    .line 372
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 367
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Lcom/yulore/basic/model/RecognitionTelephone;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    if-eqz p1, :cond_0

    .line 339
    if-eqz p2, :cond_1

    .line 342
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 346
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/yulore/helper/YuloreProviderHelper;->a:Landroid/net/Uri;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, p3, v2, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v1, "identify_result"

    .line 348
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 349
    instance-of v1, v0, Lcom/yulore/basic/model/RecognitionTelephone;

    if-nez v1, :cond_3

    .line 355
    :goto_0
    return-object v3

    .line 337
    :cond_0
    return-object v3

    .line 340
    :cond_1
    return-object v3

    .line 343
    :cond_2
    return-object v3

    .line 350
    :cond_3
    check-cast v0, Lcom/yulore/basic/model/RecognitionTelephone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 354
    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized a()V
    .locals 2

    .prologue
    const-class v1, Lcom/yulore/helper/YuloreProviderHelper;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/yulore/helper/YuloreProviderHelper;->e:Lcom/yulore/helper/YuloreProviderHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    .line 66
    return-void

    .line 64
    :cond_0
    :try_start_1
    new-instance v0, Lcom/yulore/helper/YuloreProviderHelper;

    invoke-direct {v0}, Lcom/yulore/helper/YuloreProviderHelper;-><init>()V

    sput-object v0, Lcom/yulore/helper/YuloreProviderHelper;->e:Lcom/yulore/helper/YuloreProviderHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/yulore/helper/YuloreProviderHelper;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/yulore/helper/YuloreProviderHelper;->e:Lcom/yulore/helper/YuloreProviderHelper;

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    sget-object v0, Lcom/yulore/helper/YuloreProviderHelper;->e:Lcom/yulore/helper/YuloreProviderHelper;

    return-object v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/yulore/helper/YuloreProviderHelper;->a()V

    goto :goto_0
.end method


# virtual methods
.method public loadMerchantLogo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 225
    if-eqz p1, :cond_0

    .line 229
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "rt_id"

    .line 230
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "logo_url"

    .line 231
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "logo_w"

    .line 232
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "logo_h"

    .line 233
    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/yulore/helper/YuloreProviderHelper;->c:Landroid/net/Uri;

    const-string/jumbo v3, "load_logo_merchant"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "bitmap_result"

    .line 235
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 226
    :cond_0
    return-object v5

    .line 235
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    return-object v5
.end method

.method public queryAttributionByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/yulore/basic/model/Attribution;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 250
    if-nez p1, :cond_1

    .line 251
    :cond_0
    return-object v5

    .line 250
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "number"

    .line 255
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/yulore/helper/YuloreProviderHelper;->d:Landroid/net/Uri;

    const-string/jumbo v3, "number_attribution"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v1, "attr_result"

    .line 258
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yulore/basic/model/Attribution;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    return-object v5
.end method

.method public queryNumberInfoFromIncomingCall(Landroid/content/Context;Ljava/lang/String;I)Lcom/yulore/basic/model/RecognitionTelephone;
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0, p2, p3}, Lcom/yulore/helper/YuloreProviderHelper;->a(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "identify_incoming_call"

    invoke-direct {p0, p1, v0, v1}, Lcom/yulore/helper/YuloreProviderHelper;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Lcom/yulore/basic/model/RecognitionTelephone;

    move-result-object v0

    return-object v0
.end method

.method public queryNumberInfoFromOutgoingCall(Landroid/content/Context;Ljava/lang/String;I)Lcom/yulore/basic/model/RecognitionTelephone;
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0, p2, p3}, Lcom/yulore/helper/YuloreProviderHelper;->a(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "identify_outgoing_call"

    invoke-direct {p0, p1, v0, v1}, Lcom/yulore/helper/YuloreProviderHelper;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Lcom/yulore/basic/model/RecognitionTelephone;

    move-result-object v0

    return-object v0
.end method
