.class public Lcom/android/contacts/common/util/ContactDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDisplayUtils.java"


# static fields
.field public static final INTERACTION_CALL:I = 0x1

.field public static final INTERACTION_SMS:I = 0x2

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/contacts/common/util/ContactDisplayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/ContactDisplayUtils;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabelForCallOrSms(Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "type"    # Ljava/lang/Integer;
    .param p1, "customLabel"    # Ljava/lang/CharSequence;
    .param p2, "interactionType"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 74
    .end local p1    # "customLabel":Ljava/lang/CharSequence;
    :cond_0
    return-object p1

    .line 79
    .restart local p1    # "customLabel":Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 80
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getSmsLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    .line 89
    .local v0, "resId":I
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 82
    .end local v0    # "resId":I
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPhoneLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    .line 83
    .restart local v0    # "resId":I
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    .line 84
    sget-object v1, Lcom/android/contacts/common/util/ContactDisplayUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Un-recognized interaction type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    const-string/jumbo v3, ". Defaulting to ContactDisplayUtils.INTERACTION_CALL."

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPhoneLabelResourceId(Ljava/lang/Integer;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    const v1, 0x7f0d00f3

    .line 100
    if-nez p0, :cond_0

    return v1

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    const v0, 0x7f0d00ec

    return v0

    .line 103
    :pswitch_0
    const v0, 0x7f0d00ed

    return v0

    .line 105
    :pswitch_1
    const v0, 0x7f0d00ee

    return v0

    .line 107
    :pswitch_2
    const v0, 0x7f0d00ef

    return v0

    .line 109
    :pswitch_3
    const v0, 0x7f0d00f0

    return v0

    .line 111
    :pswitch_4
    const v0, 0x7f0d00f1

    return v0

    .line 113
    :pswitch_5
    const v0, 0x7f0d00f2

    return v0

    .line 115
    :pswitch_6
    return v1

    .line 117
    :pswitch_7
    const v0, 0x7f0d00f4

    return v0

    .line 119
    :pswitch_8
    const v0, 0x7f0d00f5

    return v0

    .line 121
    :pswitch_9
    const v0, 0x7f0d00f6

    return v0

    .line 123
    :pswitch_a
    const v0, 0x7f0d00f7

    return v0

    .line 125
    :pswitch_b
    const v0, 0x7f0d00f8

    return v0

    .line 127
    :pswitch_c
    const v0, 0x7f0d00f9

    return v0

    .line 129
    :pswitch_d
    const v0, 0x7f0d00fa

    return v0

    .line 131
    :pswitch_e
    const v0, 0x7f0d00fb

    return v0

    .line 133
    :pswitch_f
    const v0, 0x7f0d00fc

    return v0

    .line 135
    :pswitch_10
    const v0, 0x7f0d00fd

    return v0

    .line 137
    :pswitch_11
    const v0, 0x7f0d00fe

    return v0

    .line 139
    :pswitch_12
    const v0, 0x7f0d00ff

    return v0

    .line 141
    :pswitch_13
    const v0, 0x7f0d0100

    return v0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;
    .locals 2
    .param p0, "namePrimary"    # Ljava/lang/String;
    .param p1, "nameAlternative"    # Ljava/lang/String;
    .param p2, "contactsPreferences"    # Lcom/android/contacts/common/preference/ContactsPreferences;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    if-nez p2, :cond_1

    .line 259
    if-eqz p0, :cond_0

    .end local p0    # "namePrimary":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "namePrimary":Ljava/lang/String;
    :cond_0
    move-object p0, p1

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 262
    return-object p0

    .line 265
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    :cond_3
    return-object p0

    .line 267
    :cond_4
    return-object p1
.end method

.method public static getPreferredSortName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;
    .locals 2
    .param p0, "namePrimary"    # Ljava/lang/String;
    .param p1, "nameAlternative"    # Ljava/lang/String;
    .param p2, "contactsPreferences"    # Lcom/android/contacts/common/preference/ContactsPreferences;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 285
    if-nez p2, :cond_1

    .line 286
    if-eqz p0, :cond_0

    .end local p0    # "namePrimary":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "namePrimary":Ljava/lang/String;
    :cond_0
    move-object p0, p1

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 290
    return-object p0

    .line 293
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 298
    :cond_3
    return-object p0

    .line 295
    :cond_4
    return-object p1
.end method

.method public static getSmsLabelResourceId(Ljava/lang/Integer;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    const v1, 0x7f0d0109

    .line 155
    if-nez p0, :cond_0

    return v1

    .line 156
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    const v0, 0x7f0d0102

    return v0

    .line 158
    :pswitch_0
    const v0, 0x7f0d0103

    return v0

    .line 160
    :pswitch_1
    const v0, 0x7f0d0104

    return v0

    .line 162
    :pswitch_2
    const v0, 0x7f0d0105

    return v0

    .line 164
    :pswitch_3
    const v0, 0x7f0d0106

    return v0

    .line 166
    :pswitch_4
    const v0, 0x7f0d0107

    return v0

    .line 168
    :pswitch_5
    const v0, 0x7f0d0108

    return v0

    .line 170
    :pswitch_6
    return v1

    .line 172
    :pswitch_7
    const v0, 0x7f0d010a

    return v0

    .line 174
    :pswitch_8
    const v0, 0x7f0d010b

    return v0

    .line 176
    :pswitch_9
    const v0, 0x7f0d010c

    return v0

    .line 178
    :pswitch_a
    const v0, 0x7f0d010d

    return v0

    .line 180
    :pswitch_b
    const v0, 0x7f0d010e

    return v0

    .line 182
    :pswitch_c
    const v0, 0x7f0d010f

    return v0

    .line 184
    :pswitch_d
    const v0, 0x7f0d0110

    return v0

    .line 186
    :pswitch_e
    const v0, 0x7f0d0111

    return v0

    .line 188
    :pswitch_f
    const v0, 0x7f0d0112

    return v0

    .line 190
    :pswitch_10
    const v0, 0x7f0d0113

    return v0

    .line 192
    :pswitch_11
    const v0, 0x7f0d0114

    return v0

    .line 194
    :pswitch_12
    const v0, 0x7f0d0115

    return v0

    .line 196
    :pswitch_13
    const v0, 0x7f0d0116

    return v0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 217
    if-nez p0, :cond_0

    .line 218
    return-object v4

    .line 220
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    .local v1, "spannable":Landroid/text/Spannable;
    if-nez p1, :cond_1

    const/4 v2, -0x1

    .line 222
    .local v2, "start":I
    :goto_0
    if-ltz v2, :cond_2

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    .line 224
    .local v0, "end":I
    invoke-static {p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v3

    .line 225
    .local v3, "ttsSpan":Landroid/text/style/TtsSpan;
    const/16 v4, 0x21

    invoke-interface {v1, v3, v2, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 226
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 221
    .end local v0    # "end":I
    .end local v2    # "start":I
    .end local v3    # "ttsSpan":Landroid/text/style/TtsSpan;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "start":I
    goto :goto_0

    .line 228
    :cond_2
    return-object v1
.end method

.method public static getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "stringId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 242
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    return-object v1
.end method

.method public static isCustomPhoneType(Ljava/lang/Integer;)Z
    .locals 4
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isPossiblePhoneNumber(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 209
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
