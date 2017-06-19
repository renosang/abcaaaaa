.class Lcom/android/incallui/Call$2;
.super Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/Call;

    .prologue
    .line 978
    iput-object p1, p0, Lcom/android/incallui/Call$2;->this$0:Lcom/android/incallui/Call;

    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtListenerBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveCallTransferResponse(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receiveCallTransferResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    return-void
.end method
