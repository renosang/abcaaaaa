.class public interface abstract Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
.super Ljava/lang/Object;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoCallUi"
.end annotation


# virtual methods
.method public abstract cleanupSurfaces()V
.end method

.method public abstract getDisplayVideoSurface()Landroid/view/Surface;
.end method

.method public abstract getPreviewPhotoView()Landroid/widget/ImageView;
.end method

.method public abstract getPreviewSize()Landroid/graphics/Point;
.end method

.method public abstract getPreviewVideoSurface()Landroid/view/Surface;
.end method

.method public abstract getScreenSize()Landroid/graphics/Point;
.end method

.method public abstract hideVideoUi()V
.end method

.method public abstract isDisplayVideoSurfaceCreated()Z
.end method

.method public abstract isPreviewVideoSurfaceCreated()Z
.end method

.method public abstract setDisplayVideoSize(II)V
.end method

.method public abstract setPreviewRotation(I)V
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract setPreviewSurfaceSize(II)V
.end method

.method public abstract showOutgoingVideoView(Z)V
.end method

.method public abstract showVideoViews(ZZ)V
.end method
