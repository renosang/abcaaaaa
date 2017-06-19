.class public Lcom/android/incallui/InCallVideoCallCallbackNotifier;
.super Ljava/lang/Object;
.source "InCallVideoCallCallbackNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;,
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;,
        Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;


# instance fields
.field private mCallSessionEvent:I

.field private final mSessionModificationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    invoke-direct {v0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;-><init>()V

    .line 33
    sput-object v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const v1, 0x3f666666    # 0.9f

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mCallSessionEvent:I

    .line 67
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->sInstance:Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    return-object v0
.end method


# virtual methods
.method public addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .prologue
    .line 76
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .prologue
    .line 134
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    .param p2, "notify"    # Z

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 112
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mCallSessionEvent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 113
    iget v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mCallSessionEvent:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callSessionEvent(I)V

    .line 108
    :cond_0
    return-void
.end method

.method public callDataUsageChanged(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 240
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 241
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallDataUsageChange(J)V

    goto :goto_0

    .line 239
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method

.method public callSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mCallSessionEvent:I

    .line 179
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 180
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    iget v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mCallSessionEvent:I

    invoke-interface {v0, v2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onCallSessionEvent(I)V

    goto :goto_0

    .line 177
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method

.method public cameraDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .line 230
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onCameraDimensionsChange(Lcom/android/incallui/Call;II)V

    goto :goto_0

    .line 228
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    :cond_0
    return-void
.end method

.method public peerDimensionsChanged(Lcom/android/incallui/Call;II)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .line 217
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;->onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V

    goto :goto_0

    .line 215
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
    :cond_0
    return-void
.end method

.method public removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSurfaceChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    return-void
.end method

.method public removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    return-void
.end method

.method public upgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 167
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 168
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoFail(ILcom/android/incallui/Call;)V

    goto :goto_0

    .line 166
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public upgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upgradeToVideoRequest call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new video state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mSessionModificationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;

    .line 157
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;->onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 154
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
    :cond_0
    return-void
.end method

.method public videoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoQuality"    # I

    .prologue
    .line 203
    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->mVideoEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;

    .line 204
    .local v0, "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;->onVideoQualityChanged(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 202
    .end local v0    # "listener":Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;
    :cond_0
    return-void
.end method
