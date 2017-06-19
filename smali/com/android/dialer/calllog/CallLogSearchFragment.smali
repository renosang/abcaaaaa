.class public Lcom/android/dialer/calllog/CallLogSearchFragment;
.super Lcom/android/dialer/calllog/CallLogFragment;
.source "CallLogSearchFragment.java"


# instance fields
.field private mQueryString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public fetchCalls()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 57
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mQueryString:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->setQueryString(Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    .line 82
    const/4 v1, -0x1

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(I)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogSearchFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(Ljava/lang/String;)V

    goto :goto_0
.end method
