.class public Lcom/android/dialer/calllog/CallTypeHelper;
.super Ljava/lang/Object;
.source "CallTypeHelper.java"


# instance fields
.field private final mBlockedName:Ljava/lang/CharSequence;

.field private final mIncomingName:Ljava/lang/CharSequence;

.field private final mIncomingVideoName:Ljava/lang/CharSequence;

.field private final mIncomingVoLTEName:Ljava/lang/CharSequence;

.field private final mMissedName:Ljava/lang/CharSequence;

.field private final mMissedVideoName:Ljava/lang/CharSequence;

.field private final mMissedVoLTEName:Ljava/lang/CharSequence;

.field private final mNewMissedColor:I

.field private final mNewVoicemailColor:I

.field private final mOutgoingName:Ljava/lang/CharSequence;

.field private final mOutgoingVideoName:Ljava/lang/CharSequence;

.field private final mOutgoingVoLTEName:Ljava/lang/CharSequence;

.field private final mRejectedName:Ljava/lang/CharSequence;

.field private final mVoicemailName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const v0, 0x7f0d025e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    .line 60
    const v0, 0x7f0d025f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    .line 61
    const v0, 0x7f0d0260

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    .line 62
    const v0, 0x7f0d0261

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingVideoName:Ljava/lang/CharSequence;

    .line 63
    const v0, 0x7f0d0262

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingVideoName:Ljava/lang/CharSequence;

    .line 64
    const v0, 0x7f0d0263

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedVideoName:Ljava/lang/CharSequence;

    .line 65
    const v0, 0x7f0d0264

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingVoLTEName:Ljava/lang/CharSequence;

    .line 66
    const v0, 0x7f0d0265

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingVoLTEName:Ljava/lang/CharSequence;

    .line 67
    const v0, 0x7f0d0266

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedVoLTEName:Ljava/lang/CharSequence;

    .line 68
    const v0, 0x7f0d0267

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    .line 69
    const v0, 0x7f0d0268

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mRejectedName:Ljava/lang/CharSequence;

    .line 70
    const v0, 0x7f0d0269

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mBlockedName:Ljava/lang/CharSequence;

    .line 71
    const v0, 0x7f0a0347

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewMissedColor:I

    .line 72
    const v0, 0x7f0a0348

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewVoicemailColor:I

    .line 57
    return-void
.end method

.method public static isMissedCallType(I)Z
    .locals 3
    .param p0, "callType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    if-eq p0, v0, :cond_1

    .line 164
    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    .line 165
    const/16 v2, 0x8

    if-eq p0, v2, :cond_1

    .line 166
    const/16 v2, 0x9

    if-eq p0, v2, :cond_1

    .line 167
    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    .line 163
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 167
    goto :goto_0

    :cond_1
    move v0, v1

    .line 163
    goto :goto_0
.end method


# virtual methods
.method public getCallTypeText(IZ)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "callType"    # I
    .param p2, "isVideoCall"    # Z

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    return-object v0

    .line 79
    :pswitch_1
    if-eqz p2, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingVideoName:Ljava/lang/CharSequence;

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    return-object v0

    .line 86
    :pswitch_2
    if-eqz p2, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingVideoName:Ljava/lang/CharSequence;

    return-object v0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingVoLTEName:Ljava/lang/CharSequence;

    return-object v0

    .line 93
    :pswitch_3
    if-eqz p2, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingVideoName:Ljava/lang/CharSequence;

    return-object v0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    return-object v0

    .line 100
    :pswitch_4
    if-eqz p2, :cond_3

    .line 101
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingVideoName:Ljava/lang/CharSequence;

    return-object v0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingVoLTEName:Ljava/lang/CharSequence;

    return-object v0

    .line 107
    :pswitch_5
    if-eqz p2, :cond_4

    .line 108
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedVideoName:Ljava/lang/CharSequence;

    return-object v0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    return-object v0

    .line 114
    :pswitch_6
    if-eqz p2, :cond_5

    .line 115
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedVideoName:Ljava/lang/CharSequence;

    return-object v0

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedVoLTEName:Ljava/lang/CharSequence;

    return-object v0

    .line 121
    :pswitch_7
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    return-object v0

    .line 124
    :pswitch_8
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mRejectedName:Ljava/lang/CharSequence;

    return-object v0

    .line 127
    :pswitch_9
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mBlockedName:Ljava/lang/CharSequence;

    return-object v0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
