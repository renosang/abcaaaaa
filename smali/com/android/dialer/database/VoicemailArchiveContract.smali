.class public final Lcom/android/dialer/database/VoicemailArchiveContract;
.super Ljava/lang/Object;
.source "VoicemailArchiveContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/database/VoicemailArchiveContract$VoicemailArchive;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String;

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->getVoicemailArchiveProviderAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/VoicemailArchiveContract;->AUTHORITY:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/database/VoicemailArchiveContract;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/database/VoicemailArchiveContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
