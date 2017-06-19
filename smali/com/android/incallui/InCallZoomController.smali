.class public Lcom/android/incallui/InCallZoomController;
.super Ljava/lang/Object;
.source "InCallZoomController.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallZoomController$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static sInCallZoomController:Lcom/android/incallui/InCallZoomController;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCameraId:Ljava/lang/String;

.field mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private mZoomIndex:I


# direct methods
.method static synthetic -get0(Lcom/android/incallui/InCallZoomController;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/incallui/InCallZoomController;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    return p1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    .line 113
    return-void
.end method

.method private dismissAlertDialog()V
    .locals 3

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissAlertDialog: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallZoomController;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallZoomController;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallZoomController;->sInCallZoomController:Lcom/android/incallui/InCallZoomController;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/android/incallui/InCallZoomController;

    invoke-direct {v0}, Lcom/android/incallui/InCallZoomController;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallZoomController;->sInCallZoomController:Lcom/android/incallui/InCallZoomController;

    .line 107
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallZoomController;->sInCallZoomController:Lcom/android/incallui/InCallZoomController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initZoomControl(Lcom/android/incallui/ZoomControlBar;I)V
    .locals 1
    .param p0, "zoomControl"    # Lcom/android/incallui/ZoomControlBar;
    .param p1, "zoomIndex"    # I

    .prologue
    .line 188
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/incallui/ZoomControlBar;->setZoomMax(I)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/incallui/ZoomControlBar;->setZoomIndex(I)V

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/ZoomControlBar;->setEnabled(Z)V

    .line 187
    return-void
.end method

.method private isCameraZoomSupported()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 198
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v3

    .line 200
    .local v3, "inCallCameraManager":Lcom/android/incallui/InCallCameraManager;
    const/high16 v0, 0x3f800000    # 1.0f

    .line 202
    .local v0, "CAMERA_ZOOM_NOT_SUPPORTED":F
    iget-object v4, p0, Lcom/android/incallui/InCallZoomController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 203
    invoke-virtual {v3}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v6

    .line 202
    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 204
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v1, :cond_0

    .line 205
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 204
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 206
    const/high16 v6, 0x3f800000    # 1.0f

    .line 204
    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0

    .line 207
    .end local v0    # "CAMERA_ZOOM_NOT_SUPPORTED":F
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "inCallCameraManager":Lcom/android/incallui/InCallCameraManager;
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCameraZoomSupported: Failed to retrieve Max Zoom, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    return v5
.end method

.method private static setLayoutParams(Landroid/app/AlertDialog;)V
    .locals 3
    .param p0, "alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 148
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 149
    .local v1, "windowLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3f19999a    # 0.6f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 151
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 143
    return-void
.end method


# virtual methods
.method public onCameraEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCameraEnabled: - cameraId -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iput-object p1, p0, Lcom/android/incallui/InCallZoomController;->mCameraId:Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    .line 222
    invoke-direct {p0}, Lcom/android/incallui/InCallZoomController;->dismissAlertDialog()V

    .line 217
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onIncomingCall - Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "oldState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "newState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/android/incallui/InCallZoomController;->dismissAlertDialog()V

    .line 245
    return-void
.end method

.method public onPreviewSurfaceClicked(Landroid/telecom/InCallService$VideoCall;)V
    .locals 7
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreviewSurfaceClicked: VideoCall - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallZoomController;->isCameraZoomSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 169
    iget-object v4, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    const/4 v5, 0x2

    .line 168
    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 170
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 171
    const v5, 0x7f0400d6

    const/4 v6, 0x0

    .line 170
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 173
    .local v3, "zoomControlView":Landroid/view/View;
    const v4, 0x7f0e01f3

    .line 172
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ZoomControlBar;

    .line 174
    .local v2, "zoomControl":Lcom/android/incallui/ZoomControlBar;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 176
    iget-object v4, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 177
    iget-object v4, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-static {v4}, Lcom/android/incallui/InCallZoomController;->setLayoutParams(Landroid/app/AlertDialog;)V

    .line 178
    new-instance v4, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;

    invoke-direct {v4, p0, p1}, Lcom/android/incallui/InCallZoomController$ZoomChangeListener;-><init>(Lcom/android/incallui/InCallZoomController;Landroid/telecom/InCallService$VideoCall;)V

    invoke-virtual {v2, v4}, Lcom/android/incallui/ZoomControlBar;->setOnZoomChangeListener(Lcom/android/incallui/ZoomControl$OnZoomChangedListener;)V

    .line 179
    iget v4, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    invoke-static {v2, v4}, Lcom/android/incallui/InCallZoomController;->initZoomControl(Lcom/android/incallui/ZoomControlBar;I)V

    .line 180
    iget-object v4, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-void

    .line 163
    .end local v0    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "zoomControl":Lcom/android/incallui/ZoomControlBar;
    .end local v3    # "zoomControlView":Landroid/view/View;
    :cond_0
    const-string/jumbo v4, "onPreviewSurfaceClicked: VideoCall is null or Zoom not supported "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreviewSurfaceClicked: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/incallui/InCallZoomController;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 122
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/incallui/InCallZoomController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 119
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 131
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mContext:Landroid/content/Context;

    .line 132
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mCameraId:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/InCallZoomController;->mZoomIndex:I

    .line 134
    iget-object v0, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 135
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 136
    iput-object v1, p0, Lcom/android/incallui/InCallZoomController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 129
    return-void
.end method
