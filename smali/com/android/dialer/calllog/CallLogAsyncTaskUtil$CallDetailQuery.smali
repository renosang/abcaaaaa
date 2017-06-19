.class final Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallDetailQuery;
.super Ljava/lang/Object;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallDetailQuery"
.end annotation


# static fields
.field public static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final CALL_LOG_PROJECTION_INTERNAL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 66
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    .line 67
    const-string/jumbo v2, "date"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 68
    const-string/jumbo v2, "duration"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 69
    const-string/jumbo v2, "number"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 70
    const-string/jumbo v2, "type"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 71
    const-string/jumbo v2, "countryiso"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 72
    const-string/jumbo v2, "geocoded_location"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 73
    const-string/jumbo v2, "presentation"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 74
    const-string/jumbo v2, "subscription_component_name"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 75
    const-string/jumbo v2, "subscription_id"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 76
    const-string/jumbo v2, "features"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 77
    const-string/jumbo v2, "data_usage"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 78
    const-string/jumbo v2, "transcription"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 66
    sput-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallDetailQuery;->CALL_LOG_PROJECTION_INTERNAL:[Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "projectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallDetailQuery;->CALL_LOG_PROJECTION_INTERNAL:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isNCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string/jumbo v1, "post_dial_digits"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    const-string/jumbo v1, "via_number"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallDetailQuery;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
