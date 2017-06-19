.class Lcom/android/incallui/VideoPauseController$CallContext;
.super Ljava/lang/Object;
.source "VideoPauseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoPauseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallContext"
.end annotation


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mState:I

.field private mVideoState:I

.field final synthetic this$0:Lcom/android/incallui/VideoPauseController;


# direct methods
.method public constructor <init>(Lcom/android/incallui/VideoPauseController;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/VideoPauseController;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/incallui/VideoPauseController$CallContext;->this$0:Lcom/android/incallui/VideoPauseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    .line 41
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, p2}, Lcom/android/incallui/VideoPauseController$CallContext;->update(Lcom/android/incallui/Call;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    return v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    const-string/jumbo v0, "CallContext {CallId=%s, State=%s, VideoState=%d}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    iget-object v2, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 60
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    .line 47
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    .line 48
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    .line 45
    return-void
.end method
