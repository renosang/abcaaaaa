.class Lcom/android/incallui/oneplus/record/CallTimer$CallTimerCallback;
.super Ljava/lang/Object;
.source "CallTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/record/CallTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallTimerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/oneplus/record/CallTimer;


# direct methods
.method private constructor <init>(Lcom/android/incallui/oneplus/record/CallTimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/record/CallTimer;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/incallui/oneplus/record/CallTimer$CallTimerCallback;->this$0:Lcom/android/incallui/oneplus/record/CallTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/oneplus/record/CallTimer;Lcom/android/incallui/oneplus/record/CallTimer$CallTimerCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/record/CallTimer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/record/CallTimer$CallTimerCallback;-><init>(Lcom/android/incallui/oneplus/record/CallTimer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/CallTimer$CallTimerCallback;->this$0:Lcom/android/incallui/oneplus/record/CallTimer;

    invoke-static {v0}, Lcom/android/incallui/oneplus/record/CallTimer;->-wrap0(Lcom/android/incallui/oneplus/record/CallTimer;)V

    .line 83
    return-void
.end method
