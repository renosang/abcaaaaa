.class public Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
.super Ljava/lang/Object;
.source "VoicemailStatusHelper.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusMessage"
.end annotation


# instance fields
.field public final actionMessageId:I

.field public final actionUri:Landroid/net/Uri;

.field public final callDetailsMessageId:I

.field public final callLogMessageId:I

.field public final sourcePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILandroid/net/Uri;)V
    .locals 0
    .param p1, "sourcePackage"    # Ljava/lang/String;
    .param p2, "callLogMessageId"    # I
    .param p3, "callDetailsMessageId"    # I
    .param p4, "actionMessageId"    # I
    .param p5, "actionUri"    # Landroid/net/Uri;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->sourcePackage:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->callLogMessageId:I

    .line 60
    iput p3, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    .line 61
    iput p4, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    .line 62
    iput-object p5, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    .line 57
    return-void
.end method
