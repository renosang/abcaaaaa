.class public Lcom/android/dialer/filterednumber/FilteredNumbersUtil$PhoneQuery;
.super Ljava/lang/Object;
.source "FilteredNumbersUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/filterednumber/FilteredNumbersUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneQuery"
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "data4"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "data1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 106
    sput-object v0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
