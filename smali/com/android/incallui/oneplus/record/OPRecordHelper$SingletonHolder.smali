.class Lcom/android/incallui/oneplus/record/OPRecordHelper$SingletonHolder;
.super Ljava/lang/Object;
.source "OPRecordHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/record/OPRecordHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/incallui/oneplus/record/OPRecordHelper;


# direct methods
.method static synthetic -get0()Lcom/android/incallui/oneplus/record/OPRecordHelper;
    .locals 1

    sget-object v0, Lcom/android/incallui/oneplus/record/OPRecordHelper$SingletonHolder;->INSTANCE:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/incallui/oneplus/record/OPRecordHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;-><init>(Lcom/android/incallui/oneplus/record/OPRecordHelper;)V

    sput-object v0, Lcom/android/incallui/oneplus/record/OPRecordHelper$SingletonHolder;->INSTANCE:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
