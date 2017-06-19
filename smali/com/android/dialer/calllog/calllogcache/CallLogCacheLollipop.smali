.class Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipop;
.super Lcom/android/dialer/calllog/calllogcache/CallLogCache;
.source "CallLogCacheLollipop.java"


# instance fields
.field private mVoicemailNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public doesAccountSupportCallSubject(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountColor(Landroid/telecom/PhoneAccountHandle;)I
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountIcon(Landroid/telecom/PhoneAccountHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "number"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    return v2

    .line 46
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "numberString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipop;->mVoicemailNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipop;->mVoicemailNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 52
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    iput-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipop;->mVoicemailNumber:Ljava/lang/String;

    .line 54
    const/4 v1, 0x1

    return v1

    .line 57
    :cond_2
    return v2
.end method
