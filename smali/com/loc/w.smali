.class public Lcom/loc/w;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 200
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "&"

    .line 203
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 205
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    array-length v3, v1

    :goto_0
    if-lt v0, v3, :cond_1

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 218
    :goto_1
    return-object p0

    :cond_0
    const-string/jumbo v0, ""

    .line 201
    return-object v0

    .line 206
    :cond_1
    aget-object v4, v1, v0

    .line 207
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v4, "&"

    .line 208
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    return-object v0

    .line 217
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "sortParams"

    .line 216
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 121
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 124
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 125
    :goto_0
    if-nez v0, :cond_0

    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    if-nez v3, :cond_1

    .line 142
    :goto_1
    if-nez v1, :cond_2

    .line 130
    :goto_2
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 132
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 148
    if-nez v3, :cond_3

    .line 142
    :goto_4
    if-nez v1, :cond_4

    .line 151
    :goto_5
    return-object v2

    .line 150
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 148
    :goto_6
    if-nez v3, :cond_5

    .line 142
    :goto_7
    if-nez v1, :cond_6

    .line 134
    :goto_8
    throw v0

    .line 136
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 140
    :catch_1
    move-exception v2

    .line 139
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 144
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 148
    :catch_2
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 136
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 140
    :catch_3
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 144
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 148
    :catch_4
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 136
    :cond_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    .line 140
    :catch_5
    move-exception v2

    .line 139
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 144
    :cond_6
    :try_start_9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    .line 148
    :catch_6
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 150
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 130
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_3
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
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
    const/4 v0, 0x0

    .line 92
    if-nez p0, :cond_0

    .line 107
    return-object v0

    .line 93
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 98
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "&"

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static a(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x55

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/16 v3, 0x30

    const/16 v0, 0x2a2

    .line 296
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, -0x62

    aput-byte v1, v0, v4

    aput-byte v3, v0, v7

    const/4 v1, 0x5

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v1, v0, v5

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v5, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x2e

    aput-byte v4, v0, v1

    const/16 v1, 0x2f

    aput-byte v6, v0, v1

    aput-byte v7, v0, v3

    const/16 v1, 0x31

    aput-byte v5, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v5, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v6, v0, v1

    const/16 v1, 0x3d

    aput-byte v7, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v5, v0, v1

    const/16 v1, 0x50

    aput-byte v4, v0, v1

    const/16 v1, 0x51

    aput-byte v6, v0, v1

    const/16 v1, 0x52

    aput-byte v7, v0, v1

    const/16 v1, 0x53

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v1, v0, v6

    const/16 v1, 0x56

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    aput-byte v5, v0, v1

    const/16 v1, 0x62

    aput-byte v4, v0, v1

    const/16 v1, 0x63

    aput-byte v6, v0, v1

    const/16 v1, 0x64

    aput-byte v7, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    aput-byte v5, v0, v1

    const/16 v1, 0x75

    aput-byte v4, v0, v1

    const/16 v1, 0x76

    aput-byte v6, v0, v1

    const/16 v1, 0x77

    aput-byte v7, v0, v1

    const/16 v1, 0x78

    aput-byte v4, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    aput-byte v3, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    aput-byte v3, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    aput-byte v3, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    aput-byte v5, v0, v1

    const/16 v1, 0xb8

    aput-byte v4, v0, v1

    const/16 v1, 0xb9

    aput-byte v6, v0, v1

    const/16 v1, 0xba

    aput-byte v7, v0, v1

    const/16 v1, 0xbb

    aput-byte v5, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    aput-byte v5, v0, v1

    const/16 v1, 0xc5

    aput-byte v4, v0, v1

    const/16 v1, 0xc6

    aput-byte v6, v0, v1

    const/16 v1, 0xc7

    aput-byte v7, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    aput-byte v5, v0, v1

    const/16 v1, 0xda

    aput-byte v4, v0, v1

    const/16 v1, 0xdb

    aput-byte v6, v0, v1

    const/16 v1, 0xdc

    aput-byte v7, v0, v1

    const/16 v1, 0xdd

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    aput-byte v5, v0, v1

    const/16 v1, 0xec

    aput-byte v4, v0, v1

    const/16 v1, 0xed

    aput-byte v6, v0, v1

    const/16 v1, 0xee

    aput-byte v7, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    aput-byte v5, v0, v1

    const/16 v1, 0xff

    aput-byte v4, v0, v1

    const/16 v1, 0x100

    aput-byte v6, v0, v1

    const/16 v1, 0x101

    aput-byte v7, v0, v1

    const/16 v1, 0x102

    aput-byte v4, v0, v1

    const/16 v1, 0x103

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x104

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x105

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x106

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x107

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x108

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x109

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x10a

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x10b

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x10c

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x10e

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x10f

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x110

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x111

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x112

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x113

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x114

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x115

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x116

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x117

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x118

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x119

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x11a

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x11b

    aput-byte v3, v0, v1

    const/16 v1, 0x11c

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x11d

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x11e

    aput-byte v3, v0, v1

    const/16 v1, 0x11f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x120

    aput-byte v5, v0, v1

    const/16 v1, 0x121

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x122

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x123

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x124

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x125

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x126

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x127

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x128

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x129

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x12a

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x12b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x12d

    aput-byte v4, v0, v1

    const/16 v1, 0x12e

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x12f

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x130

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x131

    aput-byte v3, v0, v1

    const/16 v1, 0x132

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x133

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x134

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x135

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x136

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x137

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x138

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x139

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x13a

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x13b

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x13c

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x13d

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x13e

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x13f

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x140

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x141

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x142

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x143

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x144

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x145

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x146

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x147

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x148

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x149

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x14a

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x14b

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x14c

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x14d

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x14e

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x14f

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x150

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x151

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x152

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x153

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x154

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x155

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x156

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x157

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x158

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x159

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x15a

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x15b

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x15c

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x15d

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x15e

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x15f

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x160

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x161

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x162

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x163

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x164

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x165

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x166

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x167

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x168

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x169

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x16a

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x16b

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x16c

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x16d

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x16e

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x16f

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x170

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x171

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x172

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x173

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x174

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x175

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x176

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x177

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x178

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x179

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x17a

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x17b

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x17c

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x17d

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x17e

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x17f

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x180

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x181

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x182

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x183

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x184

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x185

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x186

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x187

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x188

    aput-byte v3, v0, v1

    const/16 v1, 0x189

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x18a

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x18b

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x18c

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x18d

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x18e

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x18f

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x190

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x191

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x192

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x193

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x194

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x195

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x196

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x197

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x198

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x199

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x19a

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x19b

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x19c

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x19d

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x19e

    aput-byte v6, v0, v1

    const/16 v1, 0x19f

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x1a0

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x1a1

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x1a2

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x1a3

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x1a4

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x1a5

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x1a6

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x1a7

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x1a8

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x1a9

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x1aa

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x1ab

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x1ac

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x1ad

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x1ae

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x1af

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x1b0

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x1b1

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x1b2

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x1b3

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x1b4

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x1b5

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x1b6

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x1b7

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x1b8

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x1b9

    aput-byte v4, v0, v1

    const/16 v1, 0x1ba

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x1bb

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x1bc

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x1bd

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x1be

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x1bf

    aput-byte v3, v0, v1

    const/16 v1, 0x1c0

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x1c1

    aput-byte v3, v0, v1

    const/16 v1, 0x1c2

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1c3

    aput-byte v5, v0, v1

    const/16 v1, 0x1c4

    aput-byte v4, v0, v1

    const/16 v1, 0x1c5

    aput-byte v6, v0, v1

    const/16 v1, 0x1c6

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1c7

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1c8

    aput-byte v7, v0, v1

    const/16 v1, 0x1c9

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x1ca

    aput-byte v7, v0, v1

    const/16 v1, 0x1cb

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x1cc

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1cd

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x1ce

    aput-byte v3, v0, v1

    const/16 v1, 0x1cf

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x1d0

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x1d1

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1d2

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x1d3

    aput-byte v6, v0, v1

    const/16 v1, 0x1d4

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x1d5

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x1d6

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x1d7

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1d8

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x1d9

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x1da

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x1db

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1dc

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x1dd

    aput-byte v5, v0, v1

    const/16 v1, 0x1de

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1df

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x1e0

    aput-byte v3, v0, v1

    const/16 v1, 0x1e1

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x1e2

    aput-byte v5, v0, v1

    const/16 v1, 0x1e3

    aput-byte v4, v0, v1

    const/16 v1, 0x1e4

    aput-byte v6, v0, v1

    const/16 v1, 0x1e5

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1e6

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x1e7

    aput-byte v7, v0, v1

    const/16 v1, 0x1e8

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x1e9

    aput-byte v3, v0, v1

    const/16 v1, 0x1ea

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x1eb

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x1ec

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x1ed

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1ee

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x1ef

    aput-byte v3, v0, v1

    const/16 v1, 0x1f0

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x1f1

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x1f2

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1f3

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x1f4

    aput-byte v6, v0, v1

    const/16 v1, 0x1f5

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x1f6

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x1f7

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x1f8

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1f9

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x1fa

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x1fb

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x1fc

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1fd

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x1fe

    aput-byte v5, v0, v1

    const/16 v1, 0x1ff

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x200

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x201

    aput-byte v3, v0, v1

    const/16 v1, 0x202

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x203

    aput-byte v5, v0, v1

    const/16 v1, 0x204

    aput-byte v4, v0, v1

    const/16 v1, 0x205

    aput-byte v6, v0, v1

    const/16 v1, 0x206

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x207

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x208

    aput-byte v7, v0, v1

    const/16 v1, 0x209

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x20a

    aput-byte v3, v0, v1

    const/16 v1, 0x20b

    aput-byte v4, v0, v1

    const/16 v1, 0x20c

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x20d

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x20e

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x20f

    aput-byte v3, v0, v1

    const/16 v1, 0x210

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x211

    aput-byte v5, v0, v1

    const/16 v1, 0x212

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x213

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x214

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x215

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x216

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x217

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x218

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x219

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x21a

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x21b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x21c

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x21d

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x21e

    aput-byte v4, v0, v1

    const/16 v1, 0x21f

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x220

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x221

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x222

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x223

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x224

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x225

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x226

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x227

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x228

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x229

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x22a

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x22b

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x22c

    aput-byte v4, v0, v1

    const/16 v1, 0x22d

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x22e

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x22f

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x230

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x231

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x232

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x233

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x234

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x235

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x236

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x237

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x238

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x239

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x23a

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x23b

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x23c

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x23d

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x23e

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x23f

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x240

    aput-byte v6, v0, v1

    const/16 v1, 0x241

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x242

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x243

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x244

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x245

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x246

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x247

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x248

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x249

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x24a

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x24b

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x24c

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x24d

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x24e

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x24f

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x250

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x251

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x252

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x253

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x254

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x255

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x256

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x257

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x258

    aput-byte v4, v0, v1

    const/16 v1, 0x259

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x25a

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x25b

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x25c

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x25d

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x25e

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x25f

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x260

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x261

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x262

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x263

    aput-byte v5, v0, v1

    const/16 v1, 0x264

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x265

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x266

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x267

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x268

    aput-byte v6, v0, v1

    const/16 v1, 0x269

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x26a

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x26b

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x26c

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x26d

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x26e

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x26f

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x270

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x271

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x272

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x273

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x274

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x275

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x276

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x277

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x278

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x279

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x27a

    aput-byte v6, v0, v1

    const/16 v1, 0x27b

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x27c

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x27d

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x27e

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x27f

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x280

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x281

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x282

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x283

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x284

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x285

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x286

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x287

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x288

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x289

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x28a

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x28b

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x28c

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x28d

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x28e

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x28f

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x290

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x291

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x292

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x293

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x294

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x295

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x296

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x297

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x298

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x299

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x29a

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x29b

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x29c

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x29d

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x29e

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x29f

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x2a0

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2a1

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/4 v2, 0x0

    .line 349
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, "X.509"

    .line 350
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    const-string/jumbo v2, "RSA"

    .line 351
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 352
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 353
    if-nez v0, :cond_1

    .line 366
    :cond_0
    if-nez v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    .line 354
    return-object v0

    .line 353
    :cond_1
    if-eqz v2, :cond_0

    .line 356
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 358
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 363
    if-nez v1, :cond_3

    .line 358
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    .line 360
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    if-nez v1, :cond_4

    :goto_3
    const/4 v0, 0x0

    .line 366
    return-object v0

    .line 365
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 363
    :goto_4
    if-nez v1, :cond_5

    .line 362
    :goto_5
    throw v0

    .line 363
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 365
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 358
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "16,16,18,77,15,911,121,77,121,911,38,77,911,99,86,67,611,96,48,77,84,911,38,67,021,301,86,67,611,98,48,77,511,77,48,97,511,58,48,97,511,84,501,87,511,96,48,77,221,911,38,77,121,37,86,67,25,301,86,67,021,96,86,67,021,701,86,67,35,56,86,67,611,37,221,87"

    .line 59
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 62
    array-length v1, v2

    new-array v3, v1, [B

    move v1, v0

    .line 63
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 68
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/loc/r;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 69
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 70
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    array-length v2, v1

    new-array v2, v2, [B

    .line 75
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 79
    return-object v2

    .line 64
    :cond_0
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "getIV"

    .line 82
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 83
    new-array v0, v0, [B

    return-object v0
.end method

.method public static a([B)[B
    .locals 3

    .prologue
    .line 229
    :try_start_0
    invoke-static {p0}, Lcom/loc/w;->d([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "gZip"

    .line 231
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 235
    new-array v0, v0, [B

    return-object v0

    .line 234
    :catch_1
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "gZip"

    .line 233
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
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
    .line 187
    invoke-static {p0}, Lcom/loc/w;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/loc/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    :try_start_0
    invoke-static {p0}, Lcom/loc/w;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "HexString"

    .line 389
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 391
    return-object v0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 408
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_1

    .line 415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :cond_0
    return-object v0

    .line 409
    :cond_1
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 413
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static d([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 430
    if-eqz p0, :cond_0

    .line 434
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 435
    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 437
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 438
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    .line 462
    if-nez v1, :cond_1

    .line 452
    :goto_0
    if-nez v3, :cond_2

    .line 462
    :goto_1
    return-object v0

    .line 431
    :cond_0
    return-object v2

    .line 460
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 440
    :goto_2
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 456
    :goto_3
    if-nez v2, :cond_3

    .line 452
    :goto_4
    if-nez v3, :cond_4

    .line 445
    :goto_5
    throw v0

    .line 440
    :catch_1
    move-exception v0

    move-object v3, v2

    .line 443
    :goto_6
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 447
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 450
    :catch_2
    move-exception v0

    .line 449
    throw v0

    .line 454
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 458
    :catch_3
    move-exception v0

    .line 456
    throw v0

    .line 447
    :cond_3
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    .line 450
    :catch_4
    move-exception v0

    .line 449
    throw v0

    .line 454
    :cond_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    .line 458
    :catch_5
    move-exception v0

    .line 456
    throw v0

    .line 443
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 440
    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_6

    .line 460
    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method
