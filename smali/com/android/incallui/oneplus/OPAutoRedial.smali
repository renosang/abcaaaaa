.class public Lcom/android/incallui/oneplus/OPAutoRedial;
.super Ljava/lang/Object;
.source "OPAutoRedial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/oneplus/OPAutoRedial$1;
    }
.end annotation


# static fields
.field private static mIsInAutoRedial:Z

.field private static mOPAutoRedial:Lcom/android/incallui/oneplus/OPAutoRedial;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRedialCount:I

.field mHandler:Landroid/os/Handler;

.field private mIsNumberNotExistType:Z

.field private mRedialNumber:Ljava/lang/String;

.field private mSub:I


# direct methods
.method static synthetic -get0(Lcom/android/incallui/oneplus/OPAutoRedial;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mCurrentRedialCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/incallui/oneplus/OPAutoRedial;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mIsNumberNotExistType:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/incallui/oneplus/OPAutoRedial;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mRedialNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/oneplus/OPAutoRedial;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mSub:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/incallui/oneplus/OPAutoRedial;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mCurrentRedialCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/oneplus/OPAutoRedial;ILjava/lang/String;)V
    .locals 0
    .param p1, "sub"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/oneplus/OPAutoRedial;->dialCall(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/oneplus/OPAutoRedial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAutoRedial;->doNumberNotExistRedial()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/oneplus/OPAutoRedial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAutoRedial;->doOtherConditionRedial()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/android/incallui/oneplus/OPAutoRedial$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/oneplus/OPAutoRedial$1;-><init>(Lcom/android/incallui/oneplus/OPAutoRedial;)V

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private cancelDial()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 237
    const-string/jumbo v0, "cancelDial()"

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string/jumbo v0, "cancelDial()+ removeMessages +DIAL_CALL"

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    :cond_0
    return-void
.end method

.method private dialCall(ILjava/lang/String;)V
    .locals 5
    .param p1, "sub"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dialCall : sub  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", number  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 162
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 165
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 166
    .local v2, "soltId":I
    const-string/jumbo v3, "oneplus_slotId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "soltId":I
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doNumberNotExistRedial()V
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mCurrentRedialCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPAutoRedial;->cancelRedailTask()V

    .line 130
    :goto_0
    return-void

    .line 134
    :cond_0
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->doOneRedialTry(I)V

    goto :goto_0
.end method

.method private doOneRedialTry(I)V
    .locals 4
    .param p1, "delayMillimeter"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 152
    return-void
.end method

.method private doOtherConditionRedial()V
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mCurrentRedialCount:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPAutoRedial;->cancelRedailTask()V

    .line 138
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mCurrentRedialCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 143
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->doOneRedialTry(I)V

    goto :goto_0

    .line 144
    :cond_1
    iget v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mCurrentRedialCount:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    .line 145
    const v0, 0x2bf20

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->doOneRedialTry(I)V

    goto :goto_0

    .line 147
    :cond_2
    const v0, 0xea60

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->doOneRedialTry(I)V

    goto :goto_0
.end method

.method private endRedialTask()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "endRedialTask mIsInAutoRedial ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/oneplus/OPAutoRedial;->mIsInAutoRedial:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 231
    sget-boolean v0, Lcom/android/incallui/oneplus/OPAutoRedial;->mIsInAutoRedial:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPAutoRedial;->cancelRedailTask()V

    .line 229
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/oneplus/OPAutoRedial;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v0, Lcom/android/incallui/oneplus/OPAutoRedial;->mOPAutoRedial:Lcom/android/incallui/oneplus/OPAutoRedial;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/incallui/oneplus/OPAutoRedial;

    invoke-direct {v0, p0}, Lcom/android/incallui/oneplus/OPAutoRedial;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/oneplus/OPAutoRedial;->mOPAutoRedial:Lcom/android/incallui/oneplus/OPAutoRedial;

    .line 92
    :cond_0
    sget-object v0, Lcom/android/incallui/oneplus/OPAutoRedial;->mOPAutoRedial:Lcom/android/incallui/oneplus/OPAutoRedial;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 289
    const-string/jumbo v0, "OPAutoRedial"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method


# virtual methods
.method public cancelRedailTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    const-string/jumbo v0, "cancelRedailTask!"

    invoke-direct {p0, v0}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 125
    sput-boolean v1, Lcom/android/incallui/oneplus/OPAutoRedial;->mIsInAutoRedial:Z

    .line 126
    iput v1, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mCurrentRedialCount:I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mRedialNumber:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public opAutoRedial(Lcom/android/incallui/Call;Ljava/lang/String;Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 12
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oldState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 248
    if-nez p1, :cond_0

    .line 249
    const-string/jumbo v6, "oppoAutoRedial call is null return"

    invoke-direct {p0, v6}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 250
    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    .line 253
    .local v2, "cause":Landroid/telecom/DisconnectCause;
    invoke-virtual {v2}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v3

    .line 254
    .local v3, "causeCode":I
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSubId()I

    move-result v1

    .line 255
    .local v1, "callSubscription":I
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    .line 256
    .local v4, "connectTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", callSubscription = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 257
    const-string/jumbo v7, ", connectTime = "

    .line 256
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 257
    const-string/jumbo v7, ", causeCode = "

    .line 256
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "sub"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string/jumbo v6, "number"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p3, v6, :cond_1

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p3, v6, :cond_2

    .line 264
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mContext:Landroid/content/Context;

    invoke-static {v6, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 246
    :cond_2
    :goto_0
    return-void

    .line 265
    :cond_3
    const/4 v6, 0x3

    if-eq v3, v6, :cond_4

    .line 266
    const/4 v6, 0x7

    if-ne v3, v6, :cond_6

    .line 268
    :cond_4
    cmp-long v6, v4, v10

    if-nez v6, :cond_5

    .line 269
    invoke-virtual {p0, v0, v9, v8}, Lcom/android/incallui/oneplus/OPAutoRedial;->startRedial(Landroid/os/Bundle;ZZ)V

    .line 271
    :cond_5
    const-string/jumbo v6, "startRedial"

    invoke-direct {p0, v6}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_6
    const/16 v6, 0x9

    if-eq v3, v6, :cond_4

    .line 272
    if-eq v3, v8, :cond_7

    .line 273
    const/16 v6, 0x8

    if-ne v3, v6, :cond_9

    .line 274
    :cond_7
    cmp-long v6, v4, v10

    if-nez v6, :cond_8

    .line 275
    invoke-virtual {p0, v0, v8, v8}, Lcom/android/incallui/oneplus/OPAutoRedial;->startRedial(Landroid/os/Bundle;ZZ)V

    .line 277
    :cond_8
    const-string/jumbo v6, "startRedial - true"

    invoke-direct {p0, v6}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_9
    const/4 v6, 0x2

    if-ne v3, v6, :cond_a

    .line 279
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAutoRedial;->endRedialTask()V

    .line 280
    invoke-direct {p0}, Lcom/android/incallui/oneplus/OPAutoRedial;->cancelDial()V

    goto :goto_0

    .line 282
    :cond_a
    invoke-virtual {p0, v0, v9, v9}, Lcom/android/incallui/oneplus/OPAutoRedial;->startRedial(Landroid/os/Bundle;ZZ)V

    goto :goto_0
.end method

.method public startRedial(Landroid/os/Bundle;ZZ)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "isNumberNotExistType"    # Z
    .param p3, "isCallRedial"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 194
    if-nez p1, :cond_0

    .line 195
    const-string/jumbo v1, "Redial bundle is null!"

    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 196
    return-void

    .line 199
    :cond_0
    const-string/jumbo v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 201
    const-string/jumbo v1, "Redial number is null!"

    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 202
    return-void

    .line 205
    :cond_1
    sget-boolean v1, Lcom/android/incallui/oneplus/OPAutoRedial;->mIsInAutoRedial:Z

    if-eqz v1, :cond_4

    .line 206
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mRedialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPAutoRedial;->cancelRedailTask()V

    .line 208
    return-void

    .line 211
    :cond_2
    const-string/jumbo v1, "Now is another task in AutoRedail process!"

    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    :cond_3
    return-void

    .line 218
    :cond_4
    if-eqz p3, :cond_5

    .line 219
    iput v3, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mCurrentRedialCount:I

    .line 220
    iput-boolean p2, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mIsNumberNotExistType:Z

    .line 221
    const-string/jumbo v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mRedialNumber:Ljava/lang/String;

    .line 222
    const-string/jumbo v1, "sub"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mSub:I

    .line 223
    sput-boolean v2, Lcom/android/incallui/oneplus/OPAutoRedial;->mIsInAutoRedial:Z

    .line 224
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPAutoRedial;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    const-string/jumbo v1, "start a new AutoRedail process!"

    invoke-direct {p0, v1}, Lcom/android/incallui/oneplus/OPAutoRedial;->log(Ljava/lang/String;)V

    .line 193
    :cond_5
    return-void
.end method
