.class public interface abstract Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;
.super Ljava/lang/Object;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/DialerDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeleteContactQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 225
    sget-object v0, Landroid/provider/ContactsContract$DeletedContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->URI:Landroid/net/Uri;

    .line 227
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 228
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 229
    const-string/jumbo v1, "contact_deleted_timestamp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 227
    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->PROJECTION:[Ljava/lang/String;

    .line 224
    return-void
.end method
