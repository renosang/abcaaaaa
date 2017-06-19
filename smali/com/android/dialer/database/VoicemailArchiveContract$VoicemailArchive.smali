.class public final Lcom/android/dialer/database/VoicemailArchiveContract$VoicemailArchive;
.super Ljava/lang/Object;
.source "VoicemailArchiveContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/OpenableColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/database/VoicemailArchiveContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoicemailArchive"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/android/dialer/database/VoicemailArchiveContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 45
    const-string/jumbo v1, "voicemail_archive_table"

    .line 43
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/VoicemailArchiveContract$VoicemailArchive;->CONTENT_URI:Landroid/net/Uri;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildWithId(I)Landroid/net/Uri;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 196
    sget-object v0, Lcom/android/dialer/database/VoicemailArchiveContract$VoicemailArchive;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
