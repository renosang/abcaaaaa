.class Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
.super Ljava/lang/Object;
.source "VoicemailStatusHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageStatusWithPriority"
.end annotation


# instance fields
.field private final mMessage:Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

.field private final mPriority:I


# direct methods
.method static synthetic -get0(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->mMessage:Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->mPriority:I

    return v0
.end method

.method public constructor <init>(Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;I)V
    .locals 0
    .param p1, "message"    # Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;
    .param p2, "priority"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->mMessage:Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    .line 151
    iput p2, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->mPriority:I

    .line 149
    return-void
.end method
