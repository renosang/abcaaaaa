.class public abstract Lcom/android/dialer/calllog/IntentProvider;
.super Ljava/lang/Object;
.source "IntentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/dialer/calllog/IntentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/IntentProvider;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddContactIntentProvider(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/android/dialer/calllog/IntentProvider;
    .locals 6
    .param p0, "lookupUri"    # Landroid/net/Uri;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "numberType"    # I
    .param p4, "isNewContact"    # Z

    .prologue
    .line 145
    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$6;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/IntentProvider$6;-><init>(Landroid/net/Uri;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public static getCallDetailIntentProvider(J[JLjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 2
    .param p0, "id"    # J
    .param p2, "extraIds"    # [J
    .param p3, "voicemailUri"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$5;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/android/dialer/calllog/IntentProvider$5;-><init>(Ljava/lang/String;[JJ)V

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 55
    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/IntentProvider$1;-><init>(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method public static getReturnVideoCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/dialer/calllog/IntentProvider;->getReturnVideoCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnVideoCallIntentProvider(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 72
    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/IntentProvider$2;-><init>(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method public static getReturnVoicemailCallIntentProvider()Lcom/android/dialer/calllog/IntentProvider;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$3;

    invoke-direct {v0}, Lcom/android/dialer/calllog/IntentProvider$3;-><init>()V

    return-object v0
.end method

.method public static getSendSmsIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lcom/android/dialer/calllog/IntentProvider$4;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/IntentProvider$4;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getIntent(Landroid/content/Context;)Landroid/content/Intent;
.end method
