.class public Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactLookupCallback"
.end annotation


# instance fields
.field private final mCallCardPresenter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/incallui/CallCardPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsPrimary:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/CallCardPresenter;Z)V
    .locals 1
    .param p1, "callCardPresenter"    # Lcom/android/incallui/CallCardPresenter;
    .param p2, "isPrimary"    # Z

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    .line 142
    iput-boolean p2, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mIsPrimary:Z

    .line 140
    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    .line 148
    .local v0, "presenter":Lcom/android/incallui/CallCardPresenter;
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "presenter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz v0, :cond_0

    .line 150
    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mIsPrimary:Z

    invoke-static {v0, p1, p2, v1}, Lcom/android/incallui/CallCardPresenter;->-wrap0(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;->mCallCardPresenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    .line 157
    .local v0, "presenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v0, :cond_0

    .line 158
    invoke-static {v0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->-wrap2(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 155
    :cond_0
    return-void
.end method
