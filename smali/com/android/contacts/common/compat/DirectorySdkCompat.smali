.class public Lcom/android/contacts/common/compat/DirectorySdkCompat;
.super Ljava/lang/Object;
.source "DirectorySdkCompat.java"


# static fields
.field public static final ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final ENTERPRISE_LOCAL_DEFAULT:J = 0x3b9aca00L

.field public static final ENTERPRISE_LOCAL_INVISIBLE:J = 0x3b9aca01L

.field private static final TAG:Ljava/lang/String; = "DirectorySdkCompat"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/provider/ContactsContract$Directory;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/contacts/common/compat/DirectorySdkCompat;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnterpriseDirectoryId(J)Z
    .locals 2
    .param p0, "directoryId"    # J

    .prologue
    .line 36
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Directory;->isEnterpriseDirectoryId(J)Z

    move-result v0

    return v0
.end method

.method public static isRemoteDirectoryId(J)Z
    .locals 2
    .param p0, "directoryId"    # J

    .prologue
    .line 32
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Directory;->isRemoteDirectoryId(J)Z

    move-result v0

    return v0
.end method
