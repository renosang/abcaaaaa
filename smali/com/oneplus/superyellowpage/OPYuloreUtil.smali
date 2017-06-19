.class public Lcom/oneplus/superyellowpage/OPYuloreUtil;
.super Ljava/lang/Object;
.source "OPYuloreUtil.java"


# static fields
.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final LOGO_URI:Landroid/net/Uri;

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static final mFlagToStrings:[I

.field private static mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "OPYuloreUtil"

    sput-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->TAG:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "content://yellowpage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->AUTHORITY_URI:Landroid/net/Uri;

    .line 47
    const-string/jumbo v0, "content://com.yulore.framework.YuloreFileProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->LOGO_URI:Landroid/net/Uri;

    .line 134
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mFlagToStrings:[I

    .line 40
    return-void

    .line 134
    nop

    :array_0
    .array-data 4
        0x0
        0x7f0d00c6
        0x7f0d00c7
        0x7f0d00c8
        0x7f0d00c9
        0x7f0d00ca
        0x7f0d00cb
        0x7f0d00cc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 221
    if-nez p0, :cond_0

    .line 222
    return-object v1

    .line 224
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 226
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static getAndSaveYuloreLogoBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "http"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x78

    .line 178
    sget-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    sget-object v1, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mContext:Landroid/content/Context;

    move-object v2, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/yulore/helper/YuloreProviderHelper;->loadMerchantLogo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    return-object v1
.end method

.method public static getAndSaveYuloreLogoBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "http"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x78

    .line 197
    const/4 v7, 0x0

    .line 198
    .local v7, "bytes":[B
    const/4 v6, 0x0

    .line 199
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    sget-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    sget-object v1, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mContext:Landroid/content/Context;

    move-object v2, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/yulore/helper/YuloreProviderHelper;->loadMerchantLogo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 202
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v6, :cond_1

    .line 203
    invoke-static {v6}, Lcom/oneplus/superyellowpage/OPYuloreUtil;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    .line 205
    .end local v7    # "bytes":[B
    :cond_1
    return-object v7
.end method

.method public static getFlag(Lcom/yulore/basic/model/RecognitionTelephone;)Ljava/lang/String;
    .locals 6
    .param p0, "recognitionTelephone"    # Lcom/yulore/basic/model/RecognitionTelephone;

    .prologue
    const/4 v4, 0x0

    .line 146
    sget-object v3, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-nez p0, :cond_1

    .line 147
    :cond_0
    return-object v4

    .line 149
    :cond_1
    const/4 v0, 0x0

    .line 150
    .local v0, "flag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yulore/basic/model/RecognitionTelephone;->getFlag()Lcom/yulore/basic/model/TelephoneFlag;

    move-result-object v2

    .line 151
    .local v2, "telephoneFlag":Lcom/yulore/basic/model/TelephoneFlag;
    if-eqz v2, :cond_3

    .line 152
    sget-object v3, Lcom/oneplus/superyellowpage/OPYuloreUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFlag id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/yulore/basic/model/TelephoneFlag;->getFlagId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/yulore/basic/model/TelephoneFlag;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v2}, Lcom/yulore/basic/model/TelephoneFlag;->getFlagId()I

    move-result v1

    .line 154
    .local v1, "flagToStringId":I
    if-lez v1, :cond_2

    sget-object v3, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mFlagToStrings:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 155
    sget-object v3, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mFlagToStrings:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 157
    :cond_2
    invoke-virtual {v2}, Lcom/yulore/basic/model/TelephoneFlag;->getType()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 160
    .end local v1    # "flagToStringId":I
    :cond_3
    return-object v0
.end method

.method public static getRegional(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 296
    sget-object v5, Lcom/oneplus/superyellowpage/OPYuloreUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getRegional mAIDLHelper = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    sget-object v5, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    if-eqz v5, :cond_4

    .line 298
    sget-object v5, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    sget-object v6, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, p0}, Lcom/yulore/helper/YuloreProviderHelper;->queryAttributionByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/yulore/basic/model/Attribution;

    move-result-object v0

    .line 299
    .local v0, "attribution":Lcom/yulore/basic/model/Attribution;
    sget-object v5, Lcom/oneplus/superyellowpage/OPYuloreUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getRegional attribution = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eqz v0, :cond_4

    .line 301
    invoke-virtual {v0}, Lcom/yulore/basic/model/Attribution;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "provinceName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/yulore/basic/model/Attribution;->getCityName()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "cityName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/yulore/basic/model/Attribution;->getOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "operatorName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    .local v1, "buffer":Ljava/lang/StringBuffer;
    if-eqz v4, :cond_0

    .line 306
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 311
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 312
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 309
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 317
    .end local v0    # "attribution":Lcom/yulore/basic/model/Attribution;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "cityName":Ljava/lang/String;
    .end local v3    # "operatorName":Ljava/lang/String;
    .end local v4    # "provinceName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, ""

    return-object v5
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/oneplus/superyellowpage/OPYuloreUtil;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {}, Lcom/yulore/helper/YuloreProviderHelper;->getInstance()Lcom/yulore/helper/YuloreProviderHelper;

    move-result-object v0

    sput-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 60
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static queryNumberInfoFromIncommingCall(Ljava/lang/String;I)Lcom/yulore/basic/model/RecognitionTelephone;
    .locals 2
    .param p0, "telNum"    # Ljava/lang/String;
    .param p1, "limit"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    sget-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    sget-object v1, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/yulore/helper/YuloreProviderHelper;->queryNumberInfoFromIncomingCall(Landroid/content/Context;Ljava/lang/String;I)Lcom/yulore/basic/model/RecognitionTelephone;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    return-object v1
.end method

.method public static queryNumberInfoFromOutgoingCall(Ljava/lang/String;I)Lcom/yulore/basic/model/RecognitionTelephone;
    .locals 2
    .param p0, "telNum"    # Ljava/lang/String;
    .param p1, "limit"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    sget-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mYuloreProviderHelper:Lcom/yulore/helper/YuloreProviderHelper;

    sget-object v1, Lcom/oneplus/superyellowpage/OPYuloreUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/yulore/helper/YuloreProviderHelper;->queryNumberInfoFromOutgoingCall(Landroid/content/Context;Ljava/lang/String;I)Lcom/yulore/basic/model/RecognitionTelephone;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    return-object v1
.end method
