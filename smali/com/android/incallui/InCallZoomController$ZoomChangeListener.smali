.class Lcom/android/incallui/InCallZoomController$ZoomChangeListener;
.super Ljava/lang/Object;
.source "InCallZoomController.java"

# interfaces
.implements Lcom/android/incallui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;

.field final synthetic this$0:Lcom/android/incallui/InCallZoomController;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallZoomController;Landroid/telecom/InCallService$VideoCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallZoomController;
    .param p2, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;->this$0:Lcom/android/incallui/InCallZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 73
    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 79
    const-string/jumbo v0, "this"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onZoomValueChanged:  index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;->this$0:Lcom/android/incallui/InCallZoomController;

    invoke-static {v0, p1}, Lcom/android/incallui/InCallZoomController;->-set0(Lcom/android/incallui/InCallZoomController;I)I

    .line 81
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    iget-object v1, p0, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;->this$0:Lcom/android/incallui/InCallZoomController;

    invoke-static {v1}, Lcom/android/incallui/InCallZoomController;->-get0(Lcom/android/incallui/InCallZoomController;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setZoom(F)V

    .line 78
    return-void
.end method
