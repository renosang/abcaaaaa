.class public interface abstract Lcom/android/phone/common/IOPTelecomService;
.super Ljava/lang/Object;
.source "IOPTelecomService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/IOPTelecomService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isCdmaDialing()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract shouldStartUIForContact()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
