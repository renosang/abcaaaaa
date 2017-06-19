.class public Lcom/android/incallui/Call$LogState;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogState"
.end annotation


# instance fields
.field public callInitiationMethod:I

.field public conferencedCalls:I

.field public contactLookupResult:I

.field public disconnectCause:Landroid/telecom/DisconnectCause;

.field public duration:J

.field public isIncoming:Z

.field public isLogged:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean v2, p0, Lcom/android/incallui/Call$LogState;->isIncoming:Z

    .line 231
    iput v2, p0, Lcom/android/incallui/Call$LogState;->contactLookupResult:I

    .line 232
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    .line 234
    iput v2, p0, Lcom/android/incallui/Call$LogState;->conferencedCalls:I

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/Call$LogState;->duration:J

    .line 236
    iput-boolean v2, p0, Lcom/android/incallui/Call$LogState;->isLogged:Z

    .line 202
    return-void
.end method

.method private static initiationToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "initiationType"    # I

    .prologue
    .line 272
    packed-switch p0, :pswitch_data_0

    .line 296
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 274
    :pswitch_0
    const-string/jumbo v0, "Incoming"

    return-object v0

    .line 276
    :pswitch_1
    const-string/jumbo v0, "Dialpad"

    return-object v0

    .line 278
    :pswitch_2
    const-string/jumbo v0, "Speed Dial"

    return-object v0

    .line 280
    :pswitch_3
    const-string/jumbo v0, "Remote Directory"

    return-object v0

    .line 282
    :pswitch_4
    const-string/jumbo v0, "Smart Dial"

    return-object v0

    .line 284
    :pswitch_5
    const-string/jumbo v0, "Regular Search"

    return-object v0

    .line 286
    :pswitch_6
    const-string/jumbo v0, "Call Log"

    return-object v0

    .line 288
    :pswitch_7
    const-string/jumbo v0, "Call Log Filter"

    return-object v0

    .line 290
    :pswitch_8
    const-string/jumbo v0, "Voicemail Log"

    return-object v0

    .line 292
    :pswitch_9
    const-string/jumbo v0, "Call Details"

    return-object v0

    .line 294
    :pswitch_a
    const-string/jumbo v0, "Quick Contacts"

    return-object v0

    .line 272
    nop

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
    .end packed-switch
.end method

.method private static lookupToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "lookupType"    # I

    .prologue
    .line 255
    packed-switch p0, :pswitch_data_0

    .line 267
    const-string/jumbo v0, "Not found"

    return-object v0

    .line 257
    :pswitch_0
    const-string/jumbo v0, "Local"

    return-object v0

    .line 259
    :pswitch_1
    const-string/jumbo v0, "Cache"

    return-object v0

    .line 261
    :pswitch_2
    const-string/jumbo v0, "Remote"

    return-object v0

    .line 263
    :pswitch_3
    const-string/jumbo v0, "Emergency"

    return-object v0

    .line 265
    :pswitch_4
    const-string/jumbo v0, "Voicemail"

    return-object v0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 240
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "[%s, isIncoming: %s, contactLookup: %s, callInitiation: %s, duration: %s]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 247
    iget-object v3, p0, Lcom/android/incallui/Call$LogState;->disconnectCause:Landroid/telecom/DisconnectCause;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 248
    iget-boolean v3, p0, Lcom/android/incallui/Call$LogState;->isIncoming:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 249
    iget v3, p0, Lcom/android/incallui/Call$LogState;->contactLookupResult:I

    invoke-static {v3}, Lcom/android/incallui/Call$LogState;->lookupToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 250
    iget v3, p0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    invoke-static {v3}, Lcom/android/incallui/Call$LogState;->initiationToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 251
    iget-wide v4, p0, Lcom/android/incallui/Call$LogState;->duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 240
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
