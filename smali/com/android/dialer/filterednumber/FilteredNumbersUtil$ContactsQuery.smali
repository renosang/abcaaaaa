.class Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ContactsQuery;
.super Ljava/lang/Object;
.source "FilteredNumbersUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/filterednumber/FilteredNumbersUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsQuery"
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 97
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 96
    sput-object v0, Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ContactsQuery;->PROJECTION:[Ljava/lang/String;

    .line 95
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
