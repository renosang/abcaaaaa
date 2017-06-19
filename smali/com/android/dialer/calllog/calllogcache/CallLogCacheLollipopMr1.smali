.class Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;
.super Lcom/android/dialer/calllog/calllogcache/CallLogCache;
.source "CallLogCacheLollipopMr1.java"


# instance fields
.field private final mPhoneAccountCallWithDrawableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneAccountCallWithNoteCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneAccountCallWithVoiceMailNumberCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneAccountColorCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneAccountLabelCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountLabelCache:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountColorCache:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithDrawableCache:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithVoiceMailNumberCache:Ljava/util/Map;

    .line 56
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 54
    return-void
.end method


# virtual methods
.method public doesAccountSupportCallSubject(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountSupportsCallSubject(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 129
    .local v0, "supportsCallWithNote":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getAccountColor(Landroid/telecom/PhoneAccountHandle;)I
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountColor(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 117
    .local v0, "color":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getAccountIcon(Landroid/telecom/PhoneAccountHandle;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v2, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithDrawableCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithDrawableCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    return-object v2

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountOrNull(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 140
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-nez v0, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithDrawableCache:Ljava/util/Map;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object v3

    .line 144
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 145
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithDrawableCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-object v1
.end method

.method public getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountLabel(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object v0
.end method

.method public isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z
    .locals 8
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "number"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    return v5

    .line 76
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "curNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithVoiceMailNumberCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 78
    iget-object v6, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithVoiceMailNumberCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    .local v4, "vmNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    :cond_1
    return v5

    .line 81
    .end local v4    # "vmNumber":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountOrNull(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 82
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_4

    .line 83
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v6

    .line 82
    if-eqz v6, :cond_4

    .line 85
    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 86
    .local v3, "subId":I
    iget-object v6, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .restart local v4    # "vmNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithVoiceMailNumberCache:Ljava/util/Map;

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 89
    invoke-static {v1, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 88
    :cond_3
    return v5

    .line 90
    .end local v3    # "subId":I
    .end local v4    # "vmNumber":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v6, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithVoiceMailNumberCache:Ljava/util/Map;

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v5

    .line 94
    :cond_4
    iget-object v6, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithVoiceMailNumberCache:Ljava/util/Map;

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountLabelCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 62
    iget-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountColorCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    iget-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithNoteCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    iget-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithDrawableCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65
    iget-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;->mPhoneAccountCallWithVoiceMailNumberCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    invoke-super {p0}, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->reset()V

    .line 60
    return-void
.end method
