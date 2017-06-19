.class public abstract Landroid/support/design/widget/Snackbar$Callback;
.super Ljava/lang/Object;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .locals 0
    .param p1, "snackbar"    # Landroid/support/design/widget/Snackbar;
    .param p2, "event"    # I

    .prologue
    .line 112
    return-void
.end method

.method public onShown(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .param p1, "snackbar"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 122
    return-void
.end method
