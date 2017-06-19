.class public Lcom/android/incallui/InCallCsRedialHandler;
.super Ljava/lang/Object;
.source "InCallCsRedialHandler.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# static fields
.field private static sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;


# instance fields
.field private mAlert:Landroid/app/AlertDialog;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/InCallCsRedialHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallCsRedialHandler;->dialCsCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/incallui/InCallCsRedialHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallCsRedialHandler;->onDialogDismissed()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    .line 54
    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    .line 59
    return-void
.end method

.method private checkForCsRetry(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallCsRedialHandler;->getFailCauseFromExtras(Landroid/os/Bundle;)I

    move-result v0

    .line 149
    .local v0, "failCause":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkForCsRetry failCause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const/16 v1, 0x92

    if-eq v0, v1, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/codeaurora/ims/utils/QtiCallUtils;->isCsRetryEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallCsRedialHandler;->dialCsCall(Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/InCallCsRedialHandler;->showCsRedialDialogOnDisconnect(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dialCsCall(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dialCsCall number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 168
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "org.codeaurora.extra.CALL_DOMAIN"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/InCallCsRedialHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "Activity for dialing new call isn\'t found."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFailCauseFromExtras(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 134
    const/4 v0, -0x1

    .line 135
    .local v0, "failCause":I
    if-eqz p1, :cond_0

    .line 136
    const-string/jumbo v1, "CallFailExtraCode"

    .line 137
    const/4 v2, -0x1

    .line 136
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 139
    :cond_0
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallCsRedialHandler;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallCsRedialHandler;

    monitor-enter v1

    .line 124
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallCsRedialHandler;->sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/android/incallui/InCallCsRedialHandler;

    invoke-direct {v0}, Lcom/android/incallui/InCallCsRedialHandler;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallCsRedialHandler;->sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;

    .line 127
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallCsRedialHandler;->sInCallCsRedialHandler:Lcom/android/incallui/InCallCsRedialHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isCsRetryDialogShowing()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDialogDismissed()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    .line 234
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 232
    return-void
.end method

.method private showCsRedialDialogOnDisconnect(Ljava/lang/String;)V
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 186
    .local v0, "inCallActivity":Lcom/android/incallui/InCallActivity;
    if-nez v0, :cond_0

    .line 187
    const-string/jumbo v1, "showCsRedialDialogOnDisconnect inCallActivity is NULL"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    return-void

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 192
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0359

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 193
    const v2, 0x7f0d035a

    .line 192
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 194
    new-instance v2, Lcom/android/incallui/InCallCsRedialHandler$1;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/InCallCsRedialHandler$1;-><init>(Lcom/android/incallui/InCallCsRedialHandler;Ljava/lang/String;)V

    const v3, 0x7f0d035b

    .line 192
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 200
    new-instance v2, Lcom/android/incallui/InCallCsRedialHandler$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallCsRedialHandler$2;-><init>(Lcom/android/incallui/InCallCsRedialHandler;)V

    const v3, 0x7f0d035c

    .line 192
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 206
    new-instance v2, Lcom/android/incallui/InCallCsRedialHandler$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallCsRedialHandler$3;-><init>(Lcom/android/incallui/InCallCsRedialHandler;)V

    .line 192
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    .line 215
    iget-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 217
    iget-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 183
    return-void
.end method


# virtual methods
.method public dismissPendingDialogs()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/incallui/InCallCsRedialHandler;->isCsRetryDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    .line 240
    :cond_0
    return-void
.end method

.method public hasPendingDialogs()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "list"    # Lcom/android/incallui/CallList;

    .prologue
    .line 98
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 116
    const-string/jumbo v0, "onDisconnect"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallCsRedialHandler;->checkForCsRetry(Lcom/android/incallui/Call;)V

    .line 115
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 89
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 107
    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    .line 69
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 66
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 80
    iput-object v1, p0, Lcom/android/incallui/InCallCsRedialHandler;->mCallList:Lcom/android/incallui/CallList;

    .line 76
    :cond_0
    return-void
.end method
