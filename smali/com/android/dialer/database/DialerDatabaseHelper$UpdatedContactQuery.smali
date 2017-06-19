.class public interface abstract Lcom/android/dialer/database/DialerDatabaseHelper$UpdatedContactQuery;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdatedContactQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 211
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$UpdatedContactQuery;->URI:Landroid/net/Uri;

    .line 213
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 214
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 213
    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$UpdatedContactQuery;->PROJECTION:[Ljava/lang/String;

    .line 210
    return-void
.end method
