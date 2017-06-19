.class public final enum Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;
.super Ljava/lang/Enum;
.source "CallLogAsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum DELETE_BLOCKED_CALL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum DELETE_CALL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum DELETE_VOICEMAIL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum GET_CALL_DETAILS:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum MARK_CALL_READ:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum MARK_VOICEMAIL_READ:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

.field public static final enum UPDATE_DURATION:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string/jumbo v1, "DELETE_VOICEMAIL"

    invoke-direct {v0, v1, v3}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_VOICEMAIL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 56
    new-instance v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string/jumbo v1, "DELETE_CALL"

    invoke-direct {v0, v1, v4}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_CALL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 57
    new-instance v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string/jumbo v1, "DELETE_BLOCKED_CALL"

    invoke-direct {v0, v1, v5}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_BLOCKED_CALL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 58
    new-instance v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string/jumbo v1, "MARK_VOICEMAIL_READ"

    invoke-direct {v0, v1, v6}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 59
    new-instance v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string/jumbo v1, "MARK_CALL_READ"

    invoke-direct {v0, v1, v7}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_CALL_READ:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 60
    new-instance v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string/jumbo v1, "GET_CALL_DETAILS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->GET_CALL_DETAILS:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 61
    new-instance v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    const-string/jumbo v1, "UPDATE_DURATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->UPDATE_DURATION:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_VOICEMAIL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_CALL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->DELETE_BLOCKED_CALL:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->MARK_CALL_READ:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->GET_CALL_DETAILS:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->UPDATE_DURATION:Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->$VALUES:[Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    return-object v0
.end method

.method public static values()[Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;->$VALUES:[Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$Tasks;

    return-object v0
.end method
