.class public Lcom/oneplus/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;
.super Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/dialer/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandleMmiAccountSelectedCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInput:Ljava/lang/String;


# virtual methods
.method public onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2
    .param p1, "selectedAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;->mInput:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/dialer/util/TelecomUtil;->handleMmi(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z

    .line 137
    return-void
.end method
