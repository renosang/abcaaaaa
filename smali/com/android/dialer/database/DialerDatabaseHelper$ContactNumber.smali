.class public Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactNumber"
.end annotation


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final accountType:Ljava/lang/String;

.field public final carrierPresence:I

.field public final dataId:J

.field public final displayName:Ljava/lang/String;

.field public final id:J

.field public final lookupKey:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;

.field public final photoId:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "dataID"    # J
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "phoneNumber"    # Ljava/lang/String;
    .param p7, "lookupKey"    # Ljava/lang/String;
    .param p8, "photoId"    # J
    .param p10, "carrierPresence"    # I
    .param p11, "accountType"    # Ljava/lang/String;
    .param p12, "accountName"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-wide p3, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    .line 311
    iput-wide p1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    .line 312
    iput-object p5, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    .line 313
    iput-object p6, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    .line 314
    iput-object p7, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    .line 315
    iput-wide p8, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    .line 316
    iput p10, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->carrierPresence:I

    .line 317
    iput-object p11, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->accountType:Ljava/lang/String;

    .line 318
    iput-object p12, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->accountName:Ljava/lang/String;

    .line 309
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 329
    if-ne p0, p1, :cond_0

    .line 330
    const/4 v1, 0x1

    return v1

    .line 332
    :cond_0
    instance-of v2, p1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 333
    check-cast v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    .line 334
    .local v0, "that":Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;
    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 334
    if-eqz v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 334
    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 334
    if-eqz v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 334
    if-eqz v2, :cond_1

    .line 339
    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 334
    if-eqz v2, :cond_1

    .line 340
    iget v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->carrierPresence:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->carrierPresence:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 334
    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->accountType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->accountType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 334
    if-eqz v2, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->accountName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->accountName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 334
    :cond_1
    return v1

    .line 345
    .end local v0    # "that":Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 323
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 324
    iget v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->carrierPresence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 323
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
