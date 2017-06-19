.class public Lcom/android/contacts/common/CallUtil;
.super Ljava/lang/Object;
.source "CallUtil.java"


# static fields
.field private static final CAPABILITY_EMERGENCY_VIDEO_CALLING:I = 0x200

.field public static final CONFIG_VIDEO_CALLING:Ljava/lang/String; = "config_video_calling"

.field public static final DIALOG_VIDEO_CALLING:Ljava/lang/String; = "display_video_call_dialog"

.field public static final DISABLE_VIDEO_CALLING:I = 0x2

.field public static final ENABLE_VIDEO_CALLING:I = 0x1

.field private static final MAX_PHONE_NUM:I = 0x7

.field public static final VIDEO_CALLING_DISABLED:I = 0x0

.field public static final VIDEO_CALLING_ENABLED:I = 0x1

.field public static final VIDEO_CALLING_PRESENCE:I = 0x2

.field private static mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/CallUtil;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/contacts/common/CallUtil;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/CallUtil;->mAlertDialog:Landroid/app/AlertDialog;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVideoCallingDialog(ZLandroid/content/Context;)V
    .locals 10
    .param p0, "isChecked"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 282
    const-string/jumbo v7, "display_video_call_dialog"

    .line 281
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 283
    .local v5, "value":I
    sget-object v6, Lcom/android/contacts/common/CallUtil;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_0

    if-ne v5, v8, :cond_0

    .line 284
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 285
    const v7, 0x7f040062

    .line 284
    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 287
    .local v3, "linearLayout":Landroid/view/View;
    const v6, 0x7f0e0163

    .line 286
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 289
    .local v2, "chkBox":Landroid/widget/CheckBox;
    const v6, 0x7f0e0162

    .line 288
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 290
    .local v0, "btn":Landroid/widget/Button;
    new-instance v6, Lcom/android/contacts/common/CallUtil$1;

    invoke-direct {v6}, Lcom/android/contacts/common/CallUtil$1;-><init>()V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    const v6, 0x7f0e0160

    .line 300
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 303
    .local v4, "txtMessage":Landroid/widget/TextView;
    if-eqz p0, :cond_1

    const v6, 0x7f0d00e8

    .line 302
    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 305
    new-instance v6, Lcom/android/contacts/common/CallUtil$2;

    invoke-direct {v6, p1}, Lcom/android/contacts/common/CallUtil$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 316
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 319
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/android/contacts/common/CallUtil;->mAlertDialog:Landroid/app/AlertDialog;

    .line 280
    .end local v0    # "btn":Landroid/widget/Button;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "chkBox":Landroid/widget/CheckBox;
    .end local v3    # "linearLayout":Landroid/view/View;
    .end local v4    # "txtMessage":Landroid/widget/TextView;
    :cond_0
    return-void

    .line 303
    .restart local v0    # "btn":Landroid/widget/Button;
    .restart local v2    # "chkBox":Landroid/widget/CheckBox;
    .restart local v3    # "linearLayout":Landroid/view/View;
    .restart local v4    # "txtMessage":Landroid/widget/TextView;
    :cond_1
    const v6, 0x7f0d00e9

    goto :goto_0
.end method

.method public static getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-static {p0}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string/jumbo v0, "sip"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    const-string/jumbo v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCallWithSubjectIntent(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callSubject"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string/jumbo v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    :cond_0
    return-object v0
.end method

.method public static getVideoCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    invoke-static {p0}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    .line 124
    const/4 v2, 0x3

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string/jumbo v1, "com.android.phone.CALL_ORIGIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_0
    return-object v0
.end method

.method public static getVideoCallingAvailability(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 160
    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v6}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 161
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isVideoCompatible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    const-string/jumbo v6, "telecom"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 164
    check-cast v4, Landroid/telecom/TelecomManager;

    .line 166
    .local v4, "telecommMgr":Landroid/telecom/TelecomManager;
    if-nez v4, :cond_1

    .line 167
    return v7

    .line 162
    .end local v4    # "telecommMgr":Landroid/telecom/TelecomManager;
    :cond_0
    return v7

    .line 170
    .restart local v4    # "telecommMgr":Landroid/telecom/TelecomManager;
    :cond_1
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 171
    .local v3, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "accountHandle$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 172
    .local v1, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 173
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_2

    .line 174
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 175
    const/16 v6, 0x200

    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v6

    .line 174
    if-eqz v6, :cond_2

    .line 177
    :cond_3
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isVideoPresenceCompatible()Z

    move-result v6

    if-nez v6, :cond_4

    .line 178
    const/4 v6, 0x1

    return v6

    .line 181
    :cond_4
    const/4 v5, 0x1

    .line 183
    .local v5, "videoCapabilities":I
    const/16 v6, 0x100

    .line 182
    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 184
    const/4 v5, 0x3

    .line 186
    :cond_5
    return v5

    .line 190
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "videoCapabilities":I
    :cond_6
    return v7
.end method

.method public static getVoicemailUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 146
    const-string/jumbo v0, "voicemail"

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isCallWithSubjectSupported(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 228
    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v5}, Lcom/android/contacts/common/util/PermissionsUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 229
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isCallSubjectCompatible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    const-string/jumbo v5, "telecom"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 232
    check-cast v4, Landroid/telecom/TelecomManager;

    .line 234
    .local v4, "telecommMgr":Landroid/telecom/TelecomManager;
    if-nez v4, :cond_1

    .line 235
    return v6

    .line 230
    .end local v4    # "telecommMgr":Landroid/telecom/TelecomManager;
    :cond_0
    return v6

    .line 238
    .restart local v4    # "telecommMgr":Landroid/telecom/TelecomManager;
    :cond_1
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 239
    .local v3, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "accountHandle$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 240
    .local v1, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 241
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_2

    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 242
    const/4 v5, 0x1

    return v5

    .line 245
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_3
    return v6
.end method

.method public static isVideoCallNumValid(Ljava/lang/String;)Z
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 257
    if-nez p0, :cond_0

    .line 258
    return v3

    .line 260
    :cond_0
    const-string/jumbo v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    :cond_1
    return v3

    .line 261
    :cond_2
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 260
    if-nez v1, :cond_1

    .line 261
    const-string/jumbo v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 260
    if-nez v1, :cond_1

    .line 261
    const-string/jumbo v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 260
    if-nez v1, :cond_1

    .line 264
    invoke-static {p0}, Lcom/android/contacts/common/util/PhoneNumberHelper;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "norNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    .line 266
    return v3

    .line 268
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static isVideoEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-static {p0}, Lcom/android/contacts/common/CallUtil;->getVideoCallingAvailability(Landroid/content/Context;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 203
    .local v0, "hasVideoCap":Z
    :cond_0
    invoke-static {p0, v0}, Lcom/android/contacts/common/CallUtil;->saveVideoCallConfig(Landroid/content/Context;Z)V

    .line 204
    return v0
.end method

.method public static saveVideoCallConfig(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 213
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 215
    const-string/jumbo v2, "config_video_calling"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 214
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    :cond_0
    return-void

    .line 215
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method
