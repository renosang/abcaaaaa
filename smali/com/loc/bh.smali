.class public Lcom/loc/bh;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field private static final a:[C

.field private static final b:[B

.field private static final c:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v0, 0x10

    .line 23
    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x31

    aput-char v1, v0, v3

    const/16 v1, 0x32

    aput-char v1, v0, v4

    const/16 v1, 0x33

    aput-char v1, v0, v5

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x35

    aput-char v1, v0, v6

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x38

    aput-char v1, v0, v7

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    sput-object v0, Lcom/loc/bh;->a:[C

    const/16 v0, 0x10

    .line 48
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    aput-byte v3, v0, v3

    aput-byte v3, v0, v4

    aput-byte v4, v0, v5

    const/4 v1, 0x4

    aput-byte v5, v0, v1

    aput-byte v6, v0, v6

    const/4 v1, 0x6

    aput-byte v7, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    aput-byte v7, v0, v7

    const/16 v1, 0x9

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v6, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v5, v0, v1

    const/16 v1, 0xe

    aput-byte v4, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    sput-object v0, Lcom/loc/bh;->b:[B

    .line 50
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/loc/bh;->b:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/loc/bh;->c:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    if-nez p0, :cond_1

    .line 224
    :cond_0
    return-object v3

    .line 223
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SHA1"

    .line 226
    invoke-static {v0, p0}, Lcom/loc/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MD5"

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/loc/bh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    return-object v3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "UTF-8"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p0}, Lcom/loc/s;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/loc/bh;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    return-object v1

    .line 240
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    return-object v1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v0, 0x10

    .line 298
    :try_start_0
    new-array v0, v0, [B

    .line 300
    array-length v1, p0

    add-int/lit8 v1, v1, -0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    .line 302
    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 304
    array-length v4, p0

    add-int/lit8 v4, v4, -0x10

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    .line 309
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 310
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/loc/w;->a()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    .line 311
    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 312
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 321
    return-object v0
.end method

.method private static a()[B
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/loc/w;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a([BLjava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0xf5

    const/4 v0, 0x0

    const-class v2, Lcom/loc/bh;

    monitor-enter v2

    .line 66
    :try_start_0
    invoke-static {p1}, Lcom/loc/r;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 67
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string/jumbo v1, "RSA"

    .line 68
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    .line 70
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    .line 71
    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 72
    array-length v4, p0

    .line 73
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v0

    .line 78
    :goto_0
    sub-int v6, v4, v0

    if-gtz v6, :cond_0

    .line 88
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 89
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 90
    return-object v0

    .line 79
    :cond_0
    sub-int v6, v4, v0

    if-gt v6, v8, :cond_1

    .line 82
    sub-int v6, v4, v0

    :try_start_1
    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_1
    const/4 v6, 0x0

    .line 84
    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 85
    add-int/lit8 v0, v1, 0x1

    .line 86
    mul-int/lit16 v1, v0, 0xf5

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_0

    :cond_1
    const/16 v6, 0xf5

    .line 80
    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    .line 274
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 275
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v3, Lcom/loc/bh;->c:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 277
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 278
    return-object v0
.end method

.method private static b([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 254
    array-length v1, p0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 257
    :goto_0
    if-lt v0, v1, :cond_0

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 258
    :cond_0
    sget-object v3, Lcom/loc/bh;->a:[C

    aget-byte v4, p0, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    sget-object v3, Lcom/loc/bh;->a:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x10

    .line 200
    if-eqz p0, :cond_0

    .line 203
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-gt v2, v3, :cond_2

    .line 212
    :goto_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    :cond_0
    const-string/jumbo p0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "0"

    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    .line 215
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_3
.end method

.method public static declared-synchronized b([BLjava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x100

    const/4 v0, 0x0

    const-class v2, Lcom/loc/bh;

    monitor-enter v2

    .line 106
    :try_start_0
    invoke-static {p1}, Lcom/loc/r;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 107
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string/jumbo v1, "RSA"

    .line 108
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    .line 110
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    .line 111
    invoke-virtual {v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 112
    array-length v4, p0

    .line 113
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v0

    .line 118
    :goto_0
    sub-int v6, v4, v0

    if-gtz v6, :cond_0

    .line 130
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 131
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 132
    return-object v0

    .line 119
    :cond_0
    sub-int v6, v4, v0

    if-gt v6, v8, :cond_1

    .line 123
    sub-int v6, v4, v0

    .line 124
    :try_start_1
    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_1
    const/4 v6, 0x0

    .line 126
    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 127
    add-int/lit8 v0, v1, 0x1

    .line 128
    mul-int/lit16 v1, v0, 0x100

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_0

    :cond_1
    const/16 v6, 0x100

    .line 121
    invoke-virtual {v3, p0, v0, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static c([BLjava/lang/String;)[B
    .locals 4

    .prologue
    .line 147
    :try_start_0
    invoke-static {p1}, Lcom/loc/bh;->b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/loc/bh;->a()[B

    move-result-object v1

    .line 149
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    .line 150
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v3, 0x1

    .line 152
    :try_start_1
    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :goto_0
    :try_start_2
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 158
    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 162
    return-object v0
.end method

.method public static d([BLjava/lang/String;)[B
    .locals 4

    .prologue
    .line 173
    :try_start_0
    invoke-static {p1}, Lcom/loc/bh;->b(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    .line 174
    invoke-static {}, Lcom/loc/bh;->a()[B

    move-result-object v1

    .line 175
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    .line 176
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v3, 0x2

    .line 178
    :try_start_1
    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :goto_0
    :try_start_2
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 183
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 187
    return-object v0
.end method
