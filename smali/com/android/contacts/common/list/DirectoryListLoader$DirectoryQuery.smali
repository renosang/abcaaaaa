.class final Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;
.super Ljava/lang/Object;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/DirectoryListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQuery"
.end annotation


# static fields
.field public static final DISPLAY_NAME:I = 0x3

.field public static final ID:I = 0x0

.field public static final ORDER_BY:Ljava/lang/String; = "_id"

.field public static final PACKAGE_NAME:I = 0x1

.field public static final PHOTO_SUPPORT:I = 0x4

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TYPE_RESOURCE_ID:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "packageName"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "typeResourceId"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "displayName"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "photoSupport"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 50
    sput-object v0, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDirectoryUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 65
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 66
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    return-object v0

    .line 68
    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/DirectoryCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
