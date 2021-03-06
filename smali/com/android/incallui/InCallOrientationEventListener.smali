.class public Lcom/android/incallui/InCallOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "InCallOrientationEventListener.java"


# static fields
.field public static FULL_SENSOR_SCREEN_ORIENTATION:I

.field public static NO_SENSOR_SCREEN_ORIENTATION:I

.field private static ROTATION_THRESHOLD:I

.field public static SCREEN_ORIENTATION_0:I

.field public static SCREEN_ORIENTATION_180:I

.field public static SCREEN_ORIENTATION_270:I

.field public static SCREEN_ORIENTATION_360:I

.field public static SCREEN_ORIENTATION_90:I

.field private static SCREEN_ORIENTATION_UNKNOWN:I

.field private static sCurrentOrientation:I


# instance fields
.field private mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    .line 37
    const/16 v0, 0x5a

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_90:I

    .line 38
    const/16 v0, 0xb4

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_180:I

    .line 39
    const/16 v0, 0x10e

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_270:I

    .line 40
    const/16 v0, 0x168

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_360:I

    .line 42
    sput v1, Lcom/android/incallui/InCallOrientationEventListener;->FULL_SENSOR_SCREEN_ORIENTATION:I

    .line 46
    const/4 v0, 0x5

    .line 45
    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->NO_SENSOR_SCREEN_ORIENTATION:I

    .line 54
    const/4 v0, -0x1

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_UNKNOWN:I

    .line 58
    sput v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    .line 64
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    .line 67
    return-void
.end method

.method private static isInLeftRange(III)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "center"    # I
    .param p2, "threshold"    # I

    .prologue
    .line 172
    sub-int v0, p1, p2

    invoke-static {p0, v0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isInRightRange(III)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "center"    # I
    .param p2, "threshold"    # I

    .prologue
    .line 176
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isWithinRange(III)Z
    .locals 1
    .param p0, "value"    # I
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 164
    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isWithinThreshold(III)Z
    .locals 2
    .param p0, "value"    # I
    .param p1, "center"    # I
    .param p2, "threshold"    # I

    .prologue
    .line 168
    sub-int v0, p1, p2

    add-int v1, p1, p2

    invoke-static {p0, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private toScreenOrientation(I)I
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 150
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_360:I

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isInLeftRange(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isInRightRange(III)Z

    move-result v0

    .line 150
    if-eqz v0, :cond_1

    .line 152
    :cond_0
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_0:I

    return v0

    .line 153
    :cond_1
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_90:I

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_270:I

    return v0

    .line 155
    :cond_2
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_180:I

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_180:I

    return v0

    .line 157
    :cond_3
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_270:I

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->ROTATION_THRESHOLD:I

    invoke-static {p1, v0, v1}, Lcom/android/incallui/InCallOrientationEventListener;->isWithinThreshold(III)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_90:I

    return v0

    .line 160
    :cond_4
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_UNKNOWN:I

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 125
    const-string/jumbo v0, "enable: Orientation listener is already disabled. Ignoring..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    .line 130
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 123
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallOrientationEventListener;->enable(Z)V

    .line 116
    return-void
.end method

.method public enable(Z)V
    .locals 2
    .param p1, "notify"    # Z

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "enable: Orientation listener is already enabled. Ignoring..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    return-void

    .line 106
    :cond_0
    invoke-super {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallOrientationEventListener;->mEnabled:Z

    .line 108
    if-eqz p1, :cond_1

    .line 109
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    .line 100
    :cond_1
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 83
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 84
    return-void

    .line 87
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallOrientationEventListener;->toScreenOrientation(I)I

    move-result v0

    .line 89
    .local v0, "orientation":I
    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->SCREEN_ORIENTATION_UNKNOWN:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    if-eq v1, v0, :cond_1

    .line 90
    sput v0, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    .line 91
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    sget v2, Lcom/android/incallui/InCallOrientationEventListener;->sCurrentOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->onDeviceOrientationChange(I)V

    .line 82
    :cond_1
    return-void
.end method
