.class public Lcom/android/incallui/QtiCallUtils;
.super Ljava/lang/Object;
.source "QtiCallUtils.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field static dsdaEnabled:Ljava/lang/Boolean;


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    invoke-static {p0, p1}, Lcom/android/incallui/QtiCallUtils;->changeToVideoClicked(Lcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "QtiCallUtils"

    sput-object v0, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    .line 423
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/QtiCallUtils;->dsdaEnabled:Ljava/lang/Boolean;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "callType"    # I

    .prologue
    .line 200
    packed-switch p0, :pswitch_data_0

    .line 208
    const-string/jumbo v0, ""

    return-object v0

    .line 202
    :pswitch_0
    const-string/jumbo v0, "VT"

    return-object v0

    .line 204
    :pswitch_1
    const-string/jumbo v0, "VT_TX"

    return-object v0

    .line 206
    :pswitch_2
    const-string/jumbo v0, "VT_RX"

    return-object v0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static changeToVideoClicked(Lcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 216
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v0, :cond_0

    .line 217
    return-void

    .line 219
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 221
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->getInstance()Lcom/android/incallui/InCallAudioManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/android/incallui/InCallAudioManager;->onModifyCallClicked(Lcom/android/incallui/Call;I)V

    .line 214
    return-void
.end method

.method public static displayModifyCallOptions(Lcom/android/incallui/Call;Landroid/content/Context;)V
    .locals 10
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 137
    if-nez p0, :cond_0

    .line 138
    sget-object v8, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Can\'t display modify call options. Call is null"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/QtiCallUtils;->isTtyEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 143
    sget-object v8, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Call session modification is allowed only when TTY is off."

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const v8, 0x7f0d0353

    invoke-static {p1, v8}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;I)V

    .line 145
    return-void

    .line 148
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v5, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v4, "itemToCallType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 153
    .local v7, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasVoiceCapabilities(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 154
    const v8, 0x7f0d034b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasReceiveVideoCapabilities(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 159
    const v8, 0x7f0d034a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasTransmitVideoCapabilities(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 164
    const v8, 0x7f0d0349

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_4
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasReceiveVideoCapabilities(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasTransmitVideoCapabilities(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 169
    const v8, 0x7f0d0348

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0d0347

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 177
    new-instance v6, Lcom/android/incallui/QtiCallUtils$1;

    invoke-direct {v6, p1, v5, v4, p0}, Lcom/android/incallui/QtiCallUtils$1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/incallui/Call;)V

    .line 189
    .local v6, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v8

    invoke-static {v8}, Lcom/android/incallui/VideoUtils;->getUnPausedVideoState(I)I

    move-result v2

    .line 190
    .local v2, "currUnpausedVideoState":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 191
    .local v3, "index":I
    new-array v8, v9, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v8, v3, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 193
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 136
    return-void
.end method

.method public static displayToast(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/QtiCallUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static displayToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    return-void
.end method

.method public static downgradeToVoiceCall(Lcom/android/incallui/Call;)V
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 441
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 442
    .local v0, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-static {p0, v0}, Lcom/android/incallui/QtiCallUtils;->changeToVideoClicked(Lcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V

    .line 440
    return-void
.end method

.method public static getCallSessionResourceId(I)I
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 104
    packed-switch p0, :pswitch_data_0

    .line 114
    :pswitch_0
    const v0, 0x7f0d0344

    return v0

    .line 106
    :pswitch_1
    const v0, 0x7f0d0341

    return v0

    .line 108
    :pswitch_2
    const v0, 0x7f0d0340

    return v0

    .line 110
    :pswitch_3
    const v0, 0x7f0d0342

    return v0

    .line 112
    :pswitch_4
    const v0, 0x7f0d0343

    return v0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;
    .locals 13

    .prologue
    .line 291
    const/4 v8, 0x0

    .line 293
    .local v8, "mExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    :try_start_0
    const-string/jumbo v9, "android.os.ServiceManager"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 294
    .local v0, "c":Ljava/lang/Class;
    const-string/jumbo v9, "getService"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 297
    .local v7, "m":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "extphone"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v9}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 311
    .end local v0    # "c":Ljava/lang/Class;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v8

    .line 308
    :catch_0
    move-exception v4

    .line 309
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    sget-object v9, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " ex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v5

    .line 307
    .local v5, "e":Ljava/lang/SecurityException;
    sget-object v9, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " ex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v5    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v6

    .line 305
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v9, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " ex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v9, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " ex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 301
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v9, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " ex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v9, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " ex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getIncomingCallAnswerOptions(Landroid/content/Context;IZ)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "videoState"    # I
    .param p2, "withSms"    # Z

    .prologue
    .line 240
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    .line 242
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    if-eqz p2, :cond_2

    const/16 v0, 0x3e9

    :goto_1
    return v0

    .line 245
    :cond_2
    const/16 v0, 0x3e8

    goto :goto_1

    .line 246
    :cond_3
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    if-eqz p2, :cond_4

    .line 248
    const/16 v0, 0x3f2

    .line 247
    :goto_2
    return v0

    .line 249
    :cond_4
    const/16 v0, 0x3f1

    goto :goto_2

    .line 251
    :cond_5
    if-eqz p2, :cond_6

    .line 252
    const/16 v0, 0x3f4

    .line 251
    :goto_3
    return v0

    .line 253
    :cond_6
    const/16 v0, 0x3f3

    goto :goto_3
.end method

.method static getPhoneId(I)I
    .locals 9
    .param p0, "subId"    # I

    .prologue
    const/4 v8, 0x0

    .line 363
    :try_start_0
    const-string/jumbo v4, "android.telephony.SubscriptionManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 364
    .local v0, "c":Ljava/lang/Class;
    const-string/jumbo v4, "getPhoneId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 365
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 366
    .local v3, "phoneId":I
    sget v4, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    if-ge v3, v4, :cond_0

    if-gez v3, :cond_1

    .line 367
    :cond_0
    const/4 v3, 0x0

    .line 369
    :cond_1
    sget-object v4, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "phoneid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    return v3

    .line 371
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "phoneId":I
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return v8
.end method

.method public static getSessionModificationOptions(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentVideoState"    # I
    .param p2, "modifyToVideoState"    # I

    .prologue
    const/16 v1, 0x3eb

    .line 263
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->useExt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x4

    return v0

    .line 267
    :cond_0
    invoke-static {p1, p2}, Lcom/android/incallui/QtiCallUtils;->showVideoUpgradeOptions(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    return v1

    .line 269
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    const/16 v0, 0x3ec

    return v0

    .line 271
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    const/16 v0, 0x3ed

    return v0

    .line 273
    :cond_3
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    const/16 v0, 0x3ee

    return v0

    .line 276
    :cond_4
    return v1
.end method

.method static getSubId(I)I
    .locals 8
    .param p0, "phoneId"    # I

    .prologue
    .line 379
    :try_start_0
    const-string/jumbo v4, "android.telephony.SubscriptionManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 380
    .local v0, "c":Ljava/lang/Class;
    const-string/jumbo v4, "getSubId"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 381
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 382
    .local v3, "subId":[I
    sget-object v4, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSubId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 384
    const/4 v4, 0x0

    aget v4, v3, v4

    return v4

    .line 386
    :cond_0
    sget-object v4, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subId not valid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "subId":[I
    :goto_0
    const/4 v4, -0x1

    return v4

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVideoQualityResourceId(I)I
    .locals 1
    .param p0, "videoQuality"    # I

    .prologue
    .line 88
    packed-switch p0, :pswitch_data_0

    .line 96
    const v0, 0x7f0d033f

    return v0

    .line 90
    :pswitch_0
    const v0, 0x7f0d033c

    return v0

    .line 92
    :pswitch_1
    const v0, 0x7f0d033d

    return v0

    .line 94
    :pswitch_2
    const v0, 0x7f0d033e

    return v0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static hasReceiveVideoCapabilities(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 498
    if-eqz p0, :cond_0

    .line 499
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 498
    if-eqz v0, :cond_0

    .line 500
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasTransmitVideoCapabilities(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 488
    if-eqz p0, :cond_0

    .line 489
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 488
    if-eqz v0, :cond_0

    .line 490
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 488
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasVoiceCapabilities(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 479
    if-eqz p0, :cond_0

    .line 480
    const/high16 v1, 0x400000

    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 480
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasVoiceOrVideoCapabilities(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 507
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasVoiceCapabilities(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasTransmitVideoCapabilities(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-static {p0}, Lcom/android/incallui/QtiCallUtils;->hasReceiveVideoCapabilities(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 507
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isDsdaEnabled()Z
    .locals 6

    .prologue
    .line 426
    :try_start_0
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->dsdaEnabled:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 427
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    .line 428
    .local v2, "mExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDsdaEnabled, mExtTelephony:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-interface {v2}, Lorg/codeaurora/internal/IExtTelephony;->isDsdaEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/QtiCallUtils;->dsdaEnabled:Ljava/lang/Boolean;

    .line 430
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->dsdaEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "ex":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->dsdaEnabled:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    return v3

    .line 432
    :catch_1
    move-exception v0

    .line 433
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->dsdaEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v2, 0x0

    .line 321
    .local v2, "isEmergencyNumber":Z
    :try_start_0
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    invoke-interface {v3, p0}, Lorg/codeaurora/internal/IExtTelephony;->isEmergencyNumber(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 327
    .end local v2    # "isEmergencyNumber":Z
    :goto_0
    return v2

    .line 324
    .restart local v2    # "isEmergencyNumber":Z
    :catch_0
    move-exception v1

    .line 325
    .local v1, "ex":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 323
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isEnabled(II)Z
    .locals 1
    .param p0, "mask"    # I
    .param p1, "value"    # I

    .prologue
    .line 73
    and-int v0, p0, p1

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalEmergencyNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 337
    .local v2, "isEmergencyNumber":Z
    :try_start_0
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    invoke-interface {v3, p0}, Lorg/codeaurora/internal/IExtTelephony;->isLocalEmergencyNumber(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 343
    .end local v2    # "isEmergencyNumber":Z
    :goto_0
    return v2

    .line 340
    .restart local v2    # "isEmergencyNumber":Z
    :catch_0
    move-exception v1

    .line 341
    .local v1, "ex":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 339
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isNotEnabled(II)Z
    .locals 2
    .param p0, "mask"    # I
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 81
    and-int v1, p0, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isTtyEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 350
    if-nez p0, :cond_0

    .line 351
    const-string/jumbo v3, "Context is null..."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    return v2

    .line 355
    :cond_0
    const/4 v1, 0x0

    .line 356
    .local v1, "TTY_MODE_OFF":I
    const-string/jumbo v0, "preferred_tty_mode"

    .line 357
    .local v0, "PREFERRED_TTY_MODE":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 358
    const-string/jumbo v4, "preferred_tty_mode"

    .line 357
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static showVideoUpgradeOptions(II)Z
    .locals 1
    .param p0, "currentVideoState"    # I
    .param p1, "modifyToVideoState"    # I

    .prologue
    const/4 v0, 0x0

    .line 283
    if-nez p0, :cond_0

    .line 284
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v0

    .line 283
    :cond_0
    return v0
.end method

.method static switchToActiveSub(I)V
    .locals 6
    .param p0, "subId"    # I

    .prologue
    .line 396
    :try_start_0
    invoke-static {}, Lcom/android/incallui/QtiCallUtils;->getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    .line 397
    .local v2, "mExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchToActiveSub, mExtTelephony:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-interface {v2, p0}, Lorg/codeaurora/internal/IExtTelephony;->switchToActiveSub(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v2    # "mExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "ex":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 400
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/incallui/QtiCallUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static toUiOrientationMode(I)I
    .locals 1
    .param p0, "orientationMode"    # I

    .prologue
    .line 450
    packed-switch p0, :pswitch_data_0

    .line 458
    const/4 v0, -0x1

    return v0

    .line 452
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 454
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 456
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toVideoIcon(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 463
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const v0, 0x7f020143

    return v0

    .line 465
    :cond_0
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    const v0, 0x7f020141

    return v0

    .line 468
    :cond_1
    const v0, 0x7f020125

    return v0
.end method

.method public static useExt(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    if-nez p0, :cond_0

    .line 230
    const-string/jumbo v0, "Context is null..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
