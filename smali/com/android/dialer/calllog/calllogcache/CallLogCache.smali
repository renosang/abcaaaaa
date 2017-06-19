.class public abstract Lcom/android/dialer/calllog/calllogcache/CallLogCache;
.super Ljava/lang/Object;
.source "CallLogCache.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mHasCheckedForVideoEnabled:Z

.field private mIsVideoEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static getCallLogCache(Landroid/content/Context;)Lcom/android/dialer/calllog/calllogcache/CallLogCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string/jumbo v0, "android.telecom.PhoneAccountHandle"

    invoke-static {v0}, Lcom/android/contacts/common/compat/CompatUtils;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipopMr1;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipop;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/calllogcache/CallLogCacheLollipop;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract doesAccountSupportCallSubject(Landroid/telecom/PhoneAccountHandle;)Z
.end method

.method public abstract getAccountColor(Landroid/telecom/PhoneAccountHandle;)I
.end method

.method public abstract getAccountIcon(Landroid/telecom/PhoneAccountHandle;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getAccountLabel(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
.end method

.method public isVideoEnabled()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->mHasCheckedForVideoEnabled:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->mIsVideoEnabled:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->mHasCheckedForVideoEnabled:Z

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->mIsVideoEnabled:Z

    return v0
.end method

.method public abstract isVoicemailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Z
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->mHasCheckedForVideoEnabled:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/dialer/calllog/calllogcache/CallLogCache;->mIsVideoEnabled:Z

    .line 59
    return-void
.end method
