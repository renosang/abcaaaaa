.class public final enum Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;
.super Ljava/lang/Enum;
.source "VoicemailAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

.field public static final enum ARCHIVE_VOICEMAIL_CONTENT:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

.field public static final enum GET_VOICEMAIL_FILE_PATH:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

.field public static final enum SET_VOICEMAIL_ARCHIVE_STATUS:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    const-string/jumbo v1, "GET_VOICEMAIL_FILE_PATH"

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->GET_VOICEMAIL_FILE_PATH:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    .line 54
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    const-string/jumbo v1, "SET_VOICEMAIL_ARCHIVE_STATUS"

    invoke-direct {v0, v1, v3}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->SET_VOICEMAIL_ARCHIVE_STATUS:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    .line 55
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    const-string/jumbo v1, "ARCHIVE_VOICEMAIL_CONTENT"

    invoke-direct {v0, v1, v4}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->ARCHIVE_VOICEMAIL_CONTENT:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->GET_VOICEMAIL_FILE_PATH:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->SET_VOICEMAIL_ARCHIVE_STATUS:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->ARCHIVE_VOICEMAIL_CONTENT:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->$VALUES:[Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;->$VALUES:[Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$Tasks;

    return-object v0
.end method
