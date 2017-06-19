.class final enum Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;
.super Ljava/lang/Enum;
.source "VoicemailStatusHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OverallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum INVALID:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum INVITE_FOR_CONFIGURATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum MESSAGE_WAITING:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NOT_CONFIGURED:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_CONNECTION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_DATA:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_DETAILED_NOTIFICATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum NO_NOTIFICATIONS:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

.field public static final enum OK:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;


# instance fields
.field private final mAction:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

.field private final mCallDetailsMessageId:I

.field private final mCallLogMessageId:I

.field private final mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, -0x1

    .line 81
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string/jumbo v1, "NO_CONNECTION"

    .line 84
    sget-object v4, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const v5, 0x7f0d0238

    .line 85
    const v6, 0x7f0d023b

    move v3, v2

    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;II)V

    .line 84
    sput-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_CONNECTION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 86
    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string/jumbo v4, "NO_DATA"

    .line 87
    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const v8, 0x7f0d0238

    .line 88
    const v9, 0x7f0d023b

    move v5, v11

    move v6, v11

    .line 86
    invoke-direct/range {v3 .. v9}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;II)V

    .line 87
    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DATA:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 89
    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string/jumbo v4, "MESSAGE_WAITING"

    .line 90
    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    const v8, 0x7f0d0239

    .line 91
    const v9, 0x7f0d023b

    move v5, v12

    move v6, v12

    .line 89
    invoke-direct/range {v3 .. v9}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;II)V

    .line 90
    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->MESSAGE_WAITING:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 92
    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string/jumbo v4, "NO_NOTIFICATIONS"

    .line 93
    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    .line 94
    const v8, 0x7f0d0238

    move v5, v13

    move v6, v13

    .line 92
    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    .line 93
    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_NOTIFICATIONS:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 95
    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string/jumbo v4, "INVITE_FOR_CONFIGURATION"

    .line 96
    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CONFIGURE_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    .line 95
    const/4 v5, 0x4

    .line 96
    const/4 v6, 0x4

    .line 97
    const v8, 0x7f0d023a

    .line 95
    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    .line 96
    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 98
    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string/jumbo v4, "NO_DETAILED_NOTIFICATION"

    .line 102
    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    .line 98
    const/4 v5, 0x5

    .line 102
    const/4 v6, 0x5

    move v8, v10

    .line 98
    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    .line 102
    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 103
    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string/jumbo v4, "NOT_CONFIGURED"

    .line 104
    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    .line 103
    const/4 v5, 0x6

    .line 104
    const/4 v6, 0x6

    move v8, v10

    .line 103
    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    .line 104
    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NOT_CONFIGURED:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 105
    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string/jumbo v4, "OK"

    .line 106
    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    .line 105
    const/4 v5, 0x7

    .line 106
    const/4 v6, 0x7

    move v8, v10

    .line 105
    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    .line 106
    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->OK:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 107
    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const-string/jumbo v4, "INVALID"

    .line 108
    sget-object v7, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    .line 107
    const/16 v5, 0x8

    .line 108
    const/16 v6, 0x8

    move v8, v10

    .line 107
    invoke-direct/range {v3 .. v8}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V

    .line 108
    sput-object v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVALID:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_CONNECTION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DATA:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->MESSAGE_WAITING:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_NOTIFICATIONS:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NOT_CONFIGURED:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->OK:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVALID:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->$VALUES:[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;I)V
    .locals 7
    .param p3, "priority"    # I
    .param p4, "action"    # Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
    .param p5, "callLogMessageId"    # I

    .prologue
    .line 116
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;-><init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;II)V

    .line 115
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;II)V
    .locals 0
    .param p3, "priority"    # I
    .param p4, "action"    # Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
    .param p5, "callLogMessageId"    # I
    .param p6, "callDetailsMessageId"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput p3, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mPriority:I

    .line 122
    iput-object p4, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mAction:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    .line 123
    iput p5, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mCallLogMessageId:I

    .line 124
    iput p6, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mCallDetailsMessageId:I

    .line 120
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0
.end method

.method public static values()[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->$VALUES:[Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mAction:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    return-object v0
.end method

.method public getCallDetailsMessageId()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mCallDetailsMessageId:I

    return v0
.end method

.method public getCallLogMessageId()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mCallLogMessageId:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->mPriority:I

    return v0
.end method
