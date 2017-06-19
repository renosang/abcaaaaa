.class public Lcom/android/dialer/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public accountHandle:Landroid/telecom/PhoneAccountHandle;

.field public accountIcon:Landroid/graphics/drawable/Drawable;

.field public callTypes:[I

.field public contactUri:Landroid/net/Uri;

.field public contactUserType:J

.field public countryIso:Ljava/lang/String;

.field public dataUsage:Ljava/lang/Long;

.field public date:J

.field public displayNumber:Ljava/lang/String;

.field public duration:J

.field public features:I

.field public formattedNumber:Ljava/lang/CharSequence;

.field public geocode:Ljava/lang/String;

.field public isRead:Z

.field public isVoicemail:Z

.field public nameAlternative:Ljava/lang/CharSequence;

.field public nameDisplayOrder:I

.field public namePrimary:Ljava/lang/CharSequence;

.field public number:Ljava/lang/CharSequence;

.field public numberLabel:Ljava/lang/CharSequence;

.field public numberPresentation:I

.field public numberType:I

.field public objectId:Ljava/lang/String;

.field public photoUri:Landroid/net/Uri;

.field public postDialDigits:Ljava/lang/String;

.field public sourceType:I

.field public transcription:Ljava/lang/String;

.field public viaNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "numberPresentation"    # I
    .param p4, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p5, "postDialDigits"    # Ljava/lang/CharSequence;
    .param p6, "isVoicemail"    # Z

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/PhoneCallDetails;->isRead:Z

    .line 134
    iput-object p2, p0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 135
    iput p3, p0, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    .line 136
    iput-object p4, p0, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 137
    iput-boolean p6, p0, Lcom/android/dialer/PhoneCallDetails;->isVoicemail:Z

    .line 138
    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->postDialDigits:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 142
    iget v2, p0, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    .line 143
    iget-object v3, p0, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 144
    iget-object v4, p0, Lcom/android/dialer/PhoneCallDetails;->postDialDigits:Ljava/lang/String;

    .line 145
    iget-boolean v5, p0, Lcom/android/dialer/PhoneCallDetails;->isVoicemail:Z

    move-object v0, p1

    .line 139
    invoke-static/range {v0 .. v5}, Lcom/android/dialer/calllog/PhoneNumberDisplayUtil;->getDisplayNumber(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->displayNumber:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public static createAccountLabelDescription(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "viaNumber"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "accountLabel"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 180
    const v3, 0x7f0d02c1

    .line 179
    invoke-static {p0, v3, p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 181
    .local v2, "viaNumberLabel":Ljava/lang/CharSequence;
    if-nez v2, :cond_3

    .end local p1    # "viaNumber":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 173
    .end local v2    # "viaNumberLabel":Ljava/lang/CharSequence;
    .restart local p1    # "viaNumber":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 174
    aput-object p2, v3, v5

    aput-object p1, v3, v4

    .line 173
    const v4, 0x7f0d02c3

    invoke-virtual {p0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "msg":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    .line 177
    .local v0, "accountNumberLabel":Ljava/lang/CharSequence;
    if-nez v0, :cond_2

    .end local v1    # "msg":Ljava/lang/String;
    :goto_1
    return-object v1

    .restart local v1    # "msg":Ljava/lang/String;
    :cond_2
    move-object v1, v0

    goto :goto_1

    .end local v0    # "accountNumberLabel":Ljava/lang/CharSequence;
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v2    # "viaNumberLabel":Ljava/lang/CharSequence;
    :cond_3
    move-object p1, v2

    .line 181
    goto :goto_0

    .line 182
    .end local v2    # "viaNumberLabel":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 184
    const v3, 0x7f0d02c0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 184
    aput-object p2, v4, v5

    .line 183
    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 186
    :cond_5
    const-string/jumbo v3, ""

    return-object v3
.end method


# virtual methods
.method public getPreferredName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 155
    iget v0, p0, Lcom/android/dialer/PhoneCallDetails;->nameDisplayOrder:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->nameAlternative:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 155
    if-eqz v0, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->namePrimary:Ljava/lang/CharSequence;

    return-object v0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/PhoneCallDetails;->nameAlternative:Ljava/lang/CharSequence;

    return-object v0
.end method
