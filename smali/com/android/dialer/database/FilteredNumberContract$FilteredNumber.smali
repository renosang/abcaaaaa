.class public Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;
.super Ljava/lang/Object;
.source "FilteredNumberContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/FilteredNumberContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilteredNumber"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_INCREMENT_FILTERED_COUNT:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/android/dialer/database/FilteredNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 140
    const-string/jumbo v1, "filtered_numbers_table"

    .line 138
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;->CONTENT_URI:Landroid/net/Uri;

    .line 143
    sget-object v0, Lcom/android/dialer/database/FilteredNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 144
    const-string/jumbo v1, "filtered_numbers_increment_filtered_count"

    .line 142
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/FilteredNumberContract$FilteredNumber;->CONTENT_URI_INCREMENT_FILTERED_COUNT:Landroid/net/Uri;

    .line 132
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
