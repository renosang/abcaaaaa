.class public Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;
.super Ljava/lang/Object;
.source "VoicemailStatusHelperImpl.java"

# interfaces
.implements Lcom/android/dialer/voicemail/VoicemailStatusHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;,
        Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;,
        Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v1, "source_package"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 52
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v1, "configuration_state"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v1, "data_channel_state"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 54
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v1, "notification_channel_state"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 55
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v1, "settings_uri"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 56
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v1, "voicemail_access_uri"

    const/4 v2, 0x5

    aput-object v1, v0, v2

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

.method private getMessageForStatusEntry(Landroid/database/Cursor;)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 207
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "sourcePackage":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 209
    return-object v4

    .line 211
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 212
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 213
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 211
    invoke-direct {p0, v0, v2, v3}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->getOverallState(III)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    move-result-object v7

    .line 214
    .local v7, "overallState":Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;
    invoke-virtual {v7}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->getAction()Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    move-result-object v6

    .line 217
    .local v6, "action":Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->NONE:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    if-ne v6, v0, :cond_1

    .line 218
    return-object v4

    .line 221
    :cond_1
    const/4 v5, 0x0

    .line 222
    .local v5, "actionUri":Landroid/net/Uri;
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CALL_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    if-ne v6, v0, :cond_3

    .line 223
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 232
    .end local v5    # "actionUri":Landroid/net/Uri;
    :cond_2
    new-instance v8, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    .line 233
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    invoke-virtual {v7}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->getCallLogMessageId()I

    move-result v2

    .line 234
    invoke-virtual {v7}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->getCallDetailsMessageId()I

    move-result v3

    invoke-virtual {v6}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->getMessageId()I

    move-result v4

    .line 233
    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;-><init>(Ljava/lang/String;IIILandroid/net/Uri;)V

    .line 236
    invoke-virtual {v7}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->getPriority()I

    move-result v2

    .line 232
    invoke-direct {v8, v0, v2}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;-><init>(Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;I)V

    return-object v8

    .line 225
    .restart local v5    # "actionUri":Landroid/net/Uri;
    :cond_3
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;->CONFIGURE_VOICEMAIL:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$Action;

    if-ne v6, v0, :cond_2

    .line 226
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 228
    .local v5, "actionUri":Landroid/net/Uri;
    if-nez v5, :cond_2

    .line 229
    return-object v4
.end method

.method private getOverallState(III)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;
    .locals 2
    .param p1, "configurationState"    # I
    .param p2, "dataChannelState"    # I
    .param p3, "notificationChannelState"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 241
    if-nez p1, :cond_5

    .line 243
    if-nez p2, :cond_2

    .line 245
    if-nez p3, :cond_0

    .line 246
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->OK:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0

    .line 247
    :cond_0
    if-ne p3, v1, :cond_1

    .line 248
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DETAILED_NOTIFICATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0

    .line 249
    :cond_1
    if-ne p3, v0, :cond_7

    .line 250
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_NOTIFICATIONS:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0

    .line 252
    :cond_2
    if-ne p2, v0, :cond_7

    .line 254
    if-nez p3, :cond_3

    .line 255
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_DATA:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0

    .line 256
    :cond_3
    if-ne p3, v1, :cond_4

    .line 257
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->MESSAGE_WAITING:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0

    .line 258
    :cond_4
    if-ne p3, v0, :cond_7

    .line 259
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NO_CONNECTION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0

    .line 262
    :cond_5
    if-ne p1, v1, :cond_6

    .line 264
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVITE_FOR_CONFIGURATION:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0

    .line 265
    :cond_6
    if-ne p1, v0, :cond_7

    .line 267
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->NOT_CONFIGURED:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0

    .line 270
    :cond_7
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;->INVALID:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$OverallState;

    return-object v0
.end method

.method private isVoicemailSourceActive(Landroid/database/Cursor;)Z
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 185
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 184
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 185
    goto :goto_0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method private reorderMessages(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "messageWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;>;"
    new-instance v3, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$1;-><init>(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v2, "reorderMessages":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "messageWrapper$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    .line 198
    .local v0, "messageWrapper":Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->-get0(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v0    # "messageWrapper":Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getNumberActivityVoicemailSources(Landroid/database/Cursor;)I
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "count":I
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 174
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->isVoicemailSourceActive(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    return v0
.end method

.method public getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;>;"
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 160
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->getMessageForStatusEntry(Landroid/database/Cursor;)Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    move-result-object v0

    .line 162
    .local v0, "message":Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v0    # "message":Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->reorderMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
