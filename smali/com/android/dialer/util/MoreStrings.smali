.class public Lcom/android/dialer/util/MoreStrings;
.super Ljava/lang/Object;
.source "MoreStrings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toSafeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    return-object v3

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 34
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x40

    if-ne v1, v3, :cond_2

    .line 35
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_2
    const/16 v3, 0x2e

    if-eq v1, v3, :cond_1

    .line 37
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 40
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
