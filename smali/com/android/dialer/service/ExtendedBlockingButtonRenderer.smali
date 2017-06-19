.class public interface abstract Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;
.super Ljava/lang/Object;
.source "ExtendedBlockingButtonRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;,
        Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;
    }
.end annotation


# virtual methods
.method public abstract render(Landroid/view/ViewStub;)V
.end method

.method public abstract setViewHolderInfo(Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$ViewHolderInfo;)V
.end method

.method public abstract updatePhotoAndLabelIfNecessary(Ljava/lang/String;Ljava/lang/String;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;)V
.end method
