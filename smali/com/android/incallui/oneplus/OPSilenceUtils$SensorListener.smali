.class Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;
.super Ljava/lang/Object;
.source "OPSilenceUtils.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/OPSilenceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;


# direct methods
.method private constructor <init>(Lcom/android/incallui/oneplus/OPSilenceUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPSilenceUtils;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/oneplus/OPSilenceUtils;Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPSilenceUtils;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;-><init>(Lcom/android/incallui/oneplus/OPSilenceUtils;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x2

    const v6, -0x3ed317f6

    const/high16 v5, -0x3f000000    # -8.0f

    .line 97
    const-string/jumbo v2, "OPSilenceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSensorChanged event.values[2]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isScreenUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPSilenceUtils;->-get0(Lcom/android/incallui/oneplus/OPSilenceUtils;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v7

    .line 105
    .local v1, "zValue":F
    const v0, -0x3ed317f6

    .line 107
    .local v0, "ignoreValue":F
    cmpg-float v2, v1, v5

    if-gez v2, :cond_1

    cmpl-float v2, v1, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-static {v2}, Lcom/android/incallui/oneplus/OPSilenceUtils;->-get0(Lcom/android/incallui/oneplus/OPSilenceUtils;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-static {v2}, Lcom/android/incallui/oneplus/OPSilenceUtils;->-wrap1(Lcom/android/incallui/oneplus/OPSilenceUtils;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-static {v2}, Lcom/android/incallui/oneplus/OPSilenceUtils;->-get1(Lcom/android/incallui/oneplus/OPSilenceUtils;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-static {v2}, Lcom/android/incallui/oneplus/OPSilenceUtils;->-wrap0(Lcom/android/incallui/oneplus/OPSilenceUtils;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/incallui/oneplus/OPSilenceUtils;->-set0(Lcom/android/incallui/oneplus/OPSilenceUtils;Z)Z

    goto :goto_0

    .line 115
    :cond_3
    cmpl-float v2, v1, v5

    if-gtz v2, :cond_4

    cmpg-float v2, v1, v6

    if-gez v2, :cond_0

    .line 116
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPSilenceUtils$SensorListener;->this$0:Lcom/android/incallui/oneplus/OPSilenceUtils;

    invoke-static {v2}, Lcom/android/incallui/oneplus/OPSilenceUtils;->-wrap0(Lcom/android/incallui/oneplus/OPSilenceUtils;)V

    goto :goto_0
.end method
