.class public interface abstract Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCallsQuery;
.super Ljava/lang/Object;
.source "CallLogNotificationsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogNotificationsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NewCallsQuery"
.end annotation


# virtual methods
.method public abstract query(I)Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/calllog/CallLogNotificationsHelper$NewCall;",
            ">;"
        }
    .end annotation
.end method
