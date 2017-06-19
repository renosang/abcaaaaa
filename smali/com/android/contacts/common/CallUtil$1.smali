.class final Lcom/android/contacts/common/CallUtil$1;
.super Ljava/lang/Object;
.source "CallUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/CallUtil;->createVideoCallingDialog(ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-static {}, Lcom/android/contacts/common/CallUtil;->-get0()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lcom/android/contacts/common/CallUtil;->-get0()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 295
    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->-set0(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 292
    :cond_0
    return-void
.end method
