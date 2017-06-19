.class public Lcom/android/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;
.super Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandleMmiAccountSelectedCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/android/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;->mInput:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2
    .param p1, "selectedAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;->mInput:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/dialer/util/TelecomUtil;->handleMmi(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z

    .line 140
    return-void
.end method
