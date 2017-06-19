.class public Lcom/oneplus/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;
.super Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/dialer/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandleAdnEntryAccountSelectedCallback"
.end annotation


# instance fields
.field private final mCookie:Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

.field private final mQueryHandler:Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;


# virtual methods
.method public onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3
    .param p1, "selectedAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 120
    iget-object v1, p0, Lcom/oneplus/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/oneplus/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mQueryHandler:Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;

    iget-object v2, p0, Lcom/oneplus/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mCookie:Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    invoke-static {v1, v2, v0}, Lcom/oneplus/dialer/SpecialCharSequenceMgr;->-wrap0(Lcom/oneplus/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/oneplus/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V

    .line 119
    return-void
.end method
