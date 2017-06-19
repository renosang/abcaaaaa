.class final Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNameLookupQuery;
.super Ljava/lang/Object;
.source "CallLogNotificationsHelper.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogNotificationsHelper$NameLookupQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogNotificationsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNameLookupQuery"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 322
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNameLookupQuery;->PROJECTION:[Ljava/lang/String;

    .line 321
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNameLookupQuery;->mContext:Landroid/content/Context;

    .line 330
    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNameLookupQuery;->mContentResolver:Landroid/content/ContentResolver;

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNameLookupQuery;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogNotificationsHelper$DefaultNameLookupQuery;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void
.end method
