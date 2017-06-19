.class Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactMatch"
.end annotation


# instance fields
.field private final id:J

.field private final lookupKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/dialer/database/DialerDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/android/dialer/database/DialerDatabaseHelper;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dialer/database/DialerDatabaseHelper;
    .param p2, "lookupKey"    # Ljava/lang/String;
    .param p3, "id"    # J

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->this$0:Lcom/android/dialer/database/DialerDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    .line 358
    iput-wide p3, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    .line 356
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 368
    if-ne p0, p1, :cond_0

    .line 369
    const/4 v1, 0x1

    return v1

    .line 371
    :cond_0
    instance-of v2, p1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 372
    check-cast v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;

    .line 373
    .local v0, "that":Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 373
    :cond_1
    return v1

    .line 376
    .end local v0    # "that":Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 363
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->lookupKey:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
