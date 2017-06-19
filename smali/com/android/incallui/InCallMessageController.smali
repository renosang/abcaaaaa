.class public Lcom/android/incallui/InCallMessageController;
.super Ljava/lang/Object;
.source "InCallMessageController.java"

# interfaces
.implements Lcom/android/incallui/InCallSubstateListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
.implements Lcom/android/incallui/InCallSessionModificationCauseListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;


# static fields
.field private static sInCallMessageController:Lcom/android/incallui/InCallMessageController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallMessageController;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallMessageController;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallMessageController;->sInCallMessageController:Lcom/android/incallui/InCallMessageController;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/incallui/InCallMessageController;

    invoke-direct {v0}, Lcom/android/incallui/InCallMessageController;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallMessageController;->sInCallMessageController:Lcom/android/incallui/InCallMessageController;

    .line 105
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallMessageController;->sInCallMessageController:Lcom/android/incallui/InCallMessageController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSessionModificationCauseResourceId(I)I
    .locals 1
    .param p0, "cause"    # I

    .prologue
    .line 344
    packed-switch p0, :pswitch_data_0

    .line 369
    const v0, 0x7f0d0368

    return v0

    .line 346
    :pswitch_0
    const v0, 0x7f0d035d

    return v0

    .line 348
    :pswitch_1
    const v0, 0x7f0d035e

    return v0

    .line 350
    :pswitch_2
    const v0, 0x7f0d035f

    return v0

    .line 352
    :pswitch_3
    const v0, 0x7f0d0360

    return v0

    .line 354
    :pswitch_4
    const v0, 0x7f0d0361

    return v0

    .line 356
    :pswitch_5
    const v0, 0x7f0d0362

    return v0

    .line 358
    :pswitch_6
    const v0, 0x7f0d0363

    return v0

    .line 360
    :pswitch_7
    const v0, 0x7f0d0364

    return v0

    .line 362
    :pswitch_8
    const v0, 0x7f0d0365

    return v0

    .line 364
    :pswitch_9
    const v0, 0x7f0d0366

    return v0

    .line 366
    :pswitch_a
    const v0, 0x7f0d0367

    return v0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private showCallDisconnectInfo(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 302
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 303
    return-void

    .line 306
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 308
    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0357

    invoke-static {v0, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 311
    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    const v1, 0x7f0d036d

    invoke-static {v0, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 306
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_1
        0x95 -> :sswitch_0
    .end sparse-switch
.end method

.method private showUpgradeFailInfo(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 385
    packed-switch p1, :pswitch_data_0

    .line 384
    :goto_0
    return-void

    .line 387
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    .line 388
    const v1, 0x7f0d034c

    .line 387
    invoke-static {v0, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCallDataUsageChange(J)V
    .locals 5
    .param p1, "dataUsage"    # J

    .prologue
    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallDataUsageChange: dataUsage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 239
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    const v3, 0x7f0d0346

    .line 240
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "dataUsageChangedText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    .end local v0    # "dataUsageChangedText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "list"    # Lcom/android/incallui/CallList;

    .prologue
    .line 269
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallSessionEvent: event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 186
    const-string/jumbo v1, "onCallSessionEvent - Context is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->getCallSessionResourceId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    .line 182
    :cond_1
    return-void
.end method

.method public onCallSubstateChanged(Lcom/android/incallui/Call;I)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "callSubstate"    # I

    .prologue
    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCallSubstateChanged - Call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " call substate changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v2, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    const-string/jumbo v0, ""

    .line 125
    .local v0, "callSubstateChangedText":Ljava/lang/String;
    const/4 v2, 0x1

    .line 124
    invoke-static {v2, p2}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 128
    const v4, 0x7f0d0338

    .line 127
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    const/4 v2, 0x2

    .line 131
    invoke-static {v2, p2}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    iget-object v3, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 135
    const v4, 0x7f0d0339

    .line 134
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_1
    const/4 v2, 0x4

    invoke-static {v2, p2}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d033a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_2
    const/16 v2, 0xf

    invoke-static {v2, p2}, Lcom/android/incallui/QtiCallUtils;->isNotEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0337

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 149
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 150
    const v3, 0x7f0d0336

    .line 149
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "callSubstateLabelText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    .end local v1    # "callSubstateLabelText":Ljava/lang/String;
    :cond_4
    return-void

    .line 118
    .end local v0    # "callSubstateChangedText":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "onCallSubstateChanged - Context is null/not primary call."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 10
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    const/4 v0, 0x0

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " onDetailsChanged call="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " details="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v8, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    if-nez p2, :cond_1

    .line 206
    :cond_0
    const-string/jumbo v8, " onDetailsChanged: context/details is null"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    return-void

    .line 210
    :cond_1
    invoke-virtual {p2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 211
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 213
    const-string/jumbo v8, "dataUsage"

    .line 212
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    move-object v0, v8

    .line 214
    .local v0, "dataUsage":Lorg/codeaurora/ims/QtiVideoCallDataUsage;
    :cond_2
    if-nez v0, :cond_3

    .line 215
    return-void

    .line 218
    :cond_3
    invoke-virtual {v0}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteDataUsage()J

    move-result-wide v4

    .line 219
    .local v4, "lteUsage":J
    invoke-virtual {v0}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanDataUsage()J

    move-result-wide v6

    .line 220
    .local v6, "wlanUsage":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onDetailsChanged LTE data value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " WiFi data value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v8, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 224
    .local v3, "resources":Landroid/content/res/Resources;
    const v8, 0x7f090023

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const v9, 0x7f0d0345

    .line 225
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "dataUsageChangedText":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    .end local v1    # "dataUsageChangedText":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 288
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 289
    const-string/jumbo v2, "onDisconnect: null Extras"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    return-void

    .line 292
    :cond_0
    const-string/jumbo v2, "CallFailExtraCode"

    .line 293
    const/4 v3, -0x1

    .line 292
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 294
    .local v0, "errorCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisconnect: code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMessageController;->showCallDisconnectInfo(I)V

    .line 286
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 260
    return-void
.end method

.method public onSessionModificationCauseChanged(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "sessionModificationCause"    # I

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionModificationCauseChanged: Call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    const-string/jumbo v1, " Call modified due to "

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    .line 336
    invoke-static {p2}, Lcom/android/incallui/InCallMessageController;->getSessionModificationCauseResourceId(I)I

    move-result v1

    .line 335
    invoke-static {v0, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    .line 325
    return-void

    .line 331
    :cond_0
    const-string/jumbo v0, "onSessionModificationCauseChanged- Context is null/not primary call."

    .line 330
    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 278
    return-void
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpgradeToVideoFail: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallMessageController;->showUpgradeFailInfo(I)V

    .line 379
    return-void
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 374
    return-void
.end method

.method public onVideoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoQuality"    # I

    .prologue
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVideoQualityChanged: - Call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Video quality changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v2, p1}, Lcom/android/incallui/PrimaryCallTracker;->isPrimaryCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    .local v0, "resources":Landroid/content/res/Resources;
    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const v3, 0x7f0d033b

    .line 170
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    invoke-static {p2}, Lcom/android/incallui/QtiCallUtils;->getVideoQualityResourceId(I)I

    move-result v3

    .line 171
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "videoQualityChangedText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    .end local v1    # "videoQualityChangedText":Ljava/lang/String;
    :cond_0
    return-void

    .line 165
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_1
    const-string/jumbo v2, "onVideoQualityChanged - Context is null/not primary call."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/android/incallui/PrimaryCallTracker;

    invoke-direct {v0}, Lcom/android/incallui/PrimaryCallTracker;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 72
    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallSubstateNotifier;->addListener(Lcom/android/incallui/InCallSubstateListener;)V

    .line 73
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 74
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 75
    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SessionModificationCauseNotifier;->addListener(Lcom/android/incallui/InCallSessionModificationCauseListener;)V

    .line 76
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 77
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 78
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 69
    return-void
.end method

.method public tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iput-object v2, p0, Lcom/android/incallui/InCallMessageController;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallSubstateNotifier;->removeListener(Lcom/android/incallui/InCallSubstateListener;)V

    .line 89
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 90
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 91
    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/SessionModificationCauseNotifier;->removeListener(Lcom/android/incallui/InCallSessionModificationCauseListener;)V

    .line 92
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 93
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 94
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 95
    iput-object v2, p0, Lcom/android/incallui/InCallMessageController;->mPrimaryCallTracker:Lcom/android/incallui/PrimaryCallTracker;

    .line 86
    return-void
.end method
