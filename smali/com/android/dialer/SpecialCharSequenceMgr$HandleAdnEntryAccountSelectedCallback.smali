.class public Lcom/android/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;
.super Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandleAdnEntryAccountSelectedCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCookie:Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

.field private final mQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "queryHandler"    # Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;
    .param p3, "cookie"    # Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    .line 117
    iput-object p3, p0, Lcom/android/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mCookie:Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    .line 114
    return-void
.end method


# virtual methods
.method public onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3
    .param p1, "selectedAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/dialer/util/TelecomUtil;->getAdnUriForPhoneAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v0

    .line 124
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mQueryHandler:Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;

    iget-object v2, p0, Lcom/android/dialer/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mCookie:Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;

    invoke-static {v1, v2, v0}, Lcom/android/dialer/SpecialCharSequenceMgr;->-wrap0(Lcom/android/dialer/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V

    .line 122
    return-void
.end method
