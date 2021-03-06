.class public Lcom/android/contacts/common/util/CommonDateUtils;
.super Ljava/lang/Object;
.source "CommonDateUtils.java"


# static fields
.field public static final DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final DEFAULT_HOUR:I = 0x8

.field public static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "--MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    sput-object v0, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 30
    sput-object v0, Lcom/android/contacts/common/util/CommonDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 32
    sput-object v0, Lcom/android/contacts/common/util/CommonDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "--MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 34
    sput-object v0, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
