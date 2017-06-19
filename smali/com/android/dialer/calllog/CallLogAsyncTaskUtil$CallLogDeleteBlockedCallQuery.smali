.class Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogDeleteBlockedCallQuery;
.super Ljava/lang/Object;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallLogDeleteBlockedCallQuery"
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "date"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 110
    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$CallLogDeleteBlockedCallQuery;->PROJECTION:[Ljava/lang/String;

    .line 109
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
