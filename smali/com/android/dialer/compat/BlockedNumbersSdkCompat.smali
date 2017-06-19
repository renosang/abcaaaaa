.class public Lcom/android/dialer/compat/BlockedNumbersSdkCompat;
.super Ljava/lang/Object;
.source "BlockedNumbersSdkCompat.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/provider/BlockedNumberContract$BlockedNumbers;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/dialer/compat/BlockedNumbersSdkCompat;->CONTENT_URI:Landroid/net/Uri;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCurrentUserBlockNumbers(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {p0}, Landroid/provider/BlockedNumberContract;->canCurrentUserBlockNumbers(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
